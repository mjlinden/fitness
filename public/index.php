<?php
    require '../Modules/Categories.php';
    require '../Modules/Products.php';
    require '../Modules/Details.php';
    require '../Modules/Database.php';

    $request  = str_replace("/healthone/", "", $_SERVER['REQUEST_URI']);
    $params   = explode("/", $request);

    switch($params[0]) {
        case 'categories':
            $categories= getCategories();
            include_once "../Templates/categories.php";
            break;
        case 'products':
            $products=getProducts();
            $name=getCategoryName($params[1]);
            include_once "../Templates/products.php";
            break;
        case 'product':
            $name=$params[1];
            $product=getProduct($params[2]);
            include_once "../Templates/product.php";
            break;
        default:

            include_once "../Templates/home.php";
    }





