<!DOCTYPE html>
<html>
<head>
    <title>Online shop</title>
</head>
<body>
<h1>Online shop</h1>
<#if user.email??>
<h3>User name: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="submit" value="Quit"/>
    </form>
<#else>
    <a href="/login">Enter</a></h1>
</#if>
<hr>
<h4>Goods from whole world</h4>
<form action="/" method="get">
    Search products by name: <input type="text" name="title"><br>
    <input type="submit" value="Search"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} USD. | <a href="/product/${product.id}">Details...</a></p>
    </div>
    <#else>
    <h3>No products found</h3>
</#list>
<#if user.email??>
    <hr>
        <h3>Create a product</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Prod name: <input type="text" name="title"/><br><br>
        Prod description: <input type="text" name="description"/><br><br>
        Price: <input type="number" name="price"/><br><br>
        City: <input type="text" name="city"/><br><br>
        Author name: <input type="text" name="author"/><br><br>
        First img: <input type="file" name="file1"/><br><br>
        Second img: <input type="file" name="file2"/><br><br>
        Third img: <input type="file" name="file3"/><br><br>
        <input type="submit" value="Enter prod"/>
    </form>
</#if>
</body>
</html>
