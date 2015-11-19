/*******************************************************************
*
* File    : hover.js
*
* Created : 1999/11/02
*
* Author  : Roy Whittle  (Roy@Whittle.com)
*
* Purpose : To simulate the onMouseOver text color change of IE.
*
* History
*
* Date         Version        Description
* 1999-11-02    1.0           First Version It works! amazing.
* 1999-12-29    1.1           Moved font colour/selection to outside script.
* 2000-05-06    1.2		Dynamically create the layer using new Layer();
* 2001-03-10    1.3		Find all links in all layers
*******************************************************************/
/*** Array to hold the original onMouseOver event handlers ***/
var saved_onOver = new Array();
/*** Function pointer to hold the current onMouseOut event handler ***/
var the_onOut;
var hovrLayr;
var ow;
/***********************************************************
*
* Function   : startHover
*              
* Description : This is the initialisation. It saves all
*               existing onMouseOver event handlers and then
*               redirects all onMouseOvers for non blank
*               text links to hvr_on().
*
***********************************************************/
function startHover()
{
	if(document.layers)
	{
		hovrLayr=page.document.hovrLayr; // new Layer(300);

		findAllLinks(page.document,0,0);

		ow = outerWidth;
		page.captureEvents(Event.RESIZE);
		page.onresize=handle_resize;
	}

}
/***********************************************************
* Function   : findAllLinks
*
* Parameters : d - a document object
*		   x - the x coord of the parent layer
*		   y - the y coord of the parent layer
*              
* Description : locates all links in the document.
***********************************************************/
function findAllLinks(d,x,y)
{
	var i ;// create local variable

	for(i=0 ; i<d.links.length ; i++)
		if(d.links[i].text != null)
		{
			var lnk = d.links[i];
			/*** If the link already has a mousover - save it ***/
			if(lnk.onmouseover != null)
				saved_onOver[hashStr(lnk)] = lnk.onmouseover;
			lnk.onmouseover=hvr_on;
			lnk.sx = x + lnk.x;
			lnk.sy = y + lnk.y;
		}

	for(i=0 ; i<d.layers.length ; i++)
	{
		/*** recursively find any nested layers ***/
		findAllLinks(d.layers[i].document,d.layers[i].pageX,d.layers[i].pageY);
	}

}
/***********************************************************
* Function   : hashStr
*
* Parameters : lnk - A link OBJECT
*              
* Description : Creates a unique reference to a link by
*               using the link x,y co-ordinates and the
*               link text.
***********************************************************/
function hashStr(lnk)
{
	return("onM" + lnk.x + "_" + lnk.y + "_" + lnk.text);
}
/***********************************************************
* Function   : hvr_on
*
* Parameters : evt - Standard Netscape event object.
*              
* Description : The difficult bit. Puts an exact copy of the
*               link (including onMouseOver/Out/Click) into
*               the layer named "hovr", moves the layer to
*               the exact co-ordinates of the link text and
*               overlays the link with the new layer.
*
***********************************************************/
function hvr_on(evt)
{
	var obj=evt.target;
	var hash_it = hashStr(obj);

	var hovr_txt = "<A HREF=\"" + obj.href + "\"";

	if(obj.target)
		hovr_txt += (" TARGET=\"" + obj.target + "\"");
	hovr_txt += (" onMouseOut=\"hvr_off()\">" +obj.text+ "</A>");
	hovrLayr.document.open();
	hovrLayr.document.write(hovr_txt);
	hovrLayr.document.close();
	hovrLayr.left=obj.sx;
	hovrLayr.top =obj.sy;
	hovrLayr.document.links[0].onmouseover = saved_onOver[hash_it];
	hovrLayr.document.links[0].onclick     = obj.onclick;
	hovrLayr.visibility = "show";

	the_onOut=obj.onmouseout;
}
/***********************************************************
* Function   : hvr_off
*
* Parameters : evt - Standard Netscape event object.
*              
* Description : turns off the hover layer and executes the
*               onMouseOut event handler. 
*
***********************************************************/
function hvr_off()
{

	hovrLayr.visibility = "hide";
	if(the_onOut)
		(the_onOut)(); /*** WOW, just like 'C'. Execute a pointer to a function. ***/
}
function handle_resize()
{
//alert("ow = " + outerWidth);
//alert("oh = " + outerHeight);
	if(outerWidth != ow)
	{
		ow = outerWidth;
		location.reload();
	}
	return false;
}