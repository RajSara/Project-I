<%@include file="Head.jsp" %>
<html>
<head>
<title>Reg own</title>

				<link rel="stylesheet" href="<c:url value='/resource/saracss/scss.css'/>"/>

</head>
<body style="margin-top:150px;">
<h1>Registration Form</h1>

<div class="wrap">
		<c:url var="url" value="/eo/CustomerDetails"></c:url>
		<form:form action="${url}" commandName="customer">
	
  <div class="userd">
    <h2>User Details</h2><br>
    <input placeholder="First Name" class="nameud">
    <input placeholder="Last Name" class="lnameud">
    <input placeholder="Email" class="emailud">
    <input placeholder="Phone" class="phoneud">
  </div>
  
  <div class="det">
    <h2>Register Details</h2><br>
    <input placeholder="User Name" class="namer">
    <input placeholder="Password" class="passr"> 
  </div>
  
  <div class="billing">
    <h2>Billing Address</h2>
    <input type="checkbox" class="checkBox">
    <p class="checkBoxText">Billing is the same as shipping</p>
    <input placeholder="Name" class="nameBill">
    <input placeholder="Address 1" class="address1Bill">
    <input placeholder="Address 2" class="address2Bill">
    <input placeholder="City" class="cityBill">
    <select placeholder="State" class="stateBill">
      <option value="0">Select a State</option>
      <option value="1">Tamilnadu</option>
      <option value="2">Karnataka</option>
    </select>
    <input placeholder="Zip" class="zipBill">
    <input placeholder="Phone" class="phoneBill">
    
  </div>
  
  <div class="shipping">
    <h2>Shipping Address</h2>
    <p class="checkBoxText">Please fill out the form below</p>
    <input placeholder="Name" class="nameShip">
    <input placeholder="Address 1" class="address1Ship">
    <input placeholder="Address 2" class="address2Ship">
    <input placeholder="City" class="cityShip">
    <select placeholder="State" class="stateShip">
      <option value="0">Select a State</option>
      <option value="1">Tamilnadu</option>
      <option value="2">Karnataka</option>
    </select>
    <input placeholder="Zip" class="zipShip">
    <input placeholder="Phone" class="phoneShip">
    
  </div>

  	<div class="button">
    <button type="submit" class="btn btn-primary btn-lg ">Submit</button>
    </div>
    </form:form>
  
</div>
<script src="<c:url value='/resource/js/sc.js'></c:url>"></script>
								
</body>
</html>