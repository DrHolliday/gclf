<?php
require 'inc/config.php';

$sql = 'SELECT * FROM film';
$pdoStatement = $pdo->prepare($sql);

print_r($pdoStatement);



require 'html/header.php';
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
		<a class="btn" href="details.php?id=<?php echo $currentFilmInfos['fil_id']; ?>">Détails</a><br />
		<a class="btn" href="form_film.php?id=<?php echo $currentFilmInfos['fil_id']; ?>">Modifier</a><br />
	</div>
</article>


<?php
require 'html/footer.php';
?>
