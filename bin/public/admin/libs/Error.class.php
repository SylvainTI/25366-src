<?php
# Classe de gestion d'erreur
# 02/07/2009 12:22 
# ©2009 thierrypoinot.com	
# TODO : 
#   ajouter un script JS qui met en forme le code php du fichier qui a généré l'erreur
#   n'afficher que les 5 lignes autour de l'erreur
#   proposer d'afficher la source complète du fichier
#   ne proposer ses options que si le script est exécuté depuis localhost
class Error extends Exception{
	/**
	 * getCode() : Affiche le code d’erreur
     * getFile() : Affiche le fichier qui a levé l’exception
     * getLine() : Affiche la ligne où c’est produite l’erreur
     * getMessage() : Affiche le message d’erreur
     * getTrace(): Retourne un tableau avec les informations de l’erreur (fichier,ligne,fonction,classe,type)
     * getTraceAsString() : Retourne les mêmes résultats que précédent mais sous forme d’une chaine.
	**/
	private $errorLevel;
	
	public function __construct($message, $display = false){
		parent::__construct($message); // On appelle le constructeur de la classe Exception
		if ($display) echo $this->getMessage();
	//die(show_source($this->getFile(), true)); // affiche la source du fichier qui à généré l'erreur
	}
}
