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
    GLOBAL $name,$products;
    ?>
    <h4>Products <?=$name?></h4>
    <div class="row">
        <?php foreach ($products as $product): ?>
            <div class="col-sm-4 col-md-3 col-lg-2">
                <div class="panel panel-primary">
                    <div class="panel-heading"><?=$product->name?></div>
                    <a href="/product/<?=strtolower($name)?>/<?=$product->id?>">
                        <div class="panel-body">
                            <img class="img-responsive center-block" style="width:70%" src='img/<?= $product->picture ?>' />
                        </div>
                    </a>
                </div>
            </div>
        <?php endforeach;?>

    </div>

    <hr>
    <?php
    include_once ('defaults/footer.php');

    ?>
</div>

</body>
</html>