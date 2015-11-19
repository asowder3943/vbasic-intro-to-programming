// Converts carriage returns, ampersands, quotation marks, and angle-braces
// to XML-friendly
function serializeToXML(xml)
{
	if (xml == null)
		return "";
	xml = xml.toString();	
	var tempArray;
	tempArray = xml.split("\r\n");
	xml = tempArray.join("<br>");
	tempArray = xml.split("\r");
	xml = tempArray.join("<br>");
	tempArray = xml.split("\n");
	xml = tempArray.join("<br>");
	
	tempArray = xml.split("&");
	xml = tempArray.join("&amp;");	
	
	tempArray = xml.split("\"");
	xml = tempArray.join("&quot;");
		
	tempArray = xml.split("<");
	xml = tempArray.join("&lt;");
	tempArray = xml.split(">");
	xml = tempArray.join("&gt;");
	return xml;
}

// Converts carriage returns, ampersands, quotation marks, and angle-braces
// to XML-friendly
// Deletes line breaks.
function serializeToXMLNoLinebreaks(xml)
{
	if (xml == null)
		return "";
	xml = xml.toString();		
	var tempArray;
	tempArray = xml.split("\r\n");
	xml = tempArray.join("");
	tempArray = xml.split("\r");
	xml = tempArray.join("");
	tempArray = xml.split("\n");
	xml = tempArray.join("");
	
	tempArray = xml.split("&");
	xml = tempArray.join("&amp;");	
	
	tempArray = xml.split("\"");
	xml = tempArray.join("&quot;");
		
	tempArray = xml.split("<");
	xml = tempArray.join("&lt;");
	tempArray = xml.split(">");
	xml = tempArray.join("&gt;");
	return xml;
}

// Converts a string containing <br> tags for display in a textarea.
function convertForForm(html)
{
	if (html == null)
		return "";
	html = html.toString();			
	var tempArray;
	tempArray = html.split("<br>");
	html = tempArray.join("\r\n");
	return html;
}

// Converts a string containing linefeeds to <br> for HTML display.
function convertFormToHtml(str)
{
	if (str == null)
		return "";
	str = str.toString();			
	var tempArray;
	tempArray = str.split("\r\n");
	str = tempArray.join("<br>");
	tempArray = str.split("\r");
	str = tempArray.join("<br>");
	tempArray = str.split("\n");
	str = tempArray.join("<br>");

	return str;
}

// Converts quotes to entities.
function convertQuotes(str)
{
	str = str.toString();	
	tempArray = str.split("\"");	
	str = tempArray.join("&quot;");	
	tempArray = str.split("'");
	str = tempArray.join("&rsquo;");
	
	return str;
}

// Converts form entry to allow page display of HTML.
function convertFormToDisplayHtml(str)
{
	return convertFormToHtml(convertLinksToDisplayHtml(str));
}

// Strips <a> tags from a string.
function convertLinksToDisplayHtml (str)
{
	if (str == null)
		return "";
	str = str.toString();		
	var tempArray;
	tempArray = str.split("<a ");
	str = tempArray.join("<span class=\"link\" ");
	tempArray = str.split("</a>");
	str = tempArray.join("</span>");
	tempArray = str.split("<A ");
	str = tempArray.join("<span class=\"link\" ");
	tempArray = str.split("</A>");
	str = tempArray.join("</span>");
	
	return str;
}