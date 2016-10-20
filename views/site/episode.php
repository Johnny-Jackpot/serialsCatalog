<?php require_once(ROOT . '/views/layouts/header.php'); ?>
<!-- Page Heading -->
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">
            <?php echo htmlspecialchars($serial['name']); ?> 
            <small>
                Серія <?php echo htmlspecialchars($episode['episodNum'] . ': ' . $episode['name']); ?>
            </small> 
        </h1>
    </div>
</div>
<!-- /.row -->
<div class="row">
    <div class="col-md-3">
        <img class="img-thumbnail img-store" src="<?php echo htmlspecialchars(Catalog::getImage($serial['id'])); ?>" alt="">
    </div>
    <div class="col-md-9">
        <p><?php echo htmlspecialchars($episode['description']); ?></p>
    </div>
</div>


<?php require_once(ROOT . '/views/layouts/footer.php'); ?>