/*
* Developed by Fusion Learning Systems, 2002
* Exception: All MM_ methods are MacroMedia.
*/


//*********************************************************************************//
// This function takes a selected value and loads the URL and window parameters
//*********************************************************************************//

function loadTool(toolValue)
{
	if (toolValue != "")
		{
			switch (toolValue) {  
				case "glossary_xpres1":  
				{ 
					toolPopupWindow = window.open('../tools/bd1/glossary/glossary.html','toolPopupWindow','width=513,height=456,resizable=yes,menubar=no,scrollbars=no');
				  	break; 
				}
				case "glossary_xpres1a":  
				{ 
					toolPopupWindow = window.open('../tools/bd1/glossary/glossary.html','toolPopupWindow','width=513,height=456,resizable=yes,menubar=no,scrollbars=no');
				  	break; 
				}
				case "glossary_xpres1b":  
				{ 
					toolPopupWindow = window.open('../tools/bd1/glossary/glossary.html','toolPopupWindow','width=513,height=456,resizable=yes,menubar=no,scrollbars=no');
				  	break; 
				}
				case "glossary_xpres2":  
				{ 
					toolPopupWindow = window.open('../tools/bd2/glossary/glossary.html','toolPopupWindow','width=513,height=456,resizable=yes,menubar=no,scrollbars=no');
				  	break; 
				}
				case "glossary_xpres3":  
				{ 
					toolPopupWindow = window.open('../tools/bd1/glossary/glossary.html','toolPopupWindow','width=513,height=456,resizable=yes,menubar=no,scrollbars=no');
				  	break; 
				}
				case "grammarSummary_xpres1":  
				{ 
				 	//alert("grammarSummary");
					toolPopupWindow = window.open('../tools/grammar/grammarSummary.html','toolPopupWindow','width=513,height=456,resizable=yes,menubar=no,scrollbars=no');
				  	break; 
				}
				case "grammarSummary_xpres1a":  
				{ 
					toolPopupWindow = window.open('../tools/grammar/grammarSummary.html','toolPopupWindow','width=513,height=456,resizable=yes,menubar=no,scrollbars=no');
				  	break; 
				}
				case "grammarSummary_xpres1b":  
				{ 
					toolPopupWindow = window.open('../tools/grammar/grammarSummary.html','toolPopupWindow','width=513,height=456,resizable=yes,menubar=no,scrollbars=no');
				  	break; 
				}
				case "grammarSummary_xpres2":  
				{ 
					toolPopupWindow = window.open('../tools/grammar/grammarSummary.html','toolPopupWindow','width=513,height=456,resizable=yes,menubar=no,scrollbars=no');
				  	break; 
				}
				case "grammarSummary_xpres3":  
				{ 
					toolPopupWindow = window.open('../tools/grammar/grammarSummary.html','toolPopupWindow','width=513,height=456,resizable=yes,menubar=no,scrollbars=no');
				  	break; 
				}
				case "language":  
				{ 
					//alert("Language");
					toolPopupWindow = window.open('pdf/lh.htm','toolPopupWindow','width=700,height=450,resizable=yes,menubar=no,scrollbars=yes');
				  	break;					
				}
				case "state_res":  
				{ 
					//alert("Glossary"); 
					var insertUrl = 'tab_resources'+resValue+'_res.html';
				  	toolPopupWindow = window.open(insertUrl,'toolPopupWindow','width=700,height=450,resizable=yes,menubar=no,scrollbars=yes');
				  	break;					
				}
				case "comingSoon":  
				{ 
					var insertUrl = resValue;
				  	toolPopupWindow = window.open(insertUrl,'csPopupWindow','width=400,height=300,resizable=no,menubar=no,scrollbars=yes');
				  	break;					
				}
				
				case "journal_xpres1":  
				{ 
					if (top.uppernav.journalQSID!=null) {
						top.hrwSpawn508NBQuesSet('WD31',top.uppernav.journalQSID);
					} else {
						alert("Please select a chapter which contains a Journal.");
					}
				  	break;					

				}

				case "journal_xpres1a":  
				{ 
					if (top.uppernav.journalQSID!=null) {
						top.hrwSpawn508NBQuesSet('WD31',top.uppernav.journalQSID);
					} else {
						alert("Please select a chapter which contains a Journal.");
					}
				  	break;					

				}

				case "journal_xpres1b":  
				{ 
					if (top.uppernav.journalQSID!=null) {
						top.hrwSpawn508NBQuesSet('WD31',top.uppernav.journalQSID);
					} else {
						alert("Please select a chapter which contains a Journal.");
					}
				  	break;					

				}

				case "journal_xpres2":  
				{ 
					if (top.uppernav.journalQSID!=null) {
						top.hrwSpawn508NBQuesSet('WD31',top.uppernav.journalQSID);
					} else {
						alert("Please select a chapter which contains a Journal.");
					}
				  	break;					

				}

				case "journal_xpres3":  
				{ 
					if (top.uppernav.journalQSID!=null) {
						top.hrwSpawn508NBQuesSet('WD31',top.uppernav.journalQSID);
					} else {
						alert("Please select a chapter which contains a Journal.");
					}
				  	break;					

				}
				
				
				
				
			}//end switch 
		}//end if not empty	
}


/*

case "journal_xpres1":  
				{ 
					if (top.uppernav.journalQSID!=null) {
						top.hrwSpawn508NBQuesSet('WV31',top.uppernav.journalQSID);
					} else {
						alert("Please select a chapter which contains a Journal.");
					}
				  	break;					
				}
				
This one works:
				{ 
					top.hrwSpawn508NBQuesSet('WD31','WL06L105.1');
					//'WL06L105.1', top.uppernav.journalQSID, top.uppernav.quesSetID
					//javascript:top.hrwSpawn508NBQuesSet('2','WL06L105.1') W88L06L105.1
					break;					
				}
				,resValue
*/


//*********************************************************************************//
//This function loads a URL in the Parent Window
//*********************************************************************************//

function loadURL(url) {
	window.parent.location=url;
}

//*********************************************************************************//
// This function lauches the popup window
// Browser detect opens different size window to accomodate Netscape
// Netscape window: 788 X 525
// IE window: 788 X 494  
// May have to adjust size for MAC
//*********************************************************************************//

function loadPopup(gotoPage) {
var bName=navigator.appName;
var bVer=parseInt(navigator.appVersion);
var platform=navigator.platform.substr(0,3);

// If user OS is Windows
if (platform=="Win") {
	//Netscape
	if ((bName=="Netscape") && (bVer<=4)) {
		popupWindow = window.open(gotoPage,'popupwindow','width=788,height=525,resizable=yes,menubar=yes');	
	}
	//MSIE4
	else {
		popupWindow = window.open(gotoPage,'popupwindow','width=788,height=494,resizable=yes,menubar=yes');
	}
	
// If user OS is Mac
} else if (platform=="Mac") {
	//Netscape
	if ((bName=="Netscape") && (bVer>=4)) {
		popupWindow = window.open(gotoPage,'popupwindow','width=788,height=525,resizable=yes,menubar=yes');
	}
	//MSIE
	else {
		popupWindow = window.open(gotoPage,'popupwindow','width=788,height=494,resizable=yes,menubar=yes');
		}

	} 

}


//*********************************************************************************//
// This function loads the Help Window
//*********************************************************************************//

function loadHelp(gotoPage) {
	popupWindow = window.open(gotoPage,'helpwindow','width=375,height=450,resizable=yes,menubar=yes,scrollbars=yes');
}

//*********************************************************************************//
// This function controls the anno/highlighting tool in the enhanced uppernav
//*********************************************************************************//

function doSelect(elem)
		 {
		 		 if (elem.options[elem.selectedIndex].value == "")
		 		 		 return;
		 		 eval(elem.options[elem.selectedIndex].value); 
		 		 elem.selectedIndex = 0;
		 }

//*********************************************************************************//

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

//*********************************************************************************//
function MM_findObj(n, d) { //v4.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && document.getElementById) x=document.getElementById(n); return x;
}

//*********************************************************************************//
function MM_nbGroup(event, grpName) { //v3.0
  var i,img,nbArr,args=MM_nbGroup.arguments;
  if (event == "init" && args.length > 2) {
    if ((img = MM_findObj(args[2])) != null && !img.MM_init) {
      img.MM_init = true; img.MM_up = args[3]; img.MM_dn = img.src;
      if ((nbArr = document[grpName]) == null) nbArr = document[grpName] = new Array();
      nbArr[nbArr.length] = img;
      for (i=4; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
        if (!img.MM_up) img.MM_up = img.src;
        img.src = img.MM_dn = args[i+1];
        nbArr[nbArr.length] = img;
    } }
  } else if (event == "over") {
    document.MM_nbOver = nbArr = new Array();
    for (i=1; i < args.length-1; i+=3) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = (img.MM_dn && args[i+2]) ? args[i+2] : args[i+1];
      nbArr[nbArr.length] = img;
    }
  } else if (event == "out" ) {
    for (i=0; i < document.MM_nbOver.length; i++) {
      img = document.MM_nbOver[i]; img.src = (img.MM_dn) ? img.MM_dn : img.MM_up; }
  } else if (event == "down") {
    if ((nbArr = document[grpName]) != null)
      for (i=0; i < nbArr.length; i++) { img=nbArr[i]; img.src = img.MM_up; img.MM_dn = 0; }
    document[grpName] = nbArr = new Array();
    for (i=2; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = img.MM_dn = args[i+1];
      nbArr[nbArr.length] = img;
  } }
}

//*********************************************************************************//
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}

MM_reloadPage(true);

//*********************************************************************************//
// sets visibility of <div> object taking into account IE/NS differences in DOM.
function showHideObject(obj, visible) {
    v = visible
    if (obj.style) {
	  obj=obj.style;
	  v=(v=='show')?'visible':(v='hide')?'hidden':v;
    }
    obj.visibility=v;
}


//*********************************************************************************//
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; 
  for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) 
  x.src=x.oSrc;
}

//*********************************************************************************//
function MM_swapImage() { //v3.0
  var i,
  j=0,x,a=MM_swapImage.arguments; 
  document.MM_sr=new Array; 
  for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null)
   	{
		document.MM_sr[j++]=x; 
			if(!x.oSrc) x.oSrc=x.src; 
			x.src=a[i+2];
	}
}


//*********************************************************************************//
// This function loads the AuthorSpace Window
// Developed by CodeWest
//*********************************************************************************//

function GP_AdvOpenWindow(theURL,winName,features,popWidth,popHeight,winAlign,ignorelink,alwaysOnTop,autoCloseTime,borderless) { //v2.0
  var leftPos=0,topPos=0,autoCloseTimeoutHandle, ontopIntervalHandle, w = 480, h = 340;  
  if (popWidth > 0) features += (features.length > 0 ? ',' : '') + 'width=' + popWidth;
  if (popHeight > 0) features += (features.length > 0 ? ',' : '') + 'height=' + popHeight;
  if (winAlign && winAlign != "" && popWidth > 0 && popHeight > 0) {
    if (document.all || document.layers || document.getElementById) {w = screen.availWidth; h = screen.availHeight;}
		if (winAlign.indexOf("center") != -1) {topPos = (h-popHeight)/2;leftPos = (w-popWidth)/2;}
		if (winAlign.indexOf("bottom") != -1) topPos = h-popHeight; 
		if (winAlign.indexOf("right") != -1) leftPos = w-popWidth; 
		if (winAlign.indexOf("left") != -1) leftPos = 0; 
		if (winAlign.indexOf("top") != -1) topPos = 0; 						
    features += (features.length > 0 ? ',' : '') + 'top=' + topPos+',left='+leftPos;}
  if (document.all && borderless && borderless != "" && features.indexOf("fullscreen") != -1) features+=",fullscreen=1";
  if (window["popupWindow"] == null) window["popupWindow"] = new Array();
  var wp = popupWindow.length;
  popupWindow[wp] = window.open(theURL,winName,features);
  if (popupWindow[wp].opener == null) popupWindow[wp].opener = self;  
  if (document.all || document.layers || document.getElementById) {
    if (borderless && borderless != "") {popupWindow[wp].resizeTo(popWidth,popHeight); popupWindow[wp].moveTo(leftPos, topPos);}
    if (alwaysOnTop && alwaysOnTop != "") {
    	ontopIntervalHandle = popupWindow[wp].setInterval("window.focus();", 50);
    	popupWindow[wp].document.body.onload = function() {window.setInterval("window.focus();", 50);}; }
    if (autoCloseTime && autoCloseTime > 0) {
    	popupWindow[wp].document.body.onbeforeunload = function() {
  			if (autoCloseTimeoutHandle) window.clearInterval(autoCloseTimeoutHandle);
    		window.onbeforeunload = null;	}  
   		autoCloseTimeoutHandle = window.setTimeout("popupWindow["+wp+"].close()", autoCloseTime * 1000); }
  	window.onbeforeunload = function() {for (var i=0;i<popupWindow.length;i++) popupWindow[i].close();}; }   
  document.MM_returnValue = (ignorelink && ignorelink != "") ? false : true;
}
