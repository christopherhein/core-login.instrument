<?= $form->form_for('users/create', array('method' => 'post', 'name' => 'users-create')); ?>
  
  <label> Username:
    <?= $form->input(array('type' => 'text', 'name' => 'name', 'placeholder' => 'Enter username', 'size' => '40')); ?>
  </label>
  <br/>
  <label> Password:
    <?= $form->input(array('type' => 'password', 'name' => 'password', 'placeholder' => 'Enter password', 'size' => '40')); ?>
  </label>
  <br/>
  <?= $form->input(array('type' => 'submit', 'name' => 'submit', 'value' => 'Submit')); ?>
  
<?= $form->endform(); ?>