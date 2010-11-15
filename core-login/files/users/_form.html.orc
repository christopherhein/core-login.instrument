<?= $helpers->form_for('users/create', array('method' => 'post', 'name' => 'users-create')); ?>
  
  <label> Username:
    <?= $helpers->input(array('type' => 'text', 'name' => 'name', 'placeholder' => 'Enter username', 'size' => '40')); ?>
  </label>
  <br/>
  <label> Password:
    <?= $helpers->input(array('type' => 'password', 'name' => 'password', 'placeholder' => 'Enter password', 'size' => '40')); ?>
  </label>
  <br/>
  <?= $helpers->input(array('type' => 'submit', 'name' => 'submit', 'value' => 'Submit')); ?>
  
<?= $helpers->endform(); ?>