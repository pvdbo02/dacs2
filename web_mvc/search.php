<?php 
    session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Siz Sneaker</title>
    <!-- google font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,900&display=swap"
        rel="stylesheet">
    <!-- boxicons -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <!-- app css -->
    <link rel="stylesheet" href="./css/grid.css">
    <link rel="stylesheet" href="./css/app.css">
</head>

<body>
    <?php include 'inc/header.php'; ?>

    <div class="section">
        <div class="container">
            <div class="section-header">

            </div>
            <div class="row" id="">
                <?php 
                                    $con = mysqli_connect("localhost","root","","web_mvcphu");
                                    if(isset($_GET['search']))
                                    {
                                        $filtervalues = $_GET['search'];
                                        $query = "SELECT * FROM tbl_product WHERE productName LIKE '%$filtervalues%' ";
                                        $query_run = mysqli_query($con, $query);
                                     
                                        if(mysqli_num_rows($query_run) > 0)
                                        {  
                                            foreach($query_run as $items)
                                            {
                                                ?>
                <div class="col-3 col-md-6 col-sm-12">

                    <div class="product-card">
                        <div class="product-card-img">
                            <img src="admin/uploads/<?= $items['image']; ?>" alt="" />
                        </div>
                        <div class="product-card-info">
                            <div class="product-btn">
                                <button class="btn-flat btn-hover btn-shop-now"><a
                                        href="detail.php?proid=<?= $items['productId']; ?>">shop
                                        now</button></a>
                                <button class="btn-flat btn-hover btn-cart-add"><a
                                        href="detail.php?proid=<?= $items['productId']; ?>">
                                        <i class="bx bxs-cart-add"> </i>
                                    </a> </button>
                                <button class="btn-flat btn-hover btn-cart-add">
                                    <i class="bx bxs-heart"></i>
                                </button>
                            </div>
                            <div class="product-card-name">
                                <a href="detail.php?proid=<?= $items['productId']; ?>">
                                    <?= $items['productName']; ?></a>
                            </div>
                            <div class="product-card-price">
                                <span><del></del></span>
                                <span
                                    class="curr-price"><?php echo $fm->format_currency( $items['price'])." "."VNĐ" ?></span>
                            </div>
                        </div>
                    </div>
                </div> <?php
                                            }
                                        }
                                       {}}
                                            ?>

            </div>
        </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    <!-- end products content -->


    <?php include 'inc/footer.php'; ?>

    <!-- app js -->
    <script src="./js/app.js"></script>
    <script src="./js/products.js"></script>
</body>

</html>