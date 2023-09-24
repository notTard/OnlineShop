<!DOCTYPE html>
<html>
<head>
    <title>Online shop</title>
</head>
<body>
<h1>Online shop</h1><hr>
<h4>Detailed info about the product</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Product title: </b>${product.title}<br>
<b>Product description: </b>${product.description}<br>
<b>Price: </b>${product.price}<br>
<b>City: </b>${product.city}<br>
<b>Author: </b>${product.user.name}<br>
</form>
</body>
</html>
