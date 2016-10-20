<?php
require_once(ROOT . '/views/layouts/adminHeader.php');
require_once(ROOT . '/views/layouts/adminControls.php');
?>

<a href="/admin/createSerial" class="btn btn-default back">Додати серіал</a>

<h4 style="text-align: center;">Список серіалів</h4>

<br/>

<table class="table-bordered table-striped table">
    <tr>
        <th>ID серіалу</th>
        <th>Назва</th>
        <th>Жанр</th>
        <th>Сезонів</th>
        <th>Серій</th>
        <th>Початок показів</th>
        <th>Кінець показів</th>
    </tr>
    <?php foreach ($serials as $serial): ?>
        <tr>
            <td><?php echo htmlspecialchars($serial['id']); ?></td>
            <td>
                <a href="/admin/seasons/<?php echo htmlspecialchars($serial['id']); ?>">
                    <?php echo htmlspecialchars($serial['name']); ?>
                </a>
            </td>
            <td><?php echo htmlspecialchars($serial['genre']); ?></td>
            <td><?php echo htmlspecialchars($serial['seasons']); ?></td>
            <td><?php echo htmlspecialchars($serial['episodes']); ?></td>
            <td><?php echo htmlspecialchars($serial['yearStart']); ?></td>
            <td><?php echo htmlspecialchars($serial['yearFinish']); ?></td>
        </tr>
    <?php endforeach; ?>
</table>

<?php
require_once(ROOT . '/views/layouts/adminFooter.php');





