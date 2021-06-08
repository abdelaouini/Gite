<?php
class Gite{
  
    // database connection and table name
    private $conn;
    private $table_name = "gite";
  
    // object properties
    public $id_gite;
    public $name;
    public $image_rect_1;
    public $image_rect_2;
    public $image_rect_3;
    public $image_carre;
    public $localisation;
    public $description;
    public $spec;
    public $nbr_couchage;
    public $prix;
    public $categorie;
  
    public function __construct($pdo){
        $this->conn=$pdo;
    }
  
    // lecture 
    function readAll(){
  
        $query = "SELECT * FROM " . $this->table_name;
      
        $stmt = $this->conn->prepare( $query );
        $stmt->execute();
      
        return $stmt;
      }
  
}