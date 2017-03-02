                                     <!-- Header command  -->
                                  <%@ include file="Head.jsp" %>
<html>
<head>

<title>CustomerDetails</title>
</head>
<body style="margin-top:80px;">
<div class="container-wrapper">
<div class="container">

     <c:url var="url" value="/eo/CustomerDetails"></c:url>
     <form:form action="${url }" commandName="customer">
     
      	<div class="form-group">
      	<form:label path="firstname"> First Name </form:label>
      	<form:input path="firstname"></form:input>
      	<form:errors path="firstname" cssStyle="color:#ff9900"></form:errors>
      	</div>
    
    	<div class="form-group">
    	<form:label path="lastname"> Last Name </form:label>
    	<form:input path="lastname"></form:input>
    	<form:errors path="lastname" cssStyle="color:#ff9900"></form:errors>
    	</div>
    
    	<div class="form-group">
    	<form:label path="email"> Email Id </form:label>
    	<form:input path="email"/>
    	<form:errors path="email" cssStyle="color:#ff9900"></form:errors>
    	</div>
    	
    	<div class="form-group">
    	<form:label path="phonenumber"> Phone Number</form:label>
    	<form:input path="phonenumber"/>
    	<form:errors path="phonenumber" cssStyle="color:#ff9900"></form:errors>
    	</div>
    	
    	<div class="form-group">
    	<form:label path="users.username"> UserName </form:label>
    	<form:input path="users.username"/>
    	${duplicateUsername}
    	<form:errors path="users.username" cssStyle="color:#ff9900"></form:errors>
    	</div>
    	
    	<div class="form-group">
    	<form:label path="users.password"> Password </form:label>
    	<form:input path="users.password" type="password"/>
    	<form:errors path="users.password" cssStyle="color:#ff9900"></form:errors>
    	</div>
    	
    	<div class="form-group">
    	<form:label path="billingAddress.ApartmentNumber">Apartment Number</form:label>
    	<form:input path="billingAddress.ApartmentNumber"/>
    	<form:errors path="billingAddress.ApartmentNumber" cssStyle="color:#ff9900"></form:errors>
    	</div>
    	
    	<div class="form-group">
    	<form:label path="billingAddress.StreetName">Street Name</form:label>
    	<form:input path="billingAddress.StreetName"/>
    	<form:errors path="billingAddress.StreetName" cssStyle="color:#ff9900"></form:errors>
    	</div>
    	
    	<div class="form-group">
    	<form:label path="billingAddress.City"> City </form:label>
    	<form:input path="billingAddress.City"/>
    	<form:errors path="billingAddress.City" cssStyle="color:#ff9900"></form:errors>
    	</div>
    	
    	<div class="form-group">
    	<form:label path="billingAddress.Province"> Province</form:label>
    	<form:input path="billingAddress.Province"/>
    	<form:errors path="billingAddress.Province" cssStyle="color:#ff9900"></form:errors>
    	</div>
    	
    	<div class="form-group">
    	<form:label path="billingAddress.Country"> Country </form:label>
    	<form:input path="billingAddress.Country" />
    	<form:errors path="billingAddress.Country" cssStyle="color:#ff9900"/>
    	</div>
    	
    	<div class="form-group">
    	<form:label path="billingAddress.Zipcode"> Zipcode </form:label>
    	<form:input path="billingAddress.Zipcode"/>
    	<form:errors path="billingAddress.Zipcode" cssStyle="color:#ff9900"></form:errors>
    	</div>
    	
    	                      <!--  Shipping Details-->
    	
    	<div class="form-group">
    	<form:label path="shippingAddress.ApartmentNumber"> Apartment Number</form:label>
    	<form:input path="shippingAddress.ApartmentNumber"/>
    	<form:errors path="shippingAddress.ApartmentNumber" cssStyle="color:#ff9900"></form:errors>
    	</div>
    	
    	<div class="form-group">
    	<form:label path="shippingAddress.StreetName"> Street Name</form:label>
    	<form:input path="shippingAddress.StreetName"/>
    	<form:errors path="shippingAddress.StreetName" cssStyle="color:#ff9900"></form:errors>
    	</div>
    	
    	<div class="form-group">
    	<form:label path="shippingAddress.City">City</form:label>
    	<form:input path="shippingAddress.City"/>
    	<form:errors path="shippingAddress.City" cssStyle="color:#ff9900"></form:errors>
    	</div>
    	
    	<div class="form-group">
    	<form:label path="shippingAddress.Province"> Province</form:label>
    	<form:input path="shippingAddress.Province"/>
    	<form:errors path="shippingAddress.Province" cssStyle="color:#ff9900"></form:errors>
    	</div>
    	
    	<div class="form-group">
    	<form:label path="shippingAddress.Country"> Country</form:label>
    	<form:input path="shippingAddress.Country"/>
    	<form:errors path="shippingAddress.Country" cssStyle="color:#ff9900"></form:errors>
    	</div>
    	
    	<div class="form-group">
    	<form:label path="shippingAddress.Zipcode"> Zipcode </form:label>
    	<form:input path="shippingAddress.Zipcode"/>
    	<form:errors path="shippingAddress.Zipcode" cssStyle="color:#ff9900"></form:errors>
    	</div>
    	
    	<input type="submit" value="Register">
    </form:form>
</div>
</div>

</body>
</html>
                                <%-- <!-- Footer command -->
                            <%@ include file="Footer.jsp" %> --%>
