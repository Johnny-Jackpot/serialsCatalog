<?php
require_once(ROOT . '/views/layouts/adminHeader.php');
require_once(ROOT . '/views/layouts/adminControls.php');
?>

<div class='row'>
    <div class="col-md-6 col-md-offset-3">
        <h4 style="text-align: center;">Додати серію</h4>
        <?php if (isset($errors) && !empty($errors)): ?>
            <?php foreach ($errors as $error): ?>
                <div class="alert alert-danger" role="alert"><?php echo htmlspecialchars($error); ?></div>
            <?php endforeach; ?>
        <?php endif; ?>
        <form method="post" >
            <div class="form-group">
                <div class="row">
                    <div class="col-md-4">
                        <label for="episodNum">Номер серії:</label>
                        <input name="episodNum" id="episodNum" type="text" 
                               class="form-control"
                               placeholder="Номер серії"
                               value="<?php echo htmlspecialchars($fields['episodNum']); ?>" 
                               required/>
                    </div>
                    <div class="col-md-4">
                        <label for="name">Назва серії:</label>
                        <input name="name" id="name" type="text" 
                               class="form-control"
                               placeholder="Назва серії"
                               value="<?php echo htmlspecialchars($fields['name']); ?>" 
                               required/>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="description">Опис серії:</label>
                <textarea name="description" id="description" 
                          class="form-control" rows="5" 
                          placeholder="Опис серії"
                          required><?php echo htmlspecialchars($fields['description']); ?></textarea>
            </div>
            <input type="submit" class="btn btn-default" name="submit" 
                   value="Додати" />
        </form>
    </div>
</div>

<?php
require_once(ROOT . '/views/layouts/adminFooter.php');