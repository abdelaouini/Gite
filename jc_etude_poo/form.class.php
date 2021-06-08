<?php
class Form{
    //prend les données du $from sous la form d'un tableau
    private $data;
    //element qui entour pour eviter un echo
    public $surround='p';

    private function surround($html){
        //pour que la variable soit interprété dans les double quote {on place le $this}
        return "<{$this->surround}>{$html}</{$this->surround}>";
    }

    //un tableau vide sinon cela déclenche une erreur
    public function __construct($data=array()){
        $this->data=$data;
    }

    // pour la value 
    private function getValue($index){
        // si $this->data[$index] existe on retourne  $this->data[$index] (:)sinon null
        return isset($this->data[$index]) ? $this->data[$index] : null;
    }

    public function inputName($name){
        return $this->surround (
            //remplir le user name renseigner dans l'instance $form =new form de form.php
            //pour la value
            '<input type="text" name="'.$name.'"
            value="' . $this->getValue($name) . '">'
        );
    }

    public function inputPassword($password){
        return $this->surround ('<input type="password" name="'.$password.'">');
    }

    public function submit(){
        return $this->surround ('<button type="submit">Envoyer</button>');
    }

}