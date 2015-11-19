var CurObj = null;
var SelObj = null;

function tClk(obj, args)
{
	tSel(args);
	top.updateWaib(args);
	top.getFirstPage(args);
}

function nodeClk(id)
{
	tTog(id);
	top.updateWaib(id);
}

function tEn(obj)
{
	if (obj == CurObj)
		return;

	CurObj = obj;
}		

function tEx(obj)
{
	SelObj = null;
}		
