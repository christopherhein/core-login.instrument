<h3>Users</h3>

<dl>
<?php foreach($users as $user): ?>
  <dt><?= $helpers->a('/users/'.$user['User']['id'], '<h2>'.$user['User']['name'].'</h2>', array('class' => 'users')); ?></dt>
  <dd><?= $helpers->a('/users/'.$user['User']['id'].'/edit', 'Edit User'); ?></dd>
  <dd><?= $helpers->a('/users/'.$user['User']['id'].'/destroy', 'Delete User'); ?></dd>
<?php endforeach; ?>
</dl>

<?= $helpers->a('users/new_item', 'New User'); ?>