<?php
//l'idée 
require 'form.class.php';

// $form=new Form(array(
//     'username'=>'roger'
// ));

$form =new Form($_POST);

// var_dump($form);
// echo $form->input('username');
// echo $form->input('password');
// echo $form->submit();
?>

<form action="#" method="POST">
<?php
    echo $form->inputName('username');
    echo $form->inputPassword('password');
    echo $form->submit();
?>
</form>