<?php
	//classe de conexão com o banco de dados através do PDO

	class Conexao{
		private $host='localhost';//nome do host
		private $dbname='nome_do_banco';//nome do banco de dados
		private $user='root';//nome do usuario do banco
		private $pass= '';//senha 
		public function conectar(){
			try{

				$conexao=new PDO(
					"mysql:host=$this->host;dbname=$this->dbname",
					"$this->user",
					"$this->pass");
				return $conexao;
			}catch(PDOException $e){
				echo '<p>'.$e->getMessege().'</p>';
			}
		}
	}


?>