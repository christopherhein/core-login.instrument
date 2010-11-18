<h3>Edit: <?= $user['User']['name'] ?></h3>

<?= $form->form_for('users/update', array('method' => 'post', 'name' => 'user-edit')); ?>
  
  <label> Username:
    <?= $form->input(array('type' => 'text', 'name' => 'name', 'placeholder' => 'Enter username', 'size' => '40', 'value' => $user['User']['name'])); ?>
  </label>
  <br/>
  <label> Password:
    <?= $form->input(array('type' => 'password', 'name' => 'password', 'placeholder' => 'Enter password', 'size' => '40')); ?>
  </label>
  <br/>
  
  <?= $form->input(array('type' => 'hidden', 'name' => 'id', 'value' => $user['User']['id'])); ?>
  <?= $form->input(array('type' => 'submit', 'name' => 'submit', 'value' => 'Submit')); ?>
  
<?= $form->endform(); ?>