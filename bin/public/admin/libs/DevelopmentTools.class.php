<?php
# Classe d'aide au développement
# 02/07/2009 12:25
# ©2009 thierrypoinot.com	
class DevelopmentTools {
	public function __construct() {
		
	}
	public static function print_var_structure(&$var, $return = false, $nl2br = false) { 
		ob_start();
			var_dump($var);
			$str = ob_get_contents();
		ob_end_clean();
		if ($nl2br) $str = nl2br($str); 
		else $str = '<pre>'.$str.'</pre>'; 
		
		if (!$return) echo $str; 
		else return $str;
	}
	public static function parseInt($string) {
		return intval($string);
		if(preg_match('/(\d+)/', $string, $array)) {
			return $array[1];
		} else {
			return 0;
		}
	}

	public static function base2dec ($res, $base, $str='0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_-') {
		if ($base < 1) {
			new Error('Impossible de générer une base inférieure à 1', true);
			return false;
		}
		if ($base > strlen($str)) {
			new Error('Pas assez de caractère pour générer une base '.$base, true);
			return false;
		}
		if ($res == 0) return 0;
		$decimal = 0;
		$caracteres = $str;
		for($i = 0; $i < strlen($res); $i++) {
			for($n = 0; $n < $base; $n++) {
				if($caracteres{$n} === $res{$i}) {
					$decimal += DevelopmentTools::parseInt($n * pow($base,(strlen($res)-1-$i)));
				}
			}
		}
		$dec = $decimal;
		return $dec;
	}
	public static function dec2base ($dec, $base, $str='0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_-') {
		if ($base < 1) {
			new Error('Impossible de générer une base inférieure à 1', true);
			return false;
		}
		if ($base > strlen($str)) {
			new Error('Pas assez de caractère pour générer une base '.$base, true);
			return false;
		}
		if ($dec == 0) return 0;
		$exposant = 0;
		$table = array();
		for($n = 0; DevelopmentTools::parseInt($dec/(pow($base,$n))) != 0; $n++) {
			if(DevelopmentTools::parseInt($dec/(pow($base,($n+1)))) == "0"){
				$exposant = ($n + 1);
			}
		}
		for($i = 0; $i < $exposant; $i++) {
			$table[$i] = DevelopmentTools::parseInt(($dec/pow($base,$i)) % $base);
		}
		$res = "";
		for($z = (count($table) - 1); $z >= 0; $z--)
		{
			$res .= $str{$table[$z]}."";
		}
		return $res;
	}
	
	public static function base_convert ($val, $baseInput, $baseOutput, $str='0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_-') {
		if ($baseInput < 1 || $baseOutput < 1) {
			new Error('Impossible de générer une base inférieure à 1', true);
			return false;
		}
		if ($baseInput > strlen($str) || $baseOutput > strlen($str)) {
			new Error('Pas assez de caractère pour générer la base', true);
			return false;
		}
		if ($val === 0) return 0;
		if ($val === 1) return 1;
		if ($baseInput == 10) {
			return DevelopmentTools::dec2base($val, $baseOutput, $str);
		}
		if ($baseOutput == 10) {
			return DevelopmentTools::base2dec($val, $baseInput, $str);
		}
		$dec = DevelopmentTools::dec2base($val, $baseInput, $str);
		return DevelopmentTools::base2dec($dec, $baseOutput, $str);
	}
}