<!DOCTYPE html>
<html>
<head>
    <base href="http://healthone/" target="_blank">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>HealthOne!</title>
    <link rel="stylesheet" href='css/bootstrap.min.css' />
    <script src='js/jquery-3.2.1.min.js'></script>
    <script src='js/bootstrap.min.js'></script>
</head>

<body style="background-color: gainsboro">

<div class="container" style="background-color: white">
    <?php
    include_once ('defaults/header.php');
    include_once ('defaults/menu.php');
    include_once ('defaults/pictures.php');
    GLOBAL $name,$product;
    ?>
    <a href="products/<?=$product->category_id?>">
        <h2> Productgroep <?=$name?></h2>
    </a>
    <div class="row">


                <div class="panel panel-primary">
                    <div class="panel-heading"><?=$product->name?></div>

                        <div class="panel-body">
                            <img class="img-responsive center-block" style="width:70%" src='img/<?= $product->picture ?>' />
                            <p><?=$product->description?></p>
                        </div>

                </div>



    </div>

    <hr>
    <?php
    include_once ('defaults/footer.php');

    ?>
</div>

</body>
</html>
