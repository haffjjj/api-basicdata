<?php 

class config
{
	private $dbDriver = "mysql"; 		//driver
	private $host = "localhost"; 		//hostname
	private $username = "root"; 		//username
	private $password = ""; 			//password
	private $database = "basicdata";	//dbname
	protected $connection;
	public function __construct(){

		// try{
		$this->connection = new PDO($this->dbDriver.':host='.$this->host.';dbname='.$this->database,$this->username,$this->password);
		// $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	// 	// }
	// 	catch (PDOException $e){
    //     	die("Koneksi error: " . $e->getMessage());
    // 	}
	}
}

class core extends config
{

	public $table; //table
	public $where = null; // WHERE exmpl = ?,?
	public $data = null; // [?,?]
	public $values = null; // [?,?]
	public $option = null; //add custom sql

    public function read(){
        $query = "SELECT * FROM $this->table $this->where $this->option";
		$result = $this->connection->prepare($query);
		$result->execute($this->data);
        return  $result->fetchAll();
	}

	public function count(){
		$query = "SELECT * FROM $this->table $this->where";
		$result = $this->connection->prepare($query);
		$result->execute($this->data);
        return  $result->rowCount();
	}

	public function insert(){
		$query = "INSERT INTO $this->table VALUES($this->values)";
		$result = $this->connection->prepare($query);
		$result->execute($this->data);
	}
}

$core = new core();

//jondesCode
?>