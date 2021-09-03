<?php

    function getCategories()
    {
        class Category {};
        GLOBAL $pdo;
        $categories=$pdo->query('SELECT * FROM category')->fetchAll(PDO::FETCH_CLASS,'Category');
        return $categories;
    }

    function getCategoryName( $id)
    {
        GLOBAL $pdo;
        $sth=$pdo->prepare('SELECT * FROM category WHERE id= ? ');
        $sth->bindParam(1,$id,PDO::PARAM_INT);
        $sth->execute();
        $category= $sth->fetch(PDO::FETCH_ASSOC);
        return $category['name'];
    }