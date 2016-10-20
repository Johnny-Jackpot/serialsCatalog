<?php require_once(ROOT . '/views/layouts/header.php'); ?>
<!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Серіали </h1>
                </div>
            </div>
            <!-- /.row -->


<?php for ($i = 0; $i < count($catalog); $i++): ?>
    <?php if ($i % 4 === 0) { echo '<div class="row">'; } ?>
        <div class="col-md-3 portfolio-item">
            <a href="serial/<?php echo htmlspecialchars($catalog[$i]['id']); ?>">
                <img class="img-thumbnail img-store" 
                     src="<?php echo htmlspecialchars(Catalog::getImage($catalog[$i]['id'])); ?>" 
                     alt="">
                <h4><?php echo htmlspecialchars($catalog[$i]['name']); ?></h4>
            </a>
        </div>
    <?php if (($i + 1) % 4 === 0) { echo '</div>'; } ?>
<?php endfor; ?>
<hr>

<?php require_once(ROOT . '/views/layouts/footer.php'); ?>