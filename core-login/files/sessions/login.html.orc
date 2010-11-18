<h3>Login</h3>

<?= $form->form_for('sessions/create', array('method' => 'post', 'name' => 'sessions-create')); ?>
  
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