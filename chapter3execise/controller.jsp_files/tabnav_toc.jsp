

function getPageHeader()
{
	var htmlHeader = "";


	htmlHeader = "<a name=\"skipnav\">ROOT</a>";


	return htmlHeader;
}



function makeNewTree()
{
	var tnt;

//	alert("starting treemaker");
//	var start = new Date();

	Tree = new Array();
	g_nodeMap = new Object();

	tnt = addTreeNode("A297479D9D6C413FE04400144F22E6BA","0","0","Introduction","A297479D9D6C413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Introduction");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9D6D413FE04400144F22E6BA","A297479D9D6C413FE04400144F22E6BA","1","Pourquoi apprendre le fran�ais?","A297479D9D6D413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Pourquoi apprendre le fran�ais?");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D6E413FE04400144F22E6BA","A297479D9D6C413FE04400144F22E6BA","1","Le monde francophone","A297479D9D6E413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Le monde francophone");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D6F413FE04400144F22E6BA","A297479D9D6C413FE04400144F22E6BA","1","Instructions","A297479D9D6F413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Instructions");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D70413FE04400144F22E6BA","A297479D9D6C413FE04400144F22E6BA","1","Suggestions pour apprendre le fran�ais","A297479D9D70413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Suggestions pour apprendre le fran�ais");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D71413FE04400144F22E6BA","0","0","Chapitres 1 et 2: Paris","A297479D9D71413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Chapitres 1 et 2: Paris");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9D72413FE04400144F22E6BA","A297479D9D71413FE04400144F22E6BA","1","Carte: Paris","A297479D9D72413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Carte: Paris");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D73413FE04400144F22E6BA","A297479D9D71413FE04400144F22E6BA","1","Sports / Sciences","A297479D9D73413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Sports / Sciences");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D74413FE04400144F22E6BA","A297479D9D71413FE04400144F22E6BA","1","Gastronomie / Mode","A297479D9D74413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Gastronomie / Mode");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D75413FE04400144F22E6BA","0","0","Chapitre  1","A297479D9D75413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Chapitre  1");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9D76413FE04400144F22E6BA","A297479D9D75413FE04400144F22E6BA","1","Objectifs","A297479D9D76413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Objectifs");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D77413FE04400144F22E6BA","A297479D9D75413FE04400144F22E6BA","1","Vocabulaire 1","A297479D9D77413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D78413FE04400144F22E6BA","A297479D9D75413FE04400144F22E6BA","1","Grammaire 1","A297479D9D78413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D79413FE04400144F22E6BA","A297479D9D75413FE04400144F22E6BA","1","Application 1","A297479D9D79413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D7A413FE04400144F22E6BA","A297479D9D75413FE04400144F22E6BA","1","Culture","A297479D9D7A413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Culture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D7B413FE04400144F22E6BA","A297479D9D75413FE04400144F22E6BA","1","Vocabulaire 2","A297479D9D7B413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D7C413FE04400144F22E6BA","A297479D9D75413FE04400144F22E6BA","1","Grammaire 2","A297479D9D7C413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D7D413FE04400144F22E6BA","A297479D9D75413FE04400144F22E6BA","1","Application 2","A297479D9D7D413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D7E413FE04400144F22E6BA","A297479D9D75413FE04400144F22E6BA","1","T�l�-roman","A297479D9D7E413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","T�l�-roman");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D7F413FE04400144F22E6BA","A297479D9D75413FE04400144F22E6BA","1","Lecture et �criture","A297479D9D7F413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Lecture et �criture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D80413FE04400144F22E6BA","A297479D9D75413FE04400144F22E6BA","1","Pr�pare-toi pour l'examen","A297479D9D80413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Pr�pare-toi pour l'examen");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D81413FE04400144F22E6BA","A297479D9D75413FE04400144F22E6BA","1","R�visions cumulatives","A297479D9D81413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","R�visions cumulatives");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D82413FE04400144F22E6BA","0","0","Chapitre  2","A297479D9D82413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Chapitre  2");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9D83413FE04400144F22E6BA","A297479D9D82413FE04400144F22E6BA","1","Objectifs","A297479D9D83413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Objectifs");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D84413FE04400144F22E6BA","A297479D9D82413FE04400144F22E6BA","1","Vocabulaire 1","A297479D9D84413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D85413FE04400144F22E6BA","A297479D9D82413FE04400144F22E6BA","1","Grammaire 1","A297479D9D85413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D86413FE04400144F22E6BA","A297479D9D82413FE04400144F22E6BA","1","Application 1","A297479D9D86413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D87413FE04400144F22E6BA","A297479D9D82413FE04400144F22E6BA","1","Culture","A297479D9D87413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Culture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D88413FE04400144F22E6BA","A297479D9D82413FE04400144F22E6BA","1","Vocabulaire 2","A297479D9D88413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D89413FE04400144F22E6BA","A297479D9D82413FE04400144F22E6BA","1","Grammaire 2","A297479D9D89413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D8A413FE04400144F22E6BA","A297479D9D82413FE04400144F22E6BA","1","Application 2","A297479D9D8A413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D8B413FE04400144F22E6BA","A297479D9D82413FE04400144F22E6BA","1","T�l�-roman","A297479D9D8B413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","T�l�-roman");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D8C413FE04400144F22E6BA","A297479D9D82413FE04400144F22E6BA","1","Lecture et �criture","A297479D9D8C413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Lecture et �criture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D8D413FE04400144F22E6BA","A297479D9D82413FE04400144F22E6BA","1","Pr�pare-toi pour l'examen","A297479D9D8D413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Pr�pare-toi pour l'examen");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D8E413FE04400144F22E6BA","A297479D9D82413FE04400144F22E6BA","1","R�visions cumulatives","A297479D9D8E413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","R�visions cumulatives");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D8F413FE04400144F22E6BA","0","0","Chapitres 3 et 4: Qu�bec","A297479D9D8F413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Chapitres 3 et 4: Qu�bec");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9D90413FE04400144F22E6BA","A297479D9D8F413FE04400144F22E6BA","1","Carte: Qu�bec","A297479D9D90413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Carte: Qu�bec");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D91413FE04400144F22E6BA","A297479D9D8F413FE04400144F22E6BA","1","Architecture / F�tes et festivals","A297479D9D91413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Architecture / F�tes et festivals");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D92413FE04400144F22E6BA","A297479D9D8F413FE04400144F22E6BA","1","Gastronomie / Arts","A297479D9D92413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Gastronomie / Arts");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D93413FE04400144F22E6BA","0","0","Chapitre  3","A297479D9D93413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Chapitre  3");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9D94413FE04400144F22E6BA","A297479D9D93413FE04400144F22E6BA","1","Objectifs","A297479D9D94413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Objectifs");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D95413FE04400144F22E6BA","A297479D9D93413FE04400144F22E6BA","1","Vocabulaire 1","A297479D9D95413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D96413FE04400144F22E6BA","A297479D9D93413FE04400144F22E6BA","1","Grammaire 1","A297479D9D96413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D97413FE04400144F22E6BA","A297479D9D93413FE04400144F22E6BA","1","Application 1","A297479D9D97413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D98413FE04400144F22E6BA","A297479D9D93413FE04400144F22E6BA","1","Culture","A297479D9D98413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Culture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D99413FE04400144F22E6BA","A297479D9D93413FE04400144F22E6BA","1","Vocabulaire 2","A297479D9D99413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D9A413FE04400144F22E6BA","A297479D9D93413FE04400144F22E6BA","1","Grammaire 2","A297479D9D9A413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D9B413FE04400144F22E6BA","A297479D9D93413FE04400144F22E6BA","1","Application 2","A297479D9D9B413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D9C413FE04400144F22E6BA","A297479D9D93413FE04400144F22E6BA","1","T�l�-roman","A297479D9D9C413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","T�l�-roman");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D9D413FE04400144F22E6BA","A297479D9D93413FE04400144F22E6BA","1","Lecture et �criture","A297479D9D9D413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Lecture et �criture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D9E413FE04400144F22E6BA","A297479D9D93413FE04400144F22E6BA","1","Pr�pare-toi pour l'examen","A297479D9D9E413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Pr�pare-toi pour l'examen");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9D9F413FE04400144F22E6BA","A297479D9D93413FE04400144F22E6BA","1","R�visions cumulatives","A297479D9D9F413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","R�visions cumulatives");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DA0413FE04400144F22E6BA","0","0","Chapitre  4","A297479D9DA0413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Chapitre  4");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9DA1413FE04400144F22E6BA","A297479D9DA0413FE04400144F22E6BA","1","Objectifs","A297479D9DA1413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Objectifs");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DA2413FE04400144F22E6BA","A297479D9DA0413FE04400144F22E6BA","1","Vocabulaire 1","A297479D9DA2413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DA3413FE04400144F22E6BA","A297479D9DA0413FE04400144F22E6BA","1","Grammaire 1","A297479D9DA3413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DA4413FE04400144F22E6BA","A297479D9DA0413FE04400144F22E6BA","1","Application 1","A297479D9DA4413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DA5413FE04400144F22E6BA","A297479D9DA0413FE04400144F22E6BA","1","Culture","A297479D9DA5413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Culture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DA6413FE04400144F22E6BA","A297479D9DA0413FE04400144F22E6BA","1","Vocabulaire 2","A297479D9DA6413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DA7413FE04400144F22E6BA","A297479D9DA0413FE04400144F22E6BA","1","Grammaire 2","A297479D9DA7413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DA8413FE04400144F22E6BA","A297479D9DA0413FE04400144F22E6BA","1","Application 2","A297479D9DA8413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DA9413FE04400144F22E6BA","A297479D9DA0413FE04400144F22E6BA","1","T�l�-roman","A297479D9DA9413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","T�l�-roman");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DAA413FE04400144F22E6BA","A297479D9DA0413FE04400144F22E6BA","1","Lecture et �criture","A297479D9DAA413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Lecture et �criture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DAB413FE04400144F22E6BA","A297479D9DA0413FE04400144F22E6BA","1","Pr�pare-toi pour l'examen","A297479D9DAB413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Pr�pare-toi pour l'examen");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DAC413FE04400144F22E6BA","A297479D9DA0413FE04400144F22E6BA","1","R�visions cumulatives","A297479D9DAC413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","R�visions cumulatives");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DAD413FE04400144F22E6BA","0","0","Chapitres 5 et 6: Rennes","A297479D9DAD413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Chapitres 5 et 6: Rennes");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9DAE413FE04400144F22E6BA","A297479D9DAD413FE04400144F22E6BA","1","Carte: Rennes","A297479D9DAE413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Carte: Rennes");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DAF413FE04400144F22E6BA","A297479D9DAD413FE04400144F22E6BA","1","Architecture / F�tes et festivals","A297479D9DAF413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Architecture / F�tes et festivals");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DB0413FE04400144F22E6BA","A297479D9DAD413FE04400144F22E6BA","1","Musique / Arts","A297479D9DB0413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Musique / Arts");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DB1413FE04400144F22E6BA","0","0","Chapitre  5","A297479D9DB1413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Chapitre  5");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9DB2413FE04400144F22E6BA","A297479D9DB1413FE04400144F22E6BA","1","Objectifs","A297479D9DB2413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Objectifs");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DB3413FE04400144F22E6BA","A297479D9DB1413FE04400144F22E6BA","1","Vocabulaire 1","A297479D9DB3413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DB4413FE04400144F22E6BA","A297479D9DB1413FE04400144F22E6BA","1","Grammaire 1","A297479D9DB4413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DB5413FE04400144F22E6BA","A297479D9DB1413FE04400144F22E6BA","1","Application 1","A297479D9DB5413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DB6413FE04400144F22E6BA","A297479D9DB1413FE04400144F22E6BA","1","Culture","A297479D9DB6413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Culture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DB7413FE04400144F22E6BA","A297479D9DB1413FE04400144F22E6BA","1","Vocabulaire 2","A297479D9DB7413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DB8413FE04400144F22E6BA","A297479D9DB1413FE04400144F22E6BA","1","Grammaire 2","A297479D9DB8413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DB9413FE04400144F22E6BA","A297479D9DB1413FE04400144F22E6BA","1","Application 2","A297479D9DB9413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DBA413FE04400144F22E6BA","A297479D9DB1413FE04400144F22E6BA","1","T�l�-roman","A297479D9DBA413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","T�l�-roman");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DBB413FE04400144F22E6BA","A297479D9DB1413FE04400144F22E6BA","1","Lecture et �criture","A297479D9DBB413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Lecture et �criture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DBC413FE04400144F22E6BA","A297479D9DB1413FE04400144F22E6BA","1","Pr�pare-toi pour l'examen","A297479D9DBC413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Pr�pare-toi pour l'examen");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DBD413FE04400144F22E6BA","A297479D9DB1413FE04400144F22E6BA","1","R�visions cumulatives","A297479D9DBD413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","R�visions cumulatives");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DBE413FE04400144F22E6BA","0","0","Chapitre  6","A297479D9DBE413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Chapitre  6");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9DBF413FE04400144F22E6BA","A297479D9DBE413FE04400144F22E6BA","1","Objectifs","A297479D9DBF413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Objectifs");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DC0413FE04400144F22E6BA","A297479D9DBE413FE04400144F22E6BA","1","Vocabulaire 1","A297479D9DC0413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DC1413FE04400144F22E6BA","A297479D9DBE413FE04400144F22E6BA","1","Grammaire 1","A297479D9DC1413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DC2413FE04400144F22E6BA","A297479D9DBE413FE04400144F22E6BA","1","Application 1","A297479D9DC2413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DC3413FE04400144F22E6BA","A297479D9DBE413FE04400144F22E6BA","1","Culture","A297479D9DC3413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Culture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DC4413FE04400144F22E6BA","A297479D9DBE413FE04400144F22E6BA","1","Vocabulaire 2","A297479D9DC4413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DC5413FE04400144F22E6BA","A297479D9DBE413FE04400144F22E6BA","1","Grammaire 2","A297479D9DC5413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DC6413FE04400144F22E6BA","A297479D9DBE413FE04400144F22E6BA","1","Application 2","A297479D9DC6413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DC7413FE04400144F22E6BA","A297479D9DBE413FE04400144F22E6BA","1","T�l�-roman","A297479D9DC7413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","T�l�-roman");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DC8413FE04400144F22E6BA","A297479D9DBE413FE04400144F22E6BA","1","Lecture et �criture","A297479D9DC8413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Lecture et �criture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DC9413FE04400144F22E6BA","A297479D9DBE413FE04400144F22E6BA","1","Pr�pare-toi pour l'examen","A297479D9DC9413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Pr�pare-toi pour l'examen");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DCA413FE04400144F22E6BA","A297479D9DBE413FE04400144F22E6BA","1","R�visions cumulatives","A297479D9DCA413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","R�visions cumulatives");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DCB413FE04400144F22E6BA","0","0","Chapitres 7 et 8: Dakar","A297479D9DCB413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Chapitres 7 et 8: Dakar");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9DCC413FE04400144F22E6BA","A297479D9DCB413FE04400144F22E6BA","1","Carte: Dakar","A297479D9DCC413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Carte: Dakar");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DCD413FE04400144F22E6BA","A297479D9DCB413FE04400144F22E6BA","1","Arts / Mode","A297479D9DCD413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Arts / Mode");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DCE413FE04400144F22E6BA","A297479D9DCB413FE04400144F22E6BA","1","F�tes et festivals / Cin�ma","A297479D9DCE413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","F�tes et festivals / Cin�ma");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DCF413FE04400144F22E6BA","0","0","Chapitre  7","A297479D9DCF413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Chapitre  7");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9DD0413FE04400144F22E6BA","A297479D9DCF413FE04400144F22E6BA","1","Objectifs","A297479D9DD0413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Objectifs");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DD1413FE04400144F22E6BA","A297479D9DCF413FE04400144F22E6BA","1","Vocabulaire 1","A297479D9DD1413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DD2413FE04400144F22E6BA","A297479D9DCF413FE04400144F22E6BA","1","Grammaire 1","A297479D9DD2413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DD3413FE04400144F22E6BA","A297479D9DCF413FE04400144F22E6BA","1","Application 1","A297479D9DD3413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DD4413FE04400144F22E6BA","A297479D9DCF413FE04400144F22E6BA","1","Culture","A297479D9DD4413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Culture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DD5413FE04400144F22E6BA","A297479D9DCF413FE04400144F22E6BA","1","Vocabulaire 2","A297479D9DD5413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DD6413FE04400144F22E6BA","A297479D9DCF413FE04400144F22E6BA","1","Grammaire 2","A297479D9DD6413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DD7413FE04400144F22E6BA","A297479D9DCF413FE04400144F22E6BA","1","Application 2","A297479D9DD7413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DD8413FE04400144F22E6BA","A297479D9DCF413FE04400144F22E6BA","1","T�l�-roman","A297479D9DD8413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","T�l�-roman");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DD9413FE04400144F22E6BA","A297479D9DCF413FE04400144F22E6BA","1","Lecture et �criture","A297479D9DD9413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Lecture et �criture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DDA413FE04400144F22E6BA","A297479D9DCF413FE04400144F22E6BA","1","Pr�pare-toi pour l'examen","A297479D9DDA413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Pr�pare-toi pour l'examen");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DDB413FE04400144F22E6BA","A297479D9DCF413FE04400144F22E6BA","1","R�visions cumulatives","A297479D9DDB413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","R�visions cumulatives");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DDC413FE04400144F22E6BA","0","0","Chapitre  8","A297479D9DDC413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Chapitre  8");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9DDD413FE04400144F22E6BA","A297479D9DDC413FE04400144F22E6BA","1","Objectifs","A297479D9DDD413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Objectifs");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DDE413FE04400144F22E6BA","A297479D9DDC413FE04400144F22E6BA","1","Vocabulaire 1","A297479D9DDE413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DDF413FE04400144F22E6BA","A297479D9DDC413FE04400144F22E6BA","1","Grammaire 1","A297479D9DDF413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DE0413FE04400144F22E6BA","A297479D9DDC413FE04400144F22E6BA","1","Application 1","A297479D9DE0413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DE1413FE04400144F22E6BA","A297479D9DDC413FE04400144F22E6BA","1","Culture","A297479D9DE1413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Culture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DE2413FE04400144F22E6BA","A297479D9DDC413FE04400144F22E6BA","1","Vocabulaire 2","A297479D9DE2413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DE3413FE04400144F22E6BA","A297479D9DDC413FE04400144F22E6BA","1","Grammaire 2","A297479D9DE3413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DE4413FE04400144F22E6BA","A297479D9DDC413FE04400144F22E6BA","1","Application 2","A297479D9DE4413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DE5413FE04400144F22E6BA","A297479D9DDC413FE04400144F22E6BA","1","T�l�-roman","A297479D9DE5413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","T�l�-roman");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DE6413FE04400144F22E6BA","A297479D9DDC413FE04400144F22E6BA","1","Lecture et �criture","A297479D9DE6413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Lecture et �criture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DE7413FE04400144F22E6BA","A297479D9DDC413FE04400144F22E6BA","1","Pr�pare-toi pour l'examen","A297479D9DE7413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Pr�pare-toi pour l'examen");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DE8413FE04400144F22E6BA","A297479D9DDC413FE04400144F22E6BA","1","R�visions cumulatives","A297479D9DE8413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","R�visions cumulatives");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DE9413FE04400144F22E6BA","0","0","Chapitres 9 et 10: Nice","A297479D9DE9413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Chapitres 9 et 10: Nice");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9DEA413FE04400144F22E6BA","A297479D9DE9413FE04400144F22E6BA","1","Carte: Nice","A297479D9DEA413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Carte: Nice");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DEB413FE04400144F22E6BA","A297479D9DE9413FE04400144F22E6BA","1","Arts / F�tes et festivals","A297479D9DEB413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Arts / F�tes et festivals");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DEC413FE04400144F22E6BA","A297479D9DE9413FE04400144F22E6BA","1","Architecture / Gastronomie","A297479D9DEC413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Architecture / Gastronomie");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DED413FE04400144F22E6BA","0","0","Chapitre  9","A297479D9DED413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Chapitre  9");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9DEE413FE04400144F22E6BA","A297479D9DED413FE04400144F22E6BA","1","Objectifs","A297479D9DEE413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Objectifs");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DEF413FE04400144F22E6BA","A297479D9DED413FE04400144F22E6BA","1","Vocabulaire 1","A297479D9DEF413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DF0413FE04400144F22E6BA","A297479D9DED413FE04400144F22E6BA","1","Grammaire 1","A297479D9DF0413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DF1413FE04400144F22E6BA","A297479D9DED413FE04400144F22E6BA","1","Application 1","A297479D9DF1413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DF2413FE04400144F22E6BA","A297479D9DED413FE04400144F22E6BA","1","Culture","A297479D9DF2413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Culture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DF3413FE04400144F22E6BA","A297479D9DED413FE04400144F22E6BA","1","Vocabulaire 2","A297479D9DF3413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DF4413FE04400144F22E6BA","A297479D9DED413FE04400144F22E6BA","1","Grammaire 2","A297479D9DF4413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DF5413FE04400144F22E6BA","A297479D9DED413FE04400144F22E6BA","1","Application 2","A297479D9DF5413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DF6413FE04400144F22E6BA","A297479D9DED413FE04400144F22E6BA","1","T�l�-roman","A297479D9DF6413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","T�l�-roman");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DF7413FE04400144F22E6BA","A297479D9DED413FE04400144F22E6BA","1","Lecture et �criture","A297479D9DF7413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Lecture et �criture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DF8413FE04400144F22E6BA","A297479D9DED413FE04400144F22E6BA","1","Pr�pare-toi pour l'examen","A297479D9DF8413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Pr�pare-toi pour l'examen");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DF9413FE04400144F22E6BA","A297479D9DED413FE04400144F22E6BA","1","R�visions cumulatives","A297479D9DF9413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","R�visions cumulatives");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DFA413FE04400144F22E6BA","0","0","Chapitre  10","A297479D9DFA413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Chapitre  10");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9DFB413FE04400144F22E6BA","A297479D9DFA413FE04400144F22E6BA","1","Objectifs","A297479D9DFB413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Objectifs");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DFC413FE04400144F22E6BA","A297479D9DFA413FE04400144F22E6BA","1","Vocabulaire 1","A297479D9DFC413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DFD413FE04400144F22E6BA","A297479D9DFA413FE04400144F22E6BA","1","Grammaire 1","A297479D9DFD413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DFE413FE04400144F22E6BA","A297479D9DFA413FE04400144F22E6BA","1","Application 1","A297479D9DFE413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 1");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9DFF413FE04400144F22E6BA","A297479D9DFA413FE04400144F22E6BA","1","Culture","A297479D9DFF413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Culture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E00413FE04400144F22E6BA","A297479D9DFA413FE04400144F22E6BA","1","Vocabulaire 2","A297479D9E00413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E01413FE04400144F22E6BA","A297479D9DFA413FE04400144F22E6BA","1","Grammaire 2","A297479D9E01413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Grammaire 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E02413FE04400144F22E6BA","A297479D9DFA413FE04400144F22E6BA","1","Application 2","A297479D9E02413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Application 2");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E03413FE04400144F22E6BA","A297479D9DFA413FE04400144F22E6BA","1","T�l�-roman","A297479D9E03413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","T�l�-roman");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E04413FE04400144F22E6BA","A297479D9DFA413FE04400144F22E6BA","1","Lecture et �criture","A297479D9E04413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Lecture et �criture");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E05413FE04400144F22E6BA","A297479D9DFA413FE04400144F22E6BA","1","Pr�pare-toi pour l'examen","A297479D9E05413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Pr�pare-toi pour l'examen");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E06413FE04400144F22E6BA","A297479D9DFA413FE04400144F22E6BA","1","R�visions cumulatives","A297479D9E06413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","R�visions cumulatives");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E07413FE04400144F22E6BA","0","0","Variations litt�raires","A297479D9E07413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Variations litt�raires");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9E08413FE04400144F22E6BA","A297479D9E07413FE04400144F22E6BA","1","Paris-Plage","A297479D9E08413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Paris-Plage");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E09413FE04400144F22E6BA","A297479D9E07413FE04400144F22E6BA","1","Le Fant�me de l�Op�ra","A297479D9E09413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Le Fant�me de l�Op�ra");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E0A413FE04400144F22E6BA","A297479D9E07413FE04400144F22E6BA","1","Les po�mes d�Anne H�bert","A297479D9E0A413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Les po�mes d�Anne H�bert");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E0B413FE04400144F22E6BA","A297479D9E07413FE04400144F22E6BA","1","L�Alouette","A297479D9E0B413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","L�Alouette");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E0C413FE04400144F22E6BA","A297479D9E07413FE04400144F22E6BA","1","M�moires d�outre-tombe","A297479D9E0C413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","M�moires d�outre-tombe");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E0D413FE04400144F22E6BA","A297479D9E07413FE04400144F22E6BA","1","Saint-Malo, cit� corsaire","A297479D9E0D413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Saint-Malo, cit� corsaire");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E0E413FE04400144F22E6BA","A297479D9E07413FE04400144F22E6BA","1","Les po�mes de Senghor","A297479D9E0E413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Les po�mes de Senghor");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E0F413FE04400144F22E6BA","A297479D9E07413FE04400144F22E6BA","1","La mendiante et l��coli�re","A297479D9E0F413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","La mendiante et l��coli�re");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E10413FE04400144F22E6BA","A297479D9E07413FE04400144F22E6BA","1","Cyrano de Bergerac","A297479D9E10413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Cyrano de Bergerac");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E11413FE04400144F22E6BA","A297479D9E07413FE04400144F22E6BA","1","Mondo et autres histoires","A297479D9E11413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Mondo et autres histoires");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E12413FE04400144F22E6BA","0","0","Cartes","A297479D9E12413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Cartes");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9E13413FE04400144F22E6BA","A297479D9E12413FE04400144F22E6BA","1","La France","A297479D9E13413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","La France");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E14413FE04400144F22E6BA","A297479D9E12413FE04400144F22E6BA","1","L�Europe francophone","A297479D9E14413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","L�Europe francophone");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E15413FE04400144F22E6BA","A297479D9E12413FE04400144F22E6BA","1","L�Afrique francophone","A297479D9E15413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","L�Afrique francophone");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E16413FE04400144F22E6BA","A297479D9E12413FE04400144F22E6BA","1","L�Am�rique francophone","A297479D9E16413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","L�Am�rique francophone");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E17413FE04400144F22E6BA","0","0","Proverbes et expressions","A297479D9E17413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Proverbes et expressions");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9E18413FE04400144F22E6BA","A297479D9E17413FE04400144F22E6BA","1","Proverbes et expressions","A297479D9E18413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Proverbes et expressions");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E19413FE04400144F22E6BA","0","0","R�f�rences","A297479D9E19413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","R�f�rences");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9E1A413FE04400144F22E6BA","A297479D9E19413FE04400144F22E6BA","1","R�visions de vocabulaire","A297479D9E1A413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","R�visions de vocabulaire");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E1B413FE04400144F22E6BA","A297479D9E19413FE04400144F22E6BA","1","Vocabulaire suppl�mentaire","A297479D9E1B413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Vocabulaire suppl�mentaire");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E1C413FE04400144F22E6BA","A297479D9E19413FE04400144F22E6BA","1","Liste d�expressions","A297479D9E1C413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Liste d�expressions");
	setProp(tnt,"tocItemType",3);

	tnt = addTreeNode("A297479D9E1D413FE04400144F22E6BA","0","0","Cr�dits","A297479D9E1D413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 2;

	setProp(tnt,"shortLabel","Cr�dits");
	setProp(tnt,"tocItemType",2);

	tnt = addTreeNode("A297479D9E1E413FE04400144F22E6BA","A297479D9E1D413FE04400144F22E6BA","1","Cr�dits","A297479D9E1E413FE04400144F22E6BA",0,null,null);
	tnt.extra_indent = 0;
	tnt.tocItemType = 3;

	setProp(tnt,"shortLabel","Cr�dits");
	setProp(tnt,"tocItemType",3);


//	tnt = addTreeNode("1000","0","0","some W's","1000",0);
//	tnt.extra_indent = 2;
//	setProp(tnt,"shortLabel","WWWWWWWWWWWW");

//	tnt = addTreeNode("1001","0","0","some X's","1000",0);
//	tnt.extra_indent = 1;
//	setProp(tnt,"shortLabel","XXXXXXXXXXXX");



//	var end = new Date();
//	alert("finished initialization");
//
//	var startSec = (start.getMinutes() * 60) + start.getSeconds() + (start.getMilliseconds() / 1000);
//	var endSec = (end.getMinutes() * 60) + end.getSeconds() + (end.getMilliseconds() / 1000);
//
//	var time = endSec - startSec;
//
//	alert("time = " + time);

} // makeNewTree()


