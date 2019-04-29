<?php

if (!defined('BASEPATH')) {
	exit('No direct script access allowed');
}

if (!function_exists('formatarData')) {

	//FORMATAR DATA PADRAO AMERICANO
	function formatarData($entrada) {
		$data = date('d/m/Y', strtotime($entrada));
		return $data;
	}

}

if (!function_exists('formatarDataInvertida')) {

	//FORMATAR DATA PADRAO AMERICANO ANOMÊSDIA
	function formatarDataInvertida($entrada) {
		$data = date('Ymd', strtotime(implode('-', array_reverse(explode('/', $entrada)))));
		return $data;
	}

}

if (!function_exists('dataInvertida')) {

	//FORMATAR DATA PADRAO AMERICANO ANO-MÊS-DIA
	function dataInvertida($entrada) {
		$data = date('Y-m-d', strtotime(implode('-', array_reverse(explode('/', $entrada)))));
		return $data;
	}

}

if (!function_exists('dataServ')) {

	//RETORNA DATA DO SERVIDOR
	function dataServ() {
		return date('d/m/Y');
	}

}

if (!function_exists('horaServ')) {

	//RETORNA HORA DO SERVIDOR
	function horaServ() {
		return date('H:i:s');
	}

}

if (!function_exists('nome_mes')) {

	function nome_mes($mes) {

		switch ($mes) {

		case "01":$mes = "JANEIRO";
			break;
		case "02":$mes = "FEVEREIRO";
			break;
		case "03":$mes = "MARÇO";
			break;
		case "04":$mes = "ABRIL";
			break;
		case "05":$mes = "MAIO";
			break;
		case "06":$mes = "JUNHO";
			break;
		case "07":$mes = "JULHO";
			break;
		case "08":$mes = "AGOSTO";
			break;
		case "09":$mes = "SETEMBRO";
			break;
		case "10":$mes = "OUTUBRO";
			break;
		case "11":$mes = "NOVEMBRO";
			break;
		case "12":$mes = "DEZEMBRO";
			break;
		}

		return $mes;
	}

}
