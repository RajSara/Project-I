<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/view/Head.jsp" %>
<%@ page isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Collect Customer Information</title>
</head>
<body>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer</h1>

            <p class="lead">Customer Details:</p>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <h3>BASIC INFO:</h3>

        <div class="form-group">
            <label for="name">First Name</label>
            <form:input path="cart.customer.firstname" id="firstname" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="name">Last Name</label>
            <form:input path="cart.customer.lastname" id="lastname" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <form:input path="cart.customer.email" id="email" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="cart.customer.phonenumber" id="phone" class="form-Control" />
        </div>

        <br/>

        <h3>BILLING ADDRESS:</h3>

        <div class="form-group">
            <label for="billingStreet">Street Name</label>
            <form:input path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Apartment Number</label>
            <form:input path="cart.customer.billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCity">City</label>
            <form:input path="cart.customer.billingAddress.city" id="billingCity" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingProvince">Province</label>
            <form:input path="cart.customer.billingAddress.province" id="billingProvince" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCountry">Country</label>
            <form:input path="cart.customer.billingAddress.country" id="billingCountry" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingZip">Zipcode</label>
            <form:input path="cart.customer.billingAddress.zipcode" id="billingZip" class="form-Control" />
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>

        <input type="submit" value="Next" class="btn btn-success" name="_eventId_customerInfoCollected" />

        <button class="btn btn-danger" name="_eventId_cancel">Cancel</button>

        </form:form>

              <%-- <%@ include file="/WEB-INF/view/Footer.jsp" %> --%>
</div>
</div>
</body>
</html>