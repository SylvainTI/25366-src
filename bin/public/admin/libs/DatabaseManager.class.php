<?php
# 05/08/2008 18:28
# ©2009 thierrypoinot.com	
class DatabaseManager extends PDO {
	private static $instance;
	public function __construct($dsn, $user = '', $password = '', $encoding = null) {
		try{
			parent::__construct($dsn, $user, $password);
			if ($encoding != null) {
				$query = $this->prepare('SET CHARACTER SET ?'); // défini l'encodage de la transmission des données (requête)
				$query->execute(array($encoding));
			}
		}catch( PDOException $e ){
			echo 'Erreur : '.$e->getMessage().'<br />';
			echo 'N° : '.$e->getCode();
		}
	}
	public static function getInstance($dsn = null, $user = null, $password = null, $encoding = null) {
		if (!isset(self::$instance)) {
			$class = __CLASS__;
			self::$instance = new $class($dsn, $user, $password, $encoding);
		}
		return self::$instance;
	}
}
