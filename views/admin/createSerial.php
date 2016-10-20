<?php
require_once(ROOT . '/views/layouts/adminHeader.php');
require_once(ROOT . '/views/layouts/adminControls.php');
?>

<div class='row'>
    <div class="col-md-6 col-md-offset-3">
        <h4 style="text-align: center;">Додати серіал</h4>
        <?php if (isset($errors) && !empty($errors)): ?>
            <?php foreach ($errors as $error): ?>
                <div class="alert alert-danger" role="alert"><?php echo htmlspecialchars($error); ?></div>
            <?php endforeach; ?>
        <?php endif; ?>
        <form method="post" action="/admin/createSerial" enctype="multipart/form-data">
            <div class="form-group">
                <label for="name">Назва серіалу:</label>
                <input name="name" id="name" type="text" class="form-control"
                       placeholder="Назва серіалу"
                       value="<?php echo htmlspecialchars($fields['name']); ?>"
                       required/>
            </div>
            <div class="form-group">
                <label for="description">Опис серіалу:</label>
                <textarea name="description" id="description" 
                          class="form-control" rows="5" 
                          placeholder="Опис серіалу"
                          required><?php echo htmlspecialchars($fields['description']); ?></textarea>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-4">
                        <label for="seasons">Cезонів:</label>
                        <input name="seasons" id="seasons" type="text" 
                               class="form-control"
                               placeholder="Кількість сезонів"
                               value="<?php echo htmlspecialchars($fields['seasons']); ?>" 
                               required/>
                    </div>
                    <div class="col-md-4">
                        <label for="episodes">Епізодів:</label>
                        <input name="episodes" id="episodes" type="text" 
                               class="form-control"
                               placeholder="Кількість епізодів" 
                               value="<?php echo htmlspecialchars($fields['episodes']); ?>"
                               required/>
                    </div>
                    <div class="col-md-4">
                        <label for="genre">Жанр:</label>
                        <input name="genre" id="genre" type="text" 
                               class="form-control"
                               placeholder="Жанр" 
                               value="<?php echo htmlspecialchars($fields['genre']); ?>"
                               required/>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        <label for="yearStart">Початок показів:</label>
                        <input name="yearStart" id="yearStart" type="text" 
                               class="form-control"
                               placeholder="Початок показів"
                               value="<?php echo htmlspecialchars($fields['yearStart']); ?>" 
                               required/>
                    </div>
                    <div class="col-md-6">
                        <label for="yearFinish">Кінець показів:</label>
                        <input name="yearFinish" id="yearFinish" type="text" 
                               class="form-control"
                               placeholder="Кінець показів"
                               value="<?php echo htmlspecialchars($fields['yearFinish']); ?>" 
                               required/>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-12">
                        <label for="image">Зображення:</label>
                        <input type="hidden" name="MAX_FILE_SIZE" value="100000" />
                        <input name="image" id="image" type="file" 
                               class="form-control upload-image"
                               />
                    </div>
                </div>
            </div>
            <input type="submit" class="btn btn-default" name="submit" 
                   value="Додати" />
        </form>
    </div>
</div>

<?php
require_once(ROOT . '/views/layouts/adminFooter.php');
