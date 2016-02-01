<?php

require 'inc/config.php';

require 'html/header.php';

$sql='
	SELECT COUNT(*) AS nb, categorie.cat_id, categorie.cat_nom
	FROM film
	INNER JOIN categorie ON categorie.cat_id = film.cat_id
	GROUP BY categorie.cat_id, categorie.cat_nom
';

$pdoStatement = $pdo->prepare($sql);
if ($rechercheEnCours) {
	$pdoStatement->bindValue(':terms', '%'.$searchTerms.'%');
}

// Si la requête à fonctionnée
if ($pdoStatement->execute()) {
	$filmList = $pdoStatement->fetchAll();
}

print_r($filmList);

$filmList = 4;


?>
<section>
	<p>
		Eodem tempore etiam Hymetii praeclarae indolis viri negotium est actitatum, cuius hunc novimus esse textum. cum Africam pro consule regeret Carthaginiensibus victus inopia iam lassatis, ex horreis Romano populo destinatis frumentum dedit, pauloque postea cum provenisset segetum copia, integre sine ulla restituit mora.
	</p>

</section>
<!-- RECHERCHE -->
<section id="">
	<form action="catalogue.php" method="get">
		<input id="rechercheChamp" type="text" name="q" value="" />
		<input id="rechercheBtn" type="submit" value="Rechercher"/>
	</form>
</section>
<!-- RESULTATS 4 DERNIERS AJOUTS -->
<section class="filmList">
	<?php
	// Si la variable $filmList existe et si elle contient plusieurs lignes
	if (isset($filmList) && sizeof($filmList) > 0) {
		foreach ($filmList as $currentFilmInfos) {
		?>
		<article>
			<div class="content">
				<img src="<?php echo $currentFilmInfos['fil_affiche']; ?>" />
				<div class="titre">
					#<?php echo $currentFilmInfos['fil_id']; ?>&nbsp;
					<a href="details.php?id=<?php echo $currentFilmInfos['fil_id']; ?>"><?php echo $currentFilmInfos['fil_titre']; ?></a>
				</div>
				<div class="synopsis">
					<?php echo $currentFilmInfos['fil_synopsis']; ?>
				</div>
			</div>
			<div class="actions">
			</div>
		</article>
		<?php
		}
	}
	?>
</section>


<?php
require 'html/footer.php';