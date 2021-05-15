<%-- 
    Document   : relatorio-anuncio
    Created on : 14/05/2021, 21:11:34
    Author     : Maria
--%>

<%@page import="utils.Web"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Relatorio-Anuncio</h1>
                <%
                    request.setCharacterEncoding("UTF-8"); //para não desconfigurar a acentuação

                    List<Anuncio>anuncio = new ArrayList<>();
                    anuncio = Anuncio.consultar();
                %>

                    <table class="tabela-relatorio"> <!-- Indicação do início da tabela -->
                        <thead> <!-- Indicação de início do cabeçalho da tabela -->
                            <th class="esquerda">Anuncio</th> <!-- Item do cabeçalho da tabela -->
                            <th class="centro">Cliente</th>
                            <th class="direita">Data-inicio</th> 
                            <th class="direita">Data-termino</th> 
                            <th class="centro">Investimento-dia</th>
                        </thead> <!-- Indicação de final do cabeçalho da tabela -->
                        <tbody> <!-- Indicação de início do corpo da tabela -->
                            <% for (Anuncio anc : anuncio) { %>
                                <tr id="botao"> <!-- Indicação do início dos itens que formarão as linhas da tabela -->
                                    <td class="esquerda"><%out.write(anc.getNome_anuncio());%></td> 
                                    <td class="centro"><%out.write(anc.getNome_cliente());%></td>
                                    <td class="direita"><%out.write(Web.dataParaString(anc.getData_inicio()));%></td> 
                                    <td class="centro"><%out.write(Web.dataParaString(anc.getData_termino()));%></td>
                                    <td class="esquerda"><%out.write(anc.getInvestimento_dia());%></td> 
                                </tr> <!-- Indicação do fim dos itens que formarão as linhas da tabela -->
                            <% } %>
                        </tbody> <!-- Indicação de final do corpo da tabela -->
                    </table> <!-- Indicação do final da tabela -->

                    <div class="grupo-botoes">
                        <button type="button" class="btn btn-verde btn-sm" onclick="gerarRelatorio()">Imprimir</button>
                        <button type="reset" class="btn btn-verde btn-sm" onclick="document.location='index.jsp';">Cancelar</button>
                    </div>
        <script>
            function gerarRelatorio() {
                var Relatorio = "relatorio-anuncio.jsp";
                window.print();
            }
        </script>
    </body>
</html>
