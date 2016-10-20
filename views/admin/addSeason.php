<?php
require_once(ROOT . '/views/layouts/adminHeader.php');
require_once(ROOT . '/views/layouts/adminControls.php');
?>

<div class='row'>
    <div class="col-md-6 col-md-offset-3">
        <h4 style="text-align: center;">Додати сезон</h4>
        <?php if (isset($errors) && !empty($errors)): ?>
            <?php foreach ($errors as $error): ?>
                <div class="alert alert-danger" role="alert"><?php echo htmlspecialchars($error); ?></div>
            <?php endforeach; ?>
        <?php endif; ?>
        <form method="post" >
            <div class="form-group">
                <div class="row">
                    <div class="col-md-4">
                        <label for="seasonNum">Номер сезону:</label>
                        <input name="seasonNum" id="seasonNum" type="text" 
                               class="form-control"
                               placeholder="Номер сезону"
                               value="<?php echo htmlspecialchars($fields['seasonNum']); ?>" 
                               required/>
                    </div>
                    <div class="col-md-4">
                        <label for="episodes">Серій:</label>
                        <input name="episodes" id="episodes" type="text" 
                               class="form-control"
                               placeholder="Кількість серій"
                               value="<?php echo htmlspecialchars($fields['episodes']); ?>" 
                               required/>
                    </div>
                    <div class="col-md-4">
                        <label for="year">Рік:</label>
                        <input name="year" id="year" type="text" 
                               class="form-control"
                               placeholder="Рік"
                               value="<?php echo htmlspecialchars($fields['year']); ?>" 
                               required/>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="description">Опис сезону:</label>
                <textarea name="description" id="description" 
                          class="form-control" rows="5" 
                          placeholder="Опис сезону"
                          required><?php echo htmlspecialchars($fields['description']); ?></textarea>
            </div>
            <input type="submit" class="btn btn-default" name="submit" 
                   value="Додати" />
        </form>
    </div>
</div>

<?php
require_once(ROOT . '/views/layouts/adminFooter.php');