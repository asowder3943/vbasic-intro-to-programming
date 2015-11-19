var LoadStatus=0;
var CompleteState=3;
var NotifyWin=null;

function tTogNoDisplay(id)
{
	var win;
	var pg;
	var tn;

	win = window.getDataFrame();
	pg = getPageFrame();

	tn = win.getNode(id);

	win.expNode(id);
}

function tTog(id)
{
	var win;
	var pg;
	var tn;

	win = window.getDataFrame();
	pg = getPageFrame();

	tn = win.getNode(id);

	win.toggleNode(id);

	if (isIE())
	{
		var scrollTop = pg.document.body.scrollTop;
		var scrollLeft = pg.document.body.scrollLeft;
	}

	win.renderTree();

	if (isIE())
	{
		var scrollTopNew = pg.document.body.scrollTop;
		pg.document.body.scrollTop = scrollTop;
		pg.document.body.scrollLeft = scrollLeft;
	}

	gotFocus();
}	
function tSel(id)
{
	var win;
	var pg;
	var tn;

	win = window.getDataFrame();
	pg = getPageFrame();

	tn = win.getNode(id);
	win.selectNode(id);
	win.renderTree();

	gotFocus();
}	
function tSelNoDisp(id)
{
	var win;
	var pg;
	var tn;

	win = window.getDataFrame();
	pg = getPageFrame();

	tn = win.getNode(id);
	win.selectNode(id);
}
function tEat()
{
}

	
function isIE()
{
	return (navigator.appName.indexOf("Microsoft") != -1) ? true : false;
}
function isNS()
{
	return (navigator.appName.indexOf("Netscape") != -1) ? true : false;
}
function getDataFrame()
{
	return window.data;
}
function getPageFrame()
{
	return window.page;
}
function getContentFrame()
{
	return window.content;
}
function gotFocus()
{
	if (NotifyWin != null)
	{
		NotifyWin.onNotify(window,1);
	}
}
function setNotify(win)
{
	NotifyWin = win;
}

// Hover text decoration for Netscape browsers
function nsHover()
{
	if(!page.document.layers) return;

	/*** define the link hover ***/
	page.document.tags.A.color          = "black";
	page.document.tags.A.backgroundColor= "#C0FFFF";
	page.document.tags.A.fontSize       = "10pt";
	page.document.tags.A.textDecoration = "underline";
	page.document.tags.A.fontFamily = "verdana,arial,times";
	//page.document.tags.A.fontFamily = "verdana";

	//	page.document.tags.A.fontWeight     = "bold"        // font weight onMouseOver
	//	page.document.tags.A.fontStyle      = "italic"      // font style onMouseOver
	//	page.document.tags.A.fontSize       = "40"          // new font size onMouseOver

	startHover();
}
