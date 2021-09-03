<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>HealthOne!</title>
        <link rel="stylesheet" href='css/bootstrap.min.css' />
        <script src='js/jquery-3.2.1.min.js'></script>
        <script src='js/bootstrap.min.js'></script>
        <base href="http://healthone/" target="_blank">
    </head>

    <body style="background-color: gainsboro">

        <div class="container" style="background-color: white">
            <?php
            include_once ('defaults/header.php');
            include_once ('defaults/menu.php');
            include_once ('defaults/pictures.php');
            ?>
            <h4>Categorieën</h4>
            <div class="row">
                <?php GLOBAL $categories?>
                <?php foreach ($categories as $category): ?>
                <div class="col-sm-4 col-md-3">
                    <div class="panel panel-primary">
                        <div class="panel-heading"><?=$category->name?></div>
                        <a href="products/<?=$category->id?>">
                            <div class="panel-body">
                                <img class="img-responsive center-block" style="width:70%" src='img/<?= $category->picture ?>' />
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

