<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="row">
    <div class="col-8 offset-2 text-center">
        <h1>Finalizando Pedido</h1>
        <p>Endereço de Entrega : ${cliente.endereco.logradouro} -  ${cliente.endereco.bairro} - ${cliente.endereco.cidade} - ${cliente.endereco.uf} </p>
        <p>Complemento : ${cliente.complemento} - Numero ${cliente.numero}</p>
        <h3>Valor Pedido : R$ <f:formatNumber minFractionDigits="2" currencySymbol="R$">${total_pedido}</f:formatNumber></h3>
        <h3>Valor Frete : R$ <f:formatNumber minFractionDigits="2" currencySymbol="R$">${frete_pedido}</f:formatNumber></h3>
        <h3>Valor Total : R$ <f:formatNumber minFractionDigits="2" currencySymbol="R$">${total_geral}</f:formatNumber></h3>
        <h3>Está tudo de acordo?</h3>
        <form action="Pedido">
            <input type="hidden" name="action" value="finalizar" />
            <button class="btn btn-success w-100">Finalizar Pedido</button>
        </form>
    </div>
</div>