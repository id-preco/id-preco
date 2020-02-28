<?php
	//classe contém as regras de negocio referente ao modelo de usuario
	class UsuarioService{

		public $usuario;
		public $conexao;

		public function __construct(Usuario $usuario,Conexao $conexao){
			$this->usuario=$usuario;
			$this->conexao=$conexao->conectar();
		}		
		
	}
?>