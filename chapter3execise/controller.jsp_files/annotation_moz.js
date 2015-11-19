/*
annotation.js allows a user to add annotations to an alchemy content page.
annotations are referenced by document_id, user_id, context_id, and elem_id

annotation.jsp is the default frameset that loads controls and input form.
annotation_controls.html contains default buttons for adding, viewing annotations.

USAGE:
createAnnotation()					Create a new annotation.
showAllAnnotations()				Show all annotations.
hideAllAnnotations()				Hide all annotations.
getUserAnnotations()				Get annotations by current user.
getLearnerInstructorAnnotations()	Get learner and instructor annotations.

*/


var m_annotations = new Object();            // associative array containing all annotations (annotationId is key)
var m_ioFrame = null;                        // frame for input/output of content
var m_contentFrame = parent.main;            // frame that contains the content
var m_contentParentFrame = parent;           // frame that contains the parent of the content
var m_contentAnnotationFrame = "parent.annotation";           // String of frame that contains the path to the annotation code frame relative to the content
var m_userId = null;
var m_userType = "LEARNER";					// LEARNER or INSTRUCTOR
var m_firstName = null;						// first name of annotation creator
var m_lastName = null;						// last name of annotation creator
var m_currentAnnotation = null; // the current annotation
var m_popupHtml = "";
var m_iconHtml = ""; //FWK-685
var m_keyHtml = "";//FWK-685
var config = null;  // for custom properties
var m_readyState = "ready";
var m_loadedState = null;
var m_savedInnerHTML = null; // used if annotating non-Mercury HTML files.
var START_ANNO = "**start_annotation**";
var END_ANNO = "**end_annotation**";
var m_tempAnnotation = null; // create a temp annotation for Safari because lose window focus.
var m_co = null; // create a temp content object for Safari because lose window focus.
//fwk-1130
var m_aNode = null;
var m_fNode = null;

//fwk-685
var classId=new Array();

// Global variables for platform branching
var NN, IE, Safari=false, Firefox=false,MAC, browserVersion
	
// --------------------------------------------------------------------------------------------
// Browser Test
// --------------------------------------------------------------------------------------------

// Computer test
if (navigator.appVersion.indexOf("Mac") != -1) {
	MAC = true;
}

if (parseInt(navigator.appVersion) >= 4)
{
	if (navigator.appName == "Netscape")
		NN = true
	else
		IE = true
}
if (navigator.userAgent.indexOf("Safari") != -1)
	Safari = true;

if (navigator.userAgent.indexOf("Firefox") != -1)
	Firefox = true;
	
// Version
if (IE) {
	browserVersion = navigator.appVersion.charAt(navigator.appVersion.indexOf("MSIE") + 5);
}
else if (NN) {
	var sIndex = navigator.userAgent.lastIndexOf("/");
	browserVersion = navigator.userAgent.substring(sIndex+1,sIndex+4);
	if (navigator.userAgent.indexOf("Firefox") != -1)
		browserVersion = "7";
}

// Runs when annotation frameset loads
function onAnnotationFramesetLoad()
{
	setIoFrame('annotation_submit');
	config = new Object();
	setAnnotationProperties(config);
	setAnnotationUserProperties(); // In annotation.jsp
	initializeAnnotationPage();
}

function isMercuryDoc()
{
	return parent.doc;
}

// Called by annotate.xsl after all annotations loaded.
function onAnnotationDataLoaded()
{
//added for fwk-1069 hide previous anno when accessing thro deeplink 
	
	if(top.isDeeplinkSession==true)
	{
        hideAllAnnotations();	
	}
	else 
     {
	 //end of fwk-1069
	// If annotating non-Mercury HTML files, then need to save the innerHTML without annotations.
		if (!isMercuryDoc())
		m_savedInnerHTML = m_contentFrame.document.body.innerHTML;
		
	showAllAnnotations(true);
	m_loadedState = "loaded";	

}
}
// Called when page shown
function onShowPage()
{
	// ignore the first call. 
	// initializeAnnotationPage() takes care of first display of annotations
	if (m_loadedState != "loaded")
	{
		return;
	}
	else
	{	
		showAllAnnotations();
	}
}

// Displays annotations when page finished loading.
function initializeAnnotationPage()
{
	if (!m_contentParentFrame.getLoadCompleted())
		setTimeout("initializeAnnotationPage()",1000);
	else
	{
		if (!isMercuryDoc())
			m_contentFrame.document.body.id = "bodyid";
		getUserAnnotations();
	}
}


// Runs code when page finished writing.
function runWhenDocLoaded(code)
{
	if (!m_contentParentFrame.getLoadCompleted())
		setTimeout("runWhenDocLoaded('" + code + "')",1000);
	else
	{
		eval(code);
	}
}

// Constructor for an Annotation
function Annotation(type, annotationId, elemId, startIndex, charCount, lineBreaks, text, userId, userType, firstName, lastName)
{
	this.type = type;					// normal, highlight
	this.annotationId = annotationId;	// unique id (GUID)
	this.elemId = elemId;				// page element containing the annotation
	this.startIndex = startIndex;		// character count for start of annotation
	this.adjustedStartIndex = null;		// used when displaying annotations
	this.charCount = charCount;			// character count of text being annotated
	this.lineBreaks = lineBreaks;		// line breaks within text being annotated	
	this.text = text;					// text of annotation
	this.userId = userId;				// userId (GUID)
	this.userType = userType;			// LEARNER or INSTRUCTOR
	this.firstName = firstName;			// first name of annotation creator
	this.lastName = lastName;			// last name of annotation creator
	this.access = null;					// XML determining access of annotation
	
    //fwk-685
	this.titleText = null;
    this.classId=null;
	this.edit = editAnnotation;
	this.remove = removeAnnotation;
	this.show = showAnnotation;
	this.save = saveAnnotation;
	this.getIcon = getAnnotationIcon;
	this.getColor = getAnnotationColor;
	this.inputText = inputAnnotationText;
	this.getAuthorFullName = getAuthorFullName;
	this.getXml = getAnnotationXml;
	this.getText = getAnnotationFormattedText;
	this.getAccess = getAnnotationAccess;
	this.setAccess = setAnnotationAccess;
   
    //fwk-685
    this.getClassId=setClassId;
    this.setClassId=setClassId;
}

// ------------------------------------------------------------------------
// Get and set access XML for annotation.

function getAnnotationAccess()
{
	return this.access;
}

function setAnnotationAccess(accessXml)
{
	this.access = accessXml;
}

// returns true if submit has completed.
// otherwise, shows alert message.
function doneSubmit()
{
	var done = (m_readyState != "submit");
	if (!done)
	{
		alert("Still submitting ...");
	}
	return done;
}

// ------------------------------------------------------------------------
// Load annotations from database

function deleteHighlight()
{
	if (doneSubmit())
	{
		var a = getCurrentAnnotation();
		if (a != null)
			a.remove();
	}
    
   
}
// Clear all annotations from the JavaScript
function clearAnnotations()
{
	setCurrentAnnotation(null);
	m_annotations = new Object();
	m_readyState = "ready";
}

// Fetch annotations for a given operation
function getAnnotations(operation)
{
	submitAnnotationForm(operation, "", "", "", "");
}

// Fetch all annotations for the current learner and her instructor for this document from the database
function getUserAnnotations()
{
	getAnnotations("get_user_annotations");
	m_readyState = "ready";
}

// The startIndex is effected by the presence of preceding annotations 
// in the current element due to placement of images.
function getPrecedingAnnotationCount(elemId, startIndex)
{
	
    var precedingCount = 0;
	var nStartIndex = parseInt(startIndex);
    
	for (annotationId in m_annotations)
	{
		// if preceding annotation, adjust
		if (m_annotations[annotationId] != null && m_annotations[annotationId].elemId == elemId && parseInt(m_annotations[annotationId].startIndex) < nStartIndex) 
		{
			if (m_annotations[annotationId].getIcon() != "")
				precedingCount++;
		}

	}
    
	return precedingCount*4;
    
}

// Load an annotation (called by annotate.xsl)
function loadAnnotation(type, annotationId, elemId, startIndex, charCount, lineBreaks, text, userId, userType, firstName, lastName)
{
// alert("loadAnnotation type " + type + "  annotationId " + annotationId + "  elemId " + elemId + "  startIndex " + startIndex + "  charCount " + charCount + "  text " + text + "  userId " + userId + "  userType " + userType + "  firstName " + firstName + "  lastName " + lastName);
	var annotation = new Annotation(type, annotationId, elemId, startIndex, charCount, lineBreaks, text, userId, userType, firstName, lastName);
	m_annotations[annotationId] = annotation;
}

// ------------------------------------------------------------------------
// Input and add an annotation

// Creates an Annotation, sets it as the current annotation and calls function to open annotation editor.
function makeAnnotation(type, elemId, startIndex, charCount, lineBreaks, add)
{



	//if (type == "normal")
		//startIndex = startIndex - getPrecedingAnnotationCount(elemId, startIndex);
       
	if (doneSubmit())
	{
		var annotation = new Annotation(type, null, elemId, startIndex, charCount, lineBreaks, null, getUserId(), getUserType(), getFirstName(), getLastName());
		
        //Modified for FWK-685
        if (add)
		{
			setCurrentAnnotation(annotation);
			if (type == "highlight"&& getCurrentAnnotation().userType=="LEARNER"){
				annotation.access =  "<access><grant reltype=\"CREATOR\" reltype_id=\"" + getUserId() + "\" /></access>";
				setAnnotationText("");
            }
			else {
				getCurrentAnnotation().inputText();
			}
		}
		return annotation;
	}
}

function getPrintPreviewHtml()
{
	return m_popupHtml;
}

function setPrintPreviewHtml(html)
{
	m_popupHtml = html;
}

//FWK-685 --start
function getIconHtml()
{
	return m_iconHtml;
}

function setIconHtml(html)
{
	m_iconHtml = html;
}

function setKeyBoardHtml(html)
{
   m_keyHtml =html;     
}

function getKeyBoardHtml()
{
  return  m_keyHtml;     
}

//FWK-685 --end
function getAuthorFullName()
{
	return this.firstName + " " + this.lastName;
}

//fwk-685 classrooms

function setClassId(classrooms)
{
	this.classId=classrooms;
}
function getClassId()
{
	  return this.classId;
}

//FWK-685
function imposeMaxLength(Object, MaxLen,$char, $mozChar)
{
  //return (Object.value.length <= MaxLen);
	var keyCode; 
	if($mozChar != null) 
	{ 
	    keyCode = $mozChar;
	    if(keyCode!=8 && keyCode!=0){
		return (Object.value.length <= MaxLen);
	    }
	} 
	else 
	{ 
	    keyCode = $char; 
	    return (Object.value.length <= MaxLen);
	} 
}



// Shows an annotation input window- Modified for FWK-685
function inputAnnotationText()
{
	var query = self.location.search.substring(1);

	if (doneSubmit())
	{
		var html = "";
        var iconHtml ="";
        var keyHtml="";
        
       
		if (this.type == "normal"){
            //virtual keyboard--FWK-685 -start     
              keyHtml += "<HEAD>"
               keyHtml += "<script type=\"text/javascript\" src=\"/js/keyboard/keyboard.js\" charset=\"UTF-8\"></script>"
               keyHtml +="<link rel=\"stylesheet\" type=\"text/css\" href=\"/js/keyboard/keyboard.css\">"
               keyHtml +="</HEAD>"
            
            setKeyBoardHtml(keyHtml);	
            //virtual keyboard--FWK-685 -End
            }
            
		    html += "<FORM name=\"input_form\" id=\"input_form\">";
            if (this.type == "normal"){
			 //added for fwk-1782,83,84        
				
			
            //html += "<TEXTAREA style=\"margin-left:10px;width:100%;height:180\" name=\"annotation_text\" id=\"annotation_text\" class=\"keyboardInput\" onkeypress=\"return opener.imposeMaxLength(this, 3000);\"></TEXTAREA>";
			if(this.userId == getUserId())

			{


				if(this.userType == "INSTRUCTOR")
			{
			titleText ="Use the space below to annotate the text with your own notes, questions, or comments.All classes selected by default. Please click on a specific class to only allow that class to see your annotations. Edits to annotations will be also be seen by all classes originally selected."
			
		}
		else

		{
		titleText = "Use the space below to annotate the text with your own notes, questions, or comments. "
		}
			setTitleText(titleText);
			


	             html += "<TEXTAREA style=\"margin-left:10px;width:500;height:180\" name=\"annotation_text\" id=\"annotation_text\" class=\"keyboardInput\" onkeypress=\"return opener.imposeMaxLength(this, 2999);\"></TEXTAREA>";
			}else
			{
			titleText = "Use the space below to annotate the text with your own notes, questions, or comments. "
		
			setTitleText(titleText);
			

				 html += "<TEXTAREA style=\"margin-left:10px;width:500;height:180\" name=\"annotation_text\" id=\"annotation_text\" class=\"keyboardInput\" disabled=\"disabled\" onkeypress=\"return opener.imposeMaxLength(this, 2999);\"></TEXTAREA>";
	           	
           	}
			}             			
           			
			else { 
			titleText = "Choose the class that will view this highlight.All classes selected by default. Please click on a specific class to only allow that class to see your highlights. Edits to highlights will be also be seen by all classes originally selected."
			 setTitleText(titleText);
			 //html += "<TEXTAREA style=\"margin-left:10px;width:500;height:180\" name=\"annotation_text\" id=\"annotation_text\" class=\"keyboardInput\" onkeypress=\"return opener.imposeMaxLength(this, 3000);\"></TEXTAREA>";
			html += "<input type=\"hidden\" style=\"margin-left:10px;width:800;height:180\" name=\"annotation_text\" id=\"annotation_text\" class=\"keyboardInput\" onkeypress=\"return opener.imposeMaxLength(this, 9999);\"></TEXTAREA>";
			}
			//end of fwk-1782,83,84 
            html +="</FORM>"
			
            setPrintPreviewHtml(html);
            //FWK-685
            iconHtml += "<FORM name=\"input_form1\" id=\"input_form1\">";
			if (config.buttonCloseAnnotation)
				iconHtml += "<input type=\"image\" src=\"" + config.buttonCloseAnnotation + "\" alt=\"Close\" onClick=\"window.close();\">";

			if (this.userId == getUserId())//for fwk-685
			{
				if (config.buttonSaveAnnotation)
				{	
                  if (this.userType == "INSTRUCTOR")
                    {                  
                   iconHtml += "<input type=\"hidden\" name=\"validtext\" id=\"validtext\" value=\"\">";               
                   iconHtml += "<input type=\"image\" src=\"" + config.buttonSaveAnnotation + "\" alt=\"Save\" onClick=\"pickClass(class_list);if(document.getElementById('validtext').value=='true'){window.close();}\">";
                   }
                   else 
                   {
                  iconHtml += "<input type=\"image\" src=\"" + config.buttonSaveAnnotation + "\" alt=\"Save\" onClick=\"opener.inputReturnAnnotationText(input_form);window.close();\">";
                   }
                   }
				if (config.buttonDeleteAnnotation)
					iconHtml += "<input type=\"image\" src=\"" + config.buttonDeleteAnnotation + "\" alt=\"Delete\" onClick=\"opener.inputRemoveAnnotation();window.close();\">";
                    
			}
			iconHtml += "</FORM>";     
			       
           setIconHtml(iconHtml);
            
        
         
        //FWK-685
		// Reset width value to fix FWK-1374
		    if (this.type == "highlight"){
                                var annotationInputWindow = window.open (config.annotationWindowUrl + "?titleText=" + this.titleText + "&annotationId=" + this.annotationId + "&" + query, "annotation_input","top=220,left=220,resizable=no,width=630,height=370");
            } else {
                                 var annotationInputWindow = window.open (config.annotationWindowUrl + "?titleText=" + this.titleText + "&annotationId=" + this.annotationId + "&" + query, "annotation_input","top=100,left=100,resizable=no,width=600,height=500");
            }
   
		
	}
}
function inputReturnAnnotationText(form)
{
	var annotationText = form.annotation_text.value; //prompt("Enter your annotation","");
	if (annotationText.length = 0)
	{
		m_currentAnnotation = null;
	}
	else
	{
		setAnnotationText(annotationText);
	}
}

// Get the current annotation text.
function getAnnotationText()
{
	if (getCurrentAnnotation() == null || getCurrentAnnotation().text == null)
		return "";
	else
		return convertForForm(getCurrentAnnotation().text);
}

// Get the text of the annotation, converting <br> to returns.
function getAnnotationFormattedText()
{
	return convertForForm(this.text);
}

// Remove the current annotation.
function inputRemoveAnnotation()
{
	getCurrentAnnotation().remove();
}

// ------------------------------------------------------------------------
// Get and set functions

// -------------
// Set user info: userId, userType, firstName, lastName
function setUserId(userId)
{
	m_userId = userId;
}
function getUserId()
{
	return m_userId;
}
// m_userType can be LEARNER or INSTRUCTOR
function setUserType(userType)
{
	m_userType = userType;
}
function getUserType()
{
	return m_userType;
}
function setFirstName(firstName)
{
	m_firstName = firstName;
}
function setLastName(lastName)
{
	m_lastName = lastName;
}
function getFirstName()
{
	return m_firstName;
}
function getLastName()
{
	return m_lastName;
}
// -------------


// Get annotation icon based on user type.
function getAnnotationIcon()
{
	var icon = "";
	// If annotation created by learner
	if (this.userType == "LEARNER")
    {
		
        icon = this.type=="normal"?config.learnerAnnotationIcon:config.learnerHighlightIcon;
	}	
	// If annotation created by instructor
	else if (this.userType == "INSTRUCTOR")
	{
		if (getUserType()=="INSTRUCTOR"){
			
            icon = this.type=="normal"?config.instructorAnnotationIcon:config.instructorHighlightIcon;
		}
        else
			icon = this.type=="normal"?config.instructorAnnotationIcon:"";
	}
	else
		icon = config.annotationIcon;
	return icon;
}

// Get annotation icon based on user type.
function getAnnotationColor()
{
	var color = "";
	if (this.userType == "LEARNER"){
		
        color = this.type=="normal"?config.learnerAnnotationColor:config.learnerHighlightColor;
	}
    else if (this.userType == "INSTRUCTOR"){
		
        color = this.type=="normal"?config.instructorAnnotationColor:config.instructorHighlightColor;
	}
    else
		color = config.annotationColor;
		
	return color;

}

// Set the Input/Output frame
function setIoFrame(framePath)
{
	m_ioFrame = eval(framePath);
}

// Set the content frame
function setContentFrame(framePath)
{
	m_contentFrame = eval(framePath);
}

// Set the parent frame of content
function setContentParentFrame(framePath)
{
	m_contentParentFrame = eval(framePath);
}

// Set the current highlight
function setCurrentHighlight (annotationId)
{
//alert("setCurrentHighlight (annotationId): " + annotationId);
	//if (getCharCount(getSelectionRange()) == 0)
		setCurrentAnnotation(m_annotations[annotationId]);
}

// Set the current annotation (the annotation being created or edited)
function setCurrentAnnotation (annotation)
{
	m_currentAnnotation = annotation;
}

// Returns the currently edited annotation
function getCurrentAnnotation()
{
	return m_currentAnnotation;
}

// ------------------------------------------------------------------------
// Edit an Annotation
// Called to edit an existing Annotation
function editAnnotation()
{
	if (doneSubmit())
	{
		setCurrentAnnotation(this);
		this.inputText();
	}
}

// ------------------------------------------------------------------------
// Create new annotation

// Returns an annotation, given an annotationId
function getAnnotationById(annotationId)
{
	return m_annotations[annotationId];
}

// Returns XML representation of Annotation
// Note: The annotationId is added to the XML when the annotation is fetched from database
function getAnnotationXml()
{
	var xml = "<annotation type=\"" + this.type + "\" elemId=\"" + this.elemId + "\" startIndex=\"" + this.startIndex + "\" charCount=\"" + this.charCount + "\" lineBreaks=\"" + this.lineBreaks + "\" userId=\"" + this.userId + "\" userType=\"" + this.userType + "\" firstName=\"" + this.firstName + "\" lastName=\"" + this.lastName + "\">";
	xml += serializeToXML(this.text);
	xml += "</annotation>";
	return xml;
}

// Sets the text of the current Annotation
function setAnnotationText(text)
{
	getCurrentAnnotation().text = text;
	getCurrentAnnotation().save();
}

function submitAnnotationForm(operation, annotationId, elemId, annotationData, access, classId)
{
	if (doneSubmit())
	{
		m_readyState = "submit";
		var form = null;
		var html = "";
		
		html += "<html><head></head><body>";
		html += "<form id=\"annotation_form\" method=\"POST\" action=\"/LyceaContentAnnotation\">";
		html += "<input type=\"hidden\" name=\"operation\" id=\"operation\">";
		html += "<input type=\"hidden\" name=\"annotation_id\" id=\"annotation_id\">";
		html += "<input type=\"hidden\" name=\"document_id\" id=\"document_id\">";
		html += "<input type=\"hidden\" name=\"elem_id\" id=\"elem_id\">";
		html += "<input type=\"hidden\" name=\"annotation_data\" id=\"annotation_data\">";
		html += "<input type=\"hidden\" name=\"access\" id=\"access\">";		
        //fwk-685
        html += "<input type=\"hidden\" name=\"classId\" id=\"classId\">";		
		html += "</form>";
		html += "</body></html>";

		m_ioFrame.document.open("text/html", "replace");
		m_ioFrame.document.write(html);
		m_ioFrame.document.close();
	
		form = m_ioFrame.document.getElementById("annotation_form");

		form.operation.value = operation;
		if (annotationId != null)
			form.annotation_id.value = annotationId;
		form.document_id.value = m_contentParentFrame.getDocumentID();
		form.elem_id.value = elemId;
		form.annotation_data.value = annotationData;
		form.access.value = access;		
        form.classId.value=classId; 
		form.submit();
	}
}

// Persists an annotation
function saveAnnotation()
{
	submitAnnotationForm("set_annotation", this.annotationId, this.elemId, this.getXml(), this.access,this.classId)
}

// Callback from saving annotation.
// feedback is either "error" or the annotationId
function saveAnnotationCallback(callbackFeedback)
{
	m_readyState = "ready";
	var feedback = "";
	if (callbackFeedback == "ERROR")
		alert("There was a problem saving. Please try again.");
	else
	{
		
        getCurrentAnnotation().annotationId = callbackFeedback;
		m_annotations[getCurrentAnnotation().annotationId] = getCurrentAnnotation();
		showAllAnnotations();
		if (m_currentAnnotation.type == "normal")
			feedback = getUserType()=="LEARNER"?config.learnerAnnotationSavedFeedback:config.instructorAnnotationSavedFeedback;
		else if (m_currentAnnotation.type == "highlight")
			feedback = getUserType()=="LEARNER"?config.learnerHighlightSavedFeedback:config.instructorHighlightSavedFeedback;
		m_currentAnnotation = null;

		if (feedback != "")
			setTimeout("alert('" + feedback + "')",500);
	}
}

// Remove an annotation
function removeAnnotation()
{
	if (this.annotationId == null)
	{
		alert("Open the annotation you wish to delete.");
		return;
	}
	else
	{
		
        submitAnnotationForm("remove_annotation", this.annotationId, "", "", "");
	}
}

// Callback from deleting annotation.
// feedback is either "error" or the annotationId
function removeAnnotationCallback(callbackFeedback)
{
	m_readyState = "ready";
	var feedback = "";
	if (callbackFeedback == "ERROR")
		alert("Error in deleting. Please try again.");
	else if (callbackFeedback == "DENIED")
		alert("You cannot edit this.");
	else
	{
		m_annotations[callbackFeedback] = null;
		if (m_currentAnnotation.type == "normal")
			feedback = getUserType()=="LEARNER"?config.learnerAnnotationDeletedFeedback:config.instructorAnnotationDeletedFeedback;
		else if (m_currentAnnotation.type == "highlight")
			feedback = getUserType()=="LEARNER"?config.learnerHighlightDeletedFeedback:config.instructorHighlightDeletedFeedback;
		
		if (feedback != "")
			alert(feedback);
		m_currentAnnotation = null;
		showAllAnnotations();
	}
}

// Sorting function for arrays.
function startIndexSort(a,b)
{
	if (parseInt(a.startIndex) > parseInt(b.startIndex)) {return 1}
	if (parseInt(a.startIndex) < parseInt(b.startIndex)) {return -1}
	return 0;
}

// Show all annotations
function showAllAnnotations(skipHide)
{
	if (!skipHide)
		hideAllAnnotations();
	setTimeout("showAllAnnotationsDelayed()",500);
}

// safari 
function setTempAnnotation()
{
	var sel = getSelectionRange();
	m_co = getContentObj(sel.anchorNode, sel.focusNode);
	m_tempAnnotation = getAnnotationPosition(sel);
	
}

// Safari
function setBody()
{
	m_contentFrame.document.body.onmouseup = setTempAnnotation;
}


// Show all annotations
function showAllAnnotationsDelayed()
{
	if (m_contentParentFrame.getLoadState() != "loaded")
	{
		setTimeout("showAllAnnotationsDelayed()",500);
		return;
	}
//fwk-1130 disabled
	//if (Safari)
	//	setBody();
	var annotationArray = new Array();
	
	// adjust the startIndex
	for (annotationId in m_annotations)
	{
		if (m_annotations[annotationId] != null)
			annotationArray[annotationArray.length] = m_annotations[annotationId];
	}

	annotationArray.sort(startIndexSort);

	for (var i=0; i < annotationArray.length; i++)
	{
		var co = m_contentFrame.document.getElementById(annotationArray[i].elemId);

		annotationArray[i].adjustedStartIndex = addTagsToPos(co.innerHTML, parseInt(annotationArray[i].startIndex));// + getPrecedingAnnotationCount(annotationArray[i].elemId, annotationArray[i].startIndex));
		//annotationArray[i].adjustedStartIndex = parseInt(annotationArray[i].startIndex) + getPrecedingAnnotationCount(annotationArray[i].elemId, annotationArray[i].startIndex);
		
		annotationArray[i].show();
	}
}

// Hide all annotations
function hideAllAnnotations()
{
	if (isMercuryDoc())
	{
		parent.doc.write();
	}
	else
	{
		getDocumentScroll();
		m_contentFrame.document.body.innerHTML = m_savedInnerHTML;
		setTimeout("setDocumentScroll()",1);
	}
}

var m_scrollTop = 0;
var m_scrollLeft = 0;
// Set the scroll left and top of the main document
function getDocumentScroll() 
{
	m_scrollTop = m_contentFrame.document.body.scrollTop;
	m_scrollLeft = m_contentFrame.document.body.scrollLeft;
}

// Get the scroll left and top of the main document and update member variables.
function setDocumentScroll() 
{
	m_contentFrame.document.body.scrollTop = m_scrollTop;
	m_contentFrame.document.body.scrollLeft = m_scrollLeft;
}

// Debug code
function testAnnotation()
{
	alert(m_contentFrame.document.documentElement.innerHTML);
	alert(m_contentFrame.document.getElementById("newAnnotationImage"));
}

// adds tag lengths into the startIndex
function addTagsToPos(text, pos)
{
	text = stripBreaks(text);

	var inTag = false;
	var c = "";
	var adjPos = 0;
	var index = 0;

	var TAG_NAME = "__tagdelimiter__";

	var adjText = replaceStr(text, "<", TAG_NAME);
	adjText = replaceStr(adjText, ">", TAG_NAME);
	var txtArray = adjText.split(TAG_NAME);

	for (var i = 0; i < txtArray.length; i++)
	{
		var snip = txtArray[i];
		if ( i % 2 != 0)
		{
			adjPos += snip.length+2;
		}
		else
		{
			var diff = pos - index;
			if (snip.length < diff)
			{
				adjPos += snip.length;
				index += snip.length;
			}
			else
			{
				adjPos += diff;
				break;
			}
		}
	}
	return adjPos;
}

// Removes tag lengths from the startIndex
function subtractTagsFromPos(text, pos)
{
	var inTag = false;
	var c = "";
	var adjPos = pos;
	var index = 0;

	var TAG_NAME = "|"; //"__tagname__";

	var adjText = replaceStr(text, "<", TAG_NAME);
	adjText = replaceStr(adjText, ">", TAG_NAME);
	var txtArray = adjText.split(TAG_NAME);

	for (var i = 0; i < txtArray.length; i++)
	{
		var snip = txtArray[i];
		if ( i % 2 != 0)
		{
			adjPos -= snip.length+2;
		}
		
		else
		{
			var diff = pos - index;
			if (snip.length < diff)
			{
				//adjPos += snip.length;
				index += snip.length;
			}
			else
			{
				//adjPos += diff;
				break;
			}
		}
	}
	return adjPos;
}

function showAnnotation()
{
		var iconHtml = "";
		var lineBreakAdj = 0;
		var specialCharAdj = 0;
		var oHtml;
		var o = m_contentFrame.document.getElementById(this.elemId);
		if (o == null)
		{
			return;
		}
		oHtml = o.innerHTML;

		if (this.lineBreaks == "")
		{
			lineBreakAdj = getLineBreakCountFromOldFormat(o, this.startIndex);
		}

		if (NN && !Firefox)
		{
			oHtml = oHtml.split("\n").join("_NN_line_break").split("\r").join("").split("_NN_line_break").join(" ");
		}
		this.adjustedStartIndex = addTagsToPos(oHtml, this.startIndex) - lineBreakAdj + specialCharAdj;	
		var pos = parseInt(this.adjustedStartIndex);
		specialCharAdj = oHtml.substr(0, pos).length - stripSpecialChars(oHtml.substr(0, pos)).length;
		pos = pos + specialCharAdj;
		
		// Insert the annotation icon.
		if (this.getIcon() && this.type == "normal")
		{
			var startHtml = oHtml.substring(0,pos);
			var endHtml = oHtml.substring(pos,oHtml.length);
            //Modified for FWK-685 
			iconHtml = ("<img style=\"cursor:pointer\" src=\"" + this.getIcon() + "\" onMouseOver=\"this.title=" + m_contentAnnotationFrame + ".getAnnotationById('" + this.annotationId + "').getText()\" title=\"none\" onMouseOver=\"this.alt=" + m_contentAnnotationFrame + ".getAnnotationById('" + this.annotationId + "').getText()\" alt=\"none\" onClick=\"" + m_contentAnnotationFrame + ".getAnnotationById('" + this.annotationId + "').edit()\"></img>");
			o.innerHTML = startHtml + iconHtml + endHtml;
		}
		else
		{
			var end = pos + parseInt(this.charCount);
			specialCharAdj = oHtml.substr(pos, pos+end).length - stripSpecialChars(oHtml.substr(pos, pos+end)).length;
			end += specialCharAdj;
			
			
			var bordercolor = this.getColor();
			var color = this.getColor();

			var fgcolor = "";
	
			if (!fgcolor || typeof fgcolor == 'undefined' || fgcolor == '') { fgcolor = "000"; }
			if (!color || typeof color == 'undefined' || color == '') { color = "ff0"; }
	
			var selectId = this.elemId + "_select";
	
			var aElemId = "anno_" + this.annotationId;
			
			//Modified for FWK-685
            var selStart = "<span id=\"" + aElemId + "\" onMouseOver=\"" + m_contentAnnotationFrame + ".setCurrentHighlight('" + this.annotationId + "')\" style='background-color:"+color+"'>";
            var selEnd = "</span>";
	        
            //FWK-685
            iconHtml = ("<img style=\"cursor:pointer\" src=\"" + this.getIcon() + "\" onClick=\"" + m_contentAnnotationFrame + ".getAnnotationById('" + this.annotationId + "').edit()\">");            
            
            
			//all text behind the selection start
			var text = oHtml.substr(pos);
	
			//all tags starting from the selection
			var erg = text.split(/[<>]/);
			//init with the start-text
			var start_text = oHtml.substr(0, pos);
			text = "";
			var inTag = false;
			var first = true; 
			var posHtml = 0;
			for (var i = 0; i < erg.length; ++i) {
				if (inTag) {
					text += "<" + erg[i];
					posHtml++;
				} else if (first) {
					first = false;
				} else {
					text += ">";
					posHtml++;
				}
				if (!inTag) {
					if (pos + erg[i].length < end) {
						if (erg[i].match(/^\s*$/)) {
							text += erg[i];
						} //start of FWK-1164  
						else {
					if(erg[i]=="&nbsp;" || erg[i]==";" || erg[i]=="nbsp;"){							
							 text += selStart + selEnd;                                             
						} 
						else {
							text += selStart + erg[i] + selEnd;
							}
						}
						pos += erg[i].length;
					} else {
						text += selStart + erg[i].substr(0, end - pos) + selEnd;
						pos = end;
						break;
					}
				} else {
					posHtml += erg[i].length;
				}
				inTag = !inTag;
			}
			text += oHtml.substr(pos + posHtml);
			//o.innerHTML = start_text + text;
            
           //FWK-685
           
                    
            
            if (getUserType()=="LEARNER")
            {
            o.innerHTML = start_text + text;
	        }
            else 
            {
            o.innerHTML = start_text + iconHtml + text;
            }
            //prompt("",o.innerHTML);
		
		}
		return true;
}

function getSelectionRange()
{
		var selObj = null;
		if (m_contentFrame.getSelection)
		{
			selObj = m_contentFrame.getSelection();
		}
		else if (m_contentFrame.document.getSelection)
		{
			selObj = m_contentFrame.document.getSelection();
		}
		else if (m_contentFrame.document.selection)
		{
			selObj = m_contentFrame.document.selection.createRange().text;
		}
		return selObj;
}


function getCommonNode (n1, n2) {
	var d1 = getDOMDepth(n1);
	var d2 = getDOMDepth(n2);
	var tmp;
	if (d1 > d2) {
		tmp = d2; d2 = d1; d1 = tmp;
		tmp = n2; n2 = n1; n1 = tmp;
	}
	while (d2 > d1) { n2 = n2.parentNode; d2--; }
	while (n1 != n2) { n1 = n1.parentNode; n2 = n2.parentNode; }
	return n1;
}

function getDOMDepth (node) 
{
	if (node.parentNode) 
	{
		return getDOMDepth(node.parentNode) + 1;
	} 
	else 
	{
		return 1;
	}
}

function stripBreaks(text)
{
	return text.split("\n").join("").split("\r").join("");
}

function getAnnotationPosition(sel)
{
	
   
    var startIndex, charCount, lineBreaks, obj, coText, startText, startOffset, endOffset,aNode=null,fNode=null,aNodeCache,fNodeCache=null;
	var a = new Annotation();
	var co = getContentObj(sel.anchorNode, sel.focusNode);
   
	var MARKER_START = "_ANNO_START_"; // Note: MARKER_START and MARKER_END strings must be same length.
	var MARKER_END = "_ANNO_ENDED_";
	if (sel.anchorNode == sel.focusNode) 
	{
		
        if (sel.anchorOffset < sel.focusOffset) 
		{
			
            startOffset = sel.anchorOffset;
			endOffset = sel.focusOffset;
		} 
		else 
		{
			
            startOffset = sel.focusOffset;
			endOffset = sel.anchorOffset;
		}
		aNode = sel.anchorNode;
		fNode = sel.focusNode;
		aNodeCache = aNode.data;
		aNode.data = aNode.data.substr(0, startOffset) + MARKER_START + aNode.data.substr(startOffset, endOffset - startOffset) + aNode.data.substr(endOffset);
		
	} 
	
    else 
	{
		
        aNode = sel.anchorNode;
		fNode = sel.focusNode;
//fwk-1130 added if condition for safari
		if (aNode != null && fNode != null && aNode.data && fNode.data && Safari)
		{
			aNodeCache = aNode.data;
			aNode.data = aNode.data.substr(0, sel.anchorOffset) + MARKER_START + aNode.data.substr(sel.anchorOffset);
		
			
			fNodeCache = fNode.data;
			fNode.data = fNode.data.substr(0, sel.focusOffset) +fNode.data.substr(sel.focusOffset)+MARKER_END;
		       
		
		}else if (aNode != null && fNode != null && aNode.data && fNode.data)
		{
			
            aNodeCache = aNode.data;
			aNode.data = aNode.data.substr(0, sel.anchorOffset) + MARKER_START + aNode.data.substr(sel.anchorOffset);
			
			fNodeCache = fNode.data;
			fNode.data = fNode.data.substr(0, sel.focusOffset) + MARKER_END + fNode.data.substr(sel.focusOffset);
		}
		else // error
			return null;
	}
	
	coText = getInnerText(co);
	startText = coText.substr(0, coText.indexOf(MARKER_START));
	endText = coText.substr(0, coText.indexOf(MARKER_END));

//Changed for safari annotations/highlights Jira:1130
	if(Safari)
	{
	if (aNode == fNode)
	{	

		charCount = endOffset - startOffset;
	}
	else
	{
		if (startText.length > endText.length)
		{
			var tmp = startText;
			startText = endText;
			endText = tmp;
		}
		charCount = endText.length - startText.length - MARKER_START.length;  // Note: MARKER_START string is actually MARKER_END string if startText.length > endText.length
}
		
	var linebreaks = 0;
	if (typeof(sel.extend) != "undefined")
	{		
		sel.extend(getContentObj(aNode, fNode), 0);
		var selText = String(sel);
		selText = selText.split("\r\n\r\n").join("\r\n");
		linebreaks = selText.split("\r\n").length;

       m_aNode=aNode;
       m_fNode=fNode;
	}
	else
	{
		linebreaks = startText.split("\n").length - startText.split("\r\n").length - startText.split("\r").length;
	}	
	}	
	else
	{	
	
	if (sel.anchorNode == sel.focusNode)
	charCount = endOffset - startOffset;
	else
	{	
		if (startText.length > endText.length)
		{
			var tmp = startText;
			startText = endText;
			endText = tmp;
		}
		charCount = endText.length - startText.length - MARKER_START.length;  // Note: MARKER_START string is actually MARKER_END string if startText.length > endText.length
	}	
	lineBreaks = getLineBreakCount(sel, startText);
	}
	startIndex = stripBreaks(startText).length;

	aNode.data = aNodeCache;
	
	if (fNodeCache != null) 
		fNode.data = fNodeCache;
		
	a.startIndex = startIndex;
	a.lineBreaks = lineBreaks;
	a.charCount = charCount;

	return a;
}

function stripTags(text)
{
	var regexp = /<\/?\w+((\s+\w+(\s*=\s*(?:".*?"|'.*?'|[^'">\s]+))?)+\s*|\s*)\/?>/g
	return text.replace(regexp,"");
}

// Replaces special character codes with a single character.
function stripSpecialChars(text)
{
	var regexp = /&\w{2,5};/g
	return text.replace(regexp,"X");
}

function getInnerText(elem)
{
	var html = elem.innerHTML;
	//html = stripBreaks(html, "");
	html = stripTags(html);
	html = stripSpecialChars(html);
	return html;
}

// Returns number of line breaks in starting text (required for IE display of annotation).
function getLineBreakCount(sel, startText)
{
	var linebreaks = 0;
	if (typeof(sel.extend) != "undefined")
	{
		var fNode = sel.focusNode;
		var fOffset = sel.focusOffset;
		
		sel.extend(getContentObj(sel.anchorNode, sel.focusNode), 0);
		var selText = String(sel);
	
		selText = selText.split("\r\n\r\n").join("\r\n");
		linebreaks = selText.split("\r\n").length;
		sel.extend(fNode, fOffset);
	}
	else
	{
		linebreaks = startText.split("\n").length - startText.split("\r\n").length - startText.split("\r").length;
	}
	return linebreaks;
}

// Needed for annotations created by old version of IE-only annotation system.
function getLineBreakCountFromOldFormat(co, startIndex)
{

	var linebreaks = 0;
	var range;
	var sel;
	var adjPos = addTagsToPos(co.innerHTML, startIndex);
	var tempId = "_ANNO_TEMP_";
	var cacheHtml = co.innerHTML;
	
	if (!Safari)
	{
		co.innerHTML = cacheHtml.substring(0, adjPos) + "<span id='" + tempId + "'></span>" + cacheHtml.substring(adjPos,cacheHtml.length);
		var tempNode = m_contentFrame.document.getElementById(tempId);
	
		range = m_contentFrame.document.createRange();
		range.setStart(co,0);
		range.setEndBefore(tempNode);
		
		sel = m_contentFrame.getSelection();
 
 		sel.addRange(range);

 		var selText = String(sel);
 		selText = selText.split("\r\n\r\n").join("\r\n");
 		linebreaks = selText.split("\r\n").length - 1;
	}
	else
	{
		co.innerHTML = cacheHtml.substring(0, adjPos) + tempId + cacheHtml.substring(adjPos,cacheHtml.length);
		var startText = getInnerText(co);
		var startText = startText.substring(0, startText.indexOf(tempId));		
		linebreaks = startText.split("\n\n").join("\n").split("\n").length - 1;
	}

	co.innerHTML = cacheHtml;

	return linebreaks;
}

function getCharCount(sel)
{
	return String(sel).length;
}

// Returns the wrapping element that has an id.
function getContentObj(elem1, elem2)
{
	
    var elem = getCommonNode(elem1, elem2);
    
	while (elem != null && (!elem.id || elem.id.indexOf('"') != -1))
	{
		
        elem = elem.parentNode;
	}

	if (elem == null)
	{
		
        elem = m_contentFrame.document.body;
	}
	
	return elem;
}

// Replace all instances of a string.
function replaceStr(str, findStr, replaceStr)
{
	if (str == null || str == "")
		return "";
	if (!findStr)
		return str;
	str = str.toString();
	var tempArray;
	tempArray = str.split(findStr);
	str = tempArray.join(replaceStr);
	return str;
}

function createAnnotation(type, add)
{
	setTimeout("createAnnotationDelayed('" + type + "','" + add + "')", 500);
}

// Create an annotation
function createAnnotationDelayed(type, add)
{
	var debugTxt = "";
	var tempAnnotation = null;
	var co = null;

	var obj;

	var startIndex = 0, endIndex = 0, o = null, bak = '';
	var sel = getSelectionRange();
    
	if (getCharCount(sel) == 0)
	{
		// Safari loses the selection when click on another window. Therefore, need to use a cached annotation: m_tempAnnotation.
		if (typeof(sel.extend) == "undefined" && m_tempAnnotation != null)
		{
			tempAnnotation = m_tempAnnotation;
			co = m_co;
			m_tempAnnotation = null;
			m_co = null;
            
		}
		else
		{
			alert("Select some text.");
			return;
		}
	}
	// Not Safari, therefore use the selection to get the tempAnnotation.
	if (typeof(sel.extend) != "undefined" && !Safari)
	{
		tempAnnotation = getAnnotationPosition(sel);
		co = getContentObj(sel.anchorNode, sel.focusNode);
	}else
	{
	tempAnnotation = getAnnotationPosition(sel);
	co = getContentObj(m_aNode, m_fNode);
	}
	if (tempAnnotation != null)
		//makeAnnotation(type, co.id, tempAnnotation.startIndex, tempAnnotation.charCount, tempAnnotation.lineBreaks, add);
      
        //Modified for FWK-685
        makeAnnotation(type, co.id, tempAnnotation.startIndex, tempAnnotation.charCount, "0", add);
        
}
// Added for FWK-685

function setTitleText(titleText)
{
	this.titleText = titleText;
}


function getTitleText()
{
	return this.titleText;
}

