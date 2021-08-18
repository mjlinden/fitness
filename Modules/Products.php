<?php
    function getProducts()
    {
        class Product {};
        GLOBAL $pdo,$params;
        $sth=$pdo->prepare('SELECT * FROM product WHERE category_id=? ');
        $sth->bindParam(1,$params[1]);
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_CLASS,'Product');
    }

    function getProduct(int $id)
    {
        class Product {};
        GLOBAL $pdo,$params;
        $sth=$pdo->prepare('SELECT * FROM product WHERE id=? ');
        $sth->bindParam(1,$id);
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_CLASS,'Product')[0];
    }