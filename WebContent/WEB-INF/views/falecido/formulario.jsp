<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="pt-br" contentType="text/html; charset=utf-8">
<head>
    <!-- Bootstrap Core CSS -->
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" >
    <link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../resources/css/contratante.css" rel="stylesheet"/>
    <link href="../resources/css/form_style.css" rel="stylesheet"/>
    <link href="../resources/css/barra_progresso.css" rel="stylesheet"/>

</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container" id="cabecalho">
            <a class="navbar-brand" href="#">Hades - Sistema Funerário</a>
            <p class="navbar-text navbar-right">Usuário: <a href="#" class="navbar-link">João da Silva</a></p>
        </div>
    </nav>
    <div class="caixa_barra_progresso" id="barra_de_progresso">
<ul class="barra_progresso">
            <li class="visited first col-sm-2">Filtro de Processos</li>
            <li class="previous visited col-sm-2">Cadastro de Contratante</li>
            <li class="active col-sm-2">Cadastro de Falecido</li>
            <li class="next col-sm-2">Dados do Óbito</li>
            <li class="col-sm-2">Escolha de Produtos</li>
            <li class="col-sm-2">Emissão de Notas</li>
        </ul>
    </div>
    <form action="salvar" method="POST">
	    <div class="container" id="formulario-dados-pessoais">
	        <div class="row col-md-12">
	            <div class="col-md-12">
	                <div class="shadow">
	                    <div class="over-shadow">
	                        <div id="dadosPessoais">
	                            <h1 class="titulo_caixa">Dados pessoais</h1>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Nome completo</label>
                                            <input  class="form-control" name="nomeCompleto" id="nomeCompleto" placeholder="Nome Completo">
                                        </div>
                                    </div>                        
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Naturalidade</label>
                                            <input  class="form-control" name="naturalidade" id="naturalidade" placeholder="Naturalidade">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Profissão</label>
                                            <input  class="form-control" name="profissao" id="profissao" placeholder="Profissão">
                                        </div>
                                    </div>                        
                                </div>
                                <div class="row">
                                	<div class="col-sm-2">
                                        <div class="form-group">
                                            <label>Documento</label>
                                            <select  class="form-control" name="documento" id="documento">
                                            	<option>RG</option>
                                            	<option>RNE</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label>Número</label>
                                            <input class="form-control" name="numeroDocumento" id="numeroDocumento" placeholder="Número do Documento">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>CPF</label>
                                            <input class="form-control " name="cpf" id="cpf" placeholder="CPF" onkeypress="mascara(this,cpf_mask)" maxlength="14">
                                        </div>
                                    </div>                        
                                </div>
                                <div class="row">
                                    <div class="col-md-1">
                                        <div class="form-group">
                                            <label>Sexo</label>
                                            <select  class="form-control" name="sexo" id="sexo">
                                            	<option>M</option>
                                            	<option>F</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <label>Data de Nascimento</label>
                                            <input  class="form-control" name="dataNascimento" id="dataNascimento"  placeholder="01/01/1900" onkeypress="mascara(this,data_mask)">
                                        </div>
                                    </div>
                                    <div class="col-sm-1">
                                        <div class="form-group">
                                            <label>Idade</label>
                                            <input  class="form-control" name="idade" id="idade"  placeholder="Idade">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Estado Civil</label>
                                            <select  class="form-control" name="estadoCivil" id="estadoCivil">
                                            	<option>Solteiro</option>
                                            	<option>Casado</option>
                                            	<option>Divorciado</option>
                                            	<option>Viuvo</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Cor</label>
                                            <select  class="form-control" name="cor" id="cor">
                                            	<option>Branca</option>
                                            	<option>Parda</option>
                                            	<option>Preta</option>
                                            	<option>Amarela</option>
                                            	<option>Indigena</option>
                                            	<option>Desconhecida</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
	                        </div>
	                    </div>
	                </div>
	            </div>    
	        </div>
	        <div class="row col-md-12">
	            <div class="col-md-7">
	                <div class="shadow">
	                    <div class="over-shadow">
	                        <h1 class="titulo_caixa">Endereço</h1>
	                        <div class="row">
	                        	<div class="col-sm-9">
	                            	<div class="form-group">
	                                	<label>CEP</label>
	                                    <input  class="form-control" name="cep" id="cep"  placeholder="CEP" onkeypress="mascara(this,cep_mask)" maxlength="9">
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row">
	                        	<div class="col-sm-9">
	                            	<div class="form-group">
	                                	<label>Endereço</label>
	                                    <input  class="form-control" name="endereco" id="endereco" placeholder="Endereço">
	                                </div>
	                            </div>
	                            <div class="col-sm-3">
	                        	    <div class="form-group">
	                            	    <label>Número</label>
	                                    <input type="number" class="form-control" name="numeroEndereco" id="numeroEndereco" placeholder="nº">
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row">
	                        	<div class="col-sm-6">
	                            	<div class="form-group">
	                                	<label>Complemento</label>
	                                	<input  class="form-control" name="complementoEndereco" id="complementoEndereco" placeholder="Complemento">
	                                </div>
	                            </div>
	                            <div class="col-sm-6">
	                            	<div class="form-group">
	                                	<label>Bairro</label>
	                                    <input  class="form-control" name="bairro" id="bairro" placeholder="Bairro">
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row">
	                            <div class="col-sm-9">
	                            	<div class="form-group">
	                                	<label>Cidade</label>
	                                    <input  class="form-control" name="cidade" id="cidade" placeholder="Cidade">
	                                </div>
	                            </div>
	                    		<div class="col-sm-3">
	                            	<div class="form-group">
	                                	<label>UF</label>
	                                    <select name="estado" id="estado" class="form-control">
	                                    <!--Adicionar estados com o controler-->
	                                    	<option>AC</option>
	                                        <option>AL</option>
	                                        <option>AM</option>
	                                        <option>AP</option>
	                                        <option>BA</option>
	                                        <option>CE</option>
	                                        <option>DF</option>
	                                        <option>ES</option>
	                                        <option>GO</option>
	                                        <option>MA</option>
	                                        <option>MG</option>
	                                        <option>MS</option>
	                                        <option>MT</option>
	                                        <option>PA</option>
	                                        <option>PB</option>
	                                        <option>PE</option>
	                                        <option>PI</option>
	                                        <option>PR</option>
	                                        <option>RJ</option>
	                                        <option>RN</option>
	                                        <option>RO</option>
	                                        <option>RR</option>
	                                        <option>RS</option>
	                                        <option>SC</option>
	                                        <option>SE</option>
	                                        <option>SP</option>
	                                        <option>TO</option>
	                                    </select>
	                                </div>
	                            </div>
	                       </div>
	                    </div>
	                </div>
	            </div>
	            <div class="col-md-5">
	                <div class="shadow">
	                    <div class="over-shadow">
	                        <h1 class="titulo_caixa">Informações Adicionais</h1>
	                            <div class="row">
	                                <div class="col-sm-6">
	                                    <div class="form-group">
	                                        <label>Altura(m)</label>
	                                        <input  class="form-control" name="altura" id="altura" placeholder="Altura" maxlength="4">
	                                    </div>
	                                </div>
	                                <div class="col-sm-6">
	                                    <div class="form-group">
	                                        <label>Peso(kg)</label>
	                                        <input  class="form-control" name="peso" id="peso" placeholder="Peso" maxlength="6">
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="row">
	                            	<div class="col-sm-4">
	                                    <div class="form-group">
                                            <label>Bens a inventariar</label>
                                            <select  class="form-control" name="bensAInventariar" id="bensAInventariar">
                                            	<option>Sim</option>
                                            	<option>Não</option>
                                            </select>
                                        </div>
	                                </div>
	                                <div class="col-sm-4">
	                                    <div class="form-group">
                                            <label>Deixa Testamento</label>
                                            <select  class="form-control" name="testamento" id="testamento">
                                            	<option>Sim</option>
                                            	<option>Não</option>
                                            </select>
                                        </div>
	                                </div>
	                                <div class="col-sm-4">
	                                    <div class="form-group" style="margin-top:17%">
                                            <label>Deixa Filhos</label>
                                            <select  class="form-control" name="deixaFilhos" id="deixaFilhos">
                                            	<option>Sim</option>
                                            	<option>Não</option>
                                            </select>
                                        </div>
	                                </div>
	                          </div>
	                            <div class="row">
	                                <div class="col-sm-4">
	                                    <div class="form-group">
                                            <label>Marca Passo</label>
                                            <select  class="form-control" name="marcaPasso" id="marcaPasso">
                                            	<option>Sim</option>
                                            	<option>Não</option>
                                            </select>
                                        </div>
	                                </div>
	                                <div class="col-sm-4">
	                                    <div class="form-group">
                                            <label>Eleitor</label>
                                            <select  class="form-control" name="eleitor" id="eleitor">
                                            	<option>Sim</option>
                                            	<option>Não</option>
                                            </select>
                                        </div>
	                                </div>
	                                <div class="col-sm-4">
	                                    <div class="form-group">
                                            <label>Reservista</label>
                                            <select  class="form-control" name="reservista" id="reservista">
                                            	<option>Sim</option>
                                            	<option>Não</option>
                                            </select>
                                        </div>
	                                </div>
	                            </div>
	                            <div class="row">
	                            	<div class="col-sm-4">
	                                    <div class="form-group">
                                            <label>INSS</label>
                                            <select  class="form-control" name="inss" id="inss">
                                            	<option>Sim</option>
                                            	<option>Não</option>
                                            </select>
                                        </div>
	                                </div>
	                                <div class="col-sm-8">
	                                    <div class="form-group">
	                                        <label>Nº Beneficio</label>
	                                        <input class="form-control" name="nBeneficio" id="nBeneficio" placeholder="Nº Beneficio">
	                                    </div>
	                                </div>
	                            </div>
                            </div>
	                    </div>
	                </div>
	            </div>
	            <div class="row col-md-12">
		            <div class="col-md-12">
		                <div class="shadow">
		                    <div class="over-shadow">
		                        <div id="dadosPais">
		                            <h1 class="titulo_caixa">Dados dos Pais</h1>
	                                <div class="row">
	                                    <div class="col-sm-6">
	                                        <div class="form-group">
	                                            <label>Nome da mãe</label>
	                                            <input  class="form-control" name="nomeDaMae" id="nomeDaMae" placeholder="Nome da mãe">
	                                        </div>
	                                    </div>
	                                    <div class="col-md-3">
	                                        <div class="form-group">
	                                            <label>Estado Civil</label>
	                                            <select  class="form-control" name="estadoCivilMae" id="estadoCivilMae">
	                                            	<option>Solteiro</option>
	                                            	<option>Casado</option>
	                                            	<option>Divorciado</option>
	                                            	<option>Viuvo</option>
	                                            </select>
	                                        </div>
	                                    </div>
	                                    <div class="col-md-3">
	                                        <div class="form-group">
	                                           <label>Idade</label>
	                                           <input  class="form-control" name="idadeMae" id="idadeMae" placeholder="Idade">
	                                        </div>
	                                    </div>                        
	                                </div>
	                                <div class="row">
	                                    <div class="col-sm-6">
	                                        <div class="form-group">
	                                            <label>Naturalidade</label>
	                                            <input  class="form-control" name="naturalidadeMae" id="naturalidadeMae" placeholder="Naturalidade da Mãe">
	                                        </div>
	                                    </div>
	                                    <div class="col-sm-6">
	                                        <div class="form-group">
	                                            <label>Profissão</label>
	                                            <input  class="form-control" name="profissaoMae" id="profissaoMae" placeholder="Profissão da Mãe">
	                                        </div>
	                                    </div>                        
	                                </div>
	                                
	                                <div class="row">
	                                    <div class="col-sm-6">
	                                        <div class="form-group">
	                                            <label>Nome do Pai</label>
	                                            <input  class="form-control" name="nomeDoPai" id="nomeDoPai" placeholder="Nome do Pai">
	                                        </div>
	                                    </div>
	                                    <div class="col-md-3">
	                                        <div class="form-group">
	                                            <label>Estado Civil</label>
	                                            <select  class="form-control" name="estadoCivilPai" id="estadoCivilPai">
	                                            	<option>Solteiro</option>
	                                            	<option>Casado</option>
	                                            	<option>Divorciado</option>
	                                            	<option>Viuvo</option>
	                                            </select>
	                                        </div>
	                                    </div>
	                                    <div class="col-md-3">
	                                        <div class="form-group">
	                                           <label>Idade</label>
	                                           <input  class="form-control" name="idadePai" id="idadePai" placeholder="Idade">
	                                        </div>
	                                    </div>                        
	                                </div>
	                                <div class="row">
	                                    <div class="col-sm-6">
	                                        <div class="form-group">
	                                            <label>Naturalidade</label>
	                                            <input  class="form-control" name="naturalidadePai" id="naturalidadePai" placeholder="Naturalidade do Pai">
	                                        </div>
	                                    </div>
	                                    <div class="col-sm-6">
	                                        <div class="form-group">
	                                            <label>Profissão</label>
	                                            <input  class="form-control" name="profissaoPai" id="profissaoPai" placeholder="Profissão do Pai">
	                                        </div>
	                                    </div>                        
	                                </div>
		                        </div>
		                    </div>
	                    </div>
	                </div>
	            </div>    
	        </div>
	        <div class="row col-md-12" id="botoes-navegacao">
	            <div class="col-xs-12">
	                <button type="button" class="col-xs-1 btn btn-default" style="visibility:hidden"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span></button>
	                <button type="button" class="col-xs-offset-4 col-xs-2 btn btn-default">Cancelar</button>
	                <input type="submit" class="col-xs-offset-4 col-xs-1 btn btn-default"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></button>
	            </div>
	        </div>
	    </div>
    </form>
</body>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="https://raw.github.com/digitalBush/jquery.maskedinput/1.3.1/dist/jquery.maskedinput.min.js"></script>
<script type="text/javascript" src="../resources/js/Util.js"></script>
</html>