<?php
require_once(ROOT . '/views/layouts/adminHeader.php');
require_once(ROOT . '/views/layouts/adminControls.php');
?>


<a href="/admin/addEpisode/<?php echo htmlspecialchars($serial['serialId']); ?>/<?php echo htmlspecialchars($seasonId); ?>" 
   class="btn btn-default back">Додати серію</a>
<h4 style="text-align: center;">
    <?php echo htmlspecialchars($serial['serialName']); ?> | 
    сезон: <?php echo htmlspecialchars($season); ?>
</h4>
<br />

<table class="table-bordered table-striped table">
    <tr>
        <th>Номер серії</th>
        <th>ID</th>
        <th>Назва</th>
        <th>Опис</th>
    </tr>
    <?php foreach ($episodes as $episode): ?>
        <tr>
            <td><?php echo htmlspecialchars($episode['episodNum']); ?></td>
            <td><?php echo htmlspecialchars($episode['id']); ?></td>
            <td><?php echo htmlspecialchars($episode['name']); ?></td>
            <td><?php echo htmlspecialchars($episode['description']); ?></td>
        </tr>
    <?php endforeach; ?>
</table>

<?php
require_once(ROOT . '/views/layouts/adminFooter.php');