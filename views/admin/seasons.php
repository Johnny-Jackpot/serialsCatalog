<?php
require_once(ROOT . '/views/layouts/adminHeader.php');
require_once(ROOT . '/views/layouts/adminControls.php');
?>

<a href="/admin/addSeason/<?php echo htmlspecialchars($serial['id']); ?>" 
   class="btn btn-default back">Додати сезон</a>

<h4 style="text-align: center;"><?php echo htmlspecialchars($serial['name']); ?> | Список сезонів</h4>

<br/>

<table class="table-bordered table-striped table">
    <tr>
        <th>ID сезону</th>
        <th>Номер сезону</th>
        <th>Серій</th>
        <th>Рік</th>
    </tr>
    <?php foreach ($seasons as $season): ?>
        <tr>
            <td><?php echo htmlspecialchars($season['id']); ?></td>
            <td>
                <a href="/admin/episodes/<?php echo htmlspecialchars($season['id']); ?>">
                    <?php echo htmlspecialchars($season['seasonNum']); ?>
                </a>
            </td>
            <td><?php echo htmlspecialchars($season['episodes']); ?></td>
            <td><?php echo htmlspecialchars($season['year']); ?></td>
        </tr>
    <?php endforeach; ?>
</table>

<?php
require_once(ROOT . '/views/layouts/adminFooter.php');





