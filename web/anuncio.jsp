<%-- 
    Document   : anuncio
    Created on : 14/05/2021, 21:02:07
    Author     : Maria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ACADEMIA COPGEMINI</h1>
        <h1>Cadastro de Clientes</h1>
                
                <form action="anuncio-recebe-cadastrar.jsp" method="POST" onsubmit="return enviarForm()">
                    <p class="txt-verde txt-center p-block">Campos com Preenchimento Obrigatório <span class="asterisco">*</span></p>
                    
                    <div class="form-grupo">
                        <label>Nome do Anuncio <span class="asterisco">*</span></label>
                        <input class="form-campo" type="text" name="nome"/>
                        <div class="alerta alerta-vermelho d-none" id="erroNome"></div>
                    </div>

                    <div class="form-grupo">
                        <label>Nome do Cliente <span class="asterisco">*</span></label>
                        <input class="form-campo" type="text" name="nome"/>
                        <div class="alerta alerta-vermelho d-none" id="erroNome"></div>
                    </div>
                    <div class="form-grupo">
                        <label>Data do Inicio <span class="asterisco">*</span></label>
                        <input class="form-campo" type="date" name="inicio"/>
                        <div class="alerta alerta-vermelho d-none" id="erroDatainicio"></div>
                    </div>

                   <div class="form-grupo">
                        <label>Data do Termino <span class="asterisco">*</span></label>
                        <input class="form-campo" type="date" name="termino"/>
                        <div class="alerta alerta-vermelho d-none" id="erroDatatermino"></div>
                    </div>

                    <div class="form-grupo">
                        <label>Investimento do Dia:</label>
                        <input class="form-campo form-campo-w250"  type="text" name="envestimento dia"/>                        
                    </div>

                    <div class="grupo-botoes">
                        <button class="btn btn-verde" type="submit">Salvar</button>
                        <button class="btn btn-vermelho" type="reset" onclick="document.location='index.jsp';"/>Cancelar</button>
                    </div>
                </form>

        <script>
            function enviarForm() {
                var semErros = true;

                var nome = document.getElementsByName("nome");
                if (nome[0].value === "") {
                    document.getElementById("erroNome").innerHTML = "Informar o Nome do Anuncio";
                    document.getElementById("erroNome").style = "display: block";
                    semErros = false;
                }
                else {
                    document.getElementById("erroNome").style = "";
                }

                var nome = document.getElementsByName("nome");
                if (nome[0].value === "") {
                    document.getElementById("erroNome").innerHTML = "Informar o Nome do Cliente";
                    document.getElementById("erroNome").style = "display: block";
                    semErros = false;
                }
                else {
                    document.getElementById("erroNome").style = "";
                }

                var data_inicio = document.getElementsByName("data_inicio");
                if (data_inicio[0].value === "") {
                    document.getElementById("erroData_inicio").innerHTML = "Informar a Datainicio";
                    document.getElementById("erroData_inicio").style = "display: block";
                    semErros = false;
                }
                else {
                    document.getElementById("erroData_inicio").style = "";
                }
                
                var data_termino = document.getElementsByName("data_termino");
                if (data_termino[0].value === "") {
                    document.getElementById("erroData_termino").innerHTML = "Informar a Datatermino";
                    document.getElementById("erroData_termino").style = "display: block";
                    semErros = false;
                }
                else {
                    document.getElementById("erroData_termino").style = "";
                }
                
                var investimento_dia = document.getElementsByName("investimento_dia");
                if (investimento_dia[0].value === "") {
                    document.getElementById("erroinvestimento_dia").innerHTML = "Informa o Investimento do dia";
                    document.getElementById("erroInvestimento_dia").style = "display: block";
                    semErros = false;
                }
                else {
                    document.getElementById("erroInvestimento_dia").style = "";
                }
                
                return semErros;
            }
        </script>
    </body>
</html>