<dl>
  <dt><h3>User: <?= $user['User']['name'] ?></h3></dt>
  <dd><p>Hashed_Password: <?= $user['User']['hashed_password'] ?></p></dd>
  <dd><p>Salt: <?= $user['User']['salt'] ?></p></dd>
  <dd><?= $helpers->a('/users/'.$user['User']['id'].'/edit', 'Edit User'); ?></dd>
  <dd><?= $helpers->a('/users/'.$user['User']['id'].'/destroy', 'Delete User'); ?></dd>
</dl>