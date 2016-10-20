<?php require_once(ROOT . '/views/layouts/header.php'); ?>
<!-- Page Heading -->
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header"><?php echo htmlspecialchars($serial['name']); ?> </h1>
    </div>
</div>
<!-- /.row -->

<div class="row">
    <div class="col-md-3">
        <img class="img-thumbnail img-store" src="<?php echo htmlspecialchars(Catalog::getImage($serial['id'])); ?>" alt="">
    </div>
    <div class="col-md-9">
        <p>Жанр: <?php echo htmlspecialchars($serial['genre']); ?>.</p>
        <p>Кількість сезонів: <?php echo htmlspecialchars($serial['seasons']); ?>.</p>
        <p>Роки: <?php echo htmlspecialchars($serial['yearStart']); ?> - <?php echo htmlspecialchars($serial['yearFinish']); ?>.</p>
        <p><?php echo htmlspecialchars($serial['description']); ?></p>
    </div>
</div>

<?php foreach ($seasons as $season):?>
<hr/>
<div class="row">
    <div class="col-md-3">
        <h2>Сезон: <?php echo htmlspecialchars($season['seasonNum']); ?></h2>
        <p>Рік: <?php echo htmlspecialchars($season['year']); ?></p>
        <p>Серій: <?php echo htmlspecialchars($season['episodes']); ?></p>
    </div>
    <div class="col-md-9">
        <p><?php echo htmlspecialchars($season['description']); ?></p>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <?php foreach ($episodes as $episode): ?>
            <?php if ($episode['seasonId'] == $season['id']): ?>
                <a href="/episode/<?php echo htmlspecialchars($episode['id']); ?>" class="episode"> 
                    Серія <?php echo htmlspecialchars($episode['episodNum']); ?> | <?php echo htmlspecialchars($episode['name']); ?> 
                </a>
            <?php endif; ?>
        <?php endforeach; ?>
    </div>
</div>
<?php endforeach; ?>

<?php require_once(ROOT . '/views/layouts/footer.php'); ?>