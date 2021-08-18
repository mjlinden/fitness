<?php
function getDetails(int $id)
{
    class Product {};
    GLOBAL $pdo,$params;
    $sth=$pdo->prepare('SELECT * FROM product WHERE id=? ');
    $sth->bindParam(1,$id);
    $sth->execute();
    return $sth->fetchAll(PDO::FETCH_CLASS,'Product');
}

