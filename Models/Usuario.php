<?php
	//classe de apostas que representa a tabela de usuarios no banco de dados
	class Usuario
	{
		public $id;
		public $nome;
		public $email;
		public $senha;

		public function __get($atributo){
			return $this->$atributo;
		}
		public function __set($atributo,$valor){
			return $this->$atributo=$valor;
		}
	}
?>