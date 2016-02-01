<html>
<head>
	<title>GCLF - <?php echo $pageTitle; ?></title>
	<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<header>
	<h1>MON HEADER en include</h1>
	<ul class="menu">
		<li>Accueil</li>
		<li>Gérer les catégories</li>
		<li>Ajouter un film</li>
	</ul>
<!-- RECHERCHE -->	
	<form id="rechercheHeader" action="catalogue.php" method="get">
		<input id="" type="text" name="q" value="" />
		<input id="" type="submit" value="Rechercher"/>
	</form>
</header>
<body>
	