<%-- 
    Document   : calculadora
    Created on : 14/05/2021, 21:05:03
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
        <h1>Calculadora!</h1>
        <h1>ACADEMIA COPGEMINI</h1>
        <h1>Cadastro da Calculadora</h1>
                
                <form action="calculadora-recebe-cadastrar.jsp" method="POST" onsubmit="return enviarForm()">
                    <p class="txt-verde txt-center p-block">Campos com Preenchimento Obrigatório <span class="asterisco">*</span></p>
                    
                    <div class="form-grupo">
                        <label>Visualiza<span class="asterisco">*</span></label>
                        <input class="form-campo" type="text" name="visualiza"/>
                        <div class="alerta alerta-vermelho d-none" id="erroVisualiza"></div>
                    </div>

                    <div class="form-grupo">
                        <label>Cliques<span class="asterisco">*</span></label>
                        <input class="form-campo" type="text" name="cliques"/>
                        <div class="alerta alerta-vermelho d-none" id="erroCliques"></div>
                    </div>
                    <div class="form-grupo">
                        <label>Compartilha<span class="asterisco">*</span></label>
                        <input class="form-campo" type="text" name="compartilha"/>
                        <div class="alerta alerta-vermelho d-none" id="erroCompartilha"></div>
                    </div>

                   <div class="form-grupo">
                        <label>ValorInvestimento<span class="asterisco">*</span></label>
                        <input class="form-campo" type="text" name="valorInvestimento"/>
                        <div class="alerta alerta-vermelho d-none" id="erroValorInvestimento"></div>
                    </div>

                    <div class="grupo-botoes">
                        <button class="btn btn-verde" type="submit">Salvar</button>
                        <button class="btn btn-vermelho" type="reset" onclick="document.location='index.jsp';"/>Cancelar</button>
                    </div>
                </form>

        <script>
            function enviarForm() {
                var semErros = true;

                var visualiza = document.getElementsByName("visualiza");
                if (visualiza[0].value === "") {
                    document.getElementById("erroVisualiza").innerHTML = "Informar o  Numero de Visualização ";
                    document.getElementById("erroVisualiza").style = "display: block";
                    semErros = false;
                }
                else {
                    document.getElementById("erroVisualiza").style = "";
                }

                var clique = document.getElementsByName("clique");
                if (clique[0].value === "") {
                    document.getElementById("erroClique").innerHTML = "Informar o Numero de Clique";
                    document.getElementById("erroClique").style = "display: block";
                    semErros = false;
                }
                else {
                    document.getElementById("erroClique").style = "";
                }

                var compartilha  = document.getElementsByName("compartilha");
                if (compartilha[0].value === "") {
                    document.getElementById("erroCompartilha").innerHTML = "Informar o Numero de Compartilhamento";
                    document.getElementById("erroCompartilha").style = "display: block";
                    semErros = false;
                }
                else {
                    document.getElementById("erroCompartilha").style = "";
                }
                
                var valorInvestimento = document.getElementsByName("valorInvestimento");
                if (valorInvestimento[0].value === "") {
                    document.getElementById("erroValorInvestimento").innerHTML = "Informar o ValorInvestimento";
                    document.getElementById("erroValorInvestimento").style = "display: block";
                    semErros = false;
                }
                else {
                    document.getElementById("erroValorInvestimento").style = "";
                }
                
                return semErros;
            }
        </script>
    </body>
</html>

