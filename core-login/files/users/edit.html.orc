<h3>Edit: <?= $user['User']['name'] ?></h3>

<?= $helpers->form_for('users/update', array('method' => 'post', 'name' => 'user-edit')); ?>
  
  <label> Username:
    <?= $helpers->input(array('type' => 'text', 'name' => 'name', 'placeholder' => 'Enter username', 'size' => '40', 'value' => $user['User']['name'])); ?>
  </label>
  <br/>
  <label> Password:
    <?= $helpers->input(array('type' => 'password', 'name' => 'password', 'placeholder' => 'Enter password', 'size' => '40')); ?>
  </label>
  <br/>
  
  <?= $helpers->input(array('type' => 'hidden', 'name' => 'id', 'value' => $user['User']['id'])); ?>
  <?= $helpers->input(array('type' => 'submit', 'name' => 'submit', 'value' => 'Submit')); ?>
  
<?= $helpers->endform(); ?>