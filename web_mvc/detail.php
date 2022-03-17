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
    <?php 
	if(!isset($_GET['proid']) || $_GET['proid'] == NULL){
      
        
    }else {
        $id = $_GET['proid']; // Lấy productid trên host
    }
	$customer_id = Session::get('customer_id'); // bỏ $ nha chú , $ là biến chứ không phải thuộc tính 
	//$customer_id = Session::get('$customer_id'); // dòng lỗi ,nản chú ghê,easy vậy mà
   
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
        // LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
        $size = $_POST['size'];
        $quantity = $_POST['quantity'];
        $insertCart = $ct -> add_to_cart($id,$size,$quantity); // hàm check catName khi submit lên
    }  
 ?>
    <?php 
	if(!isset($_GET['brandId']) || $_GET['brandId'] == NULL){
   
        
    }else {
        $id = $_GET['brandId']; // Lấy productid trên host
    }
	
 ?>

    <!-- product-detail content -->
    <div class="bg-main">
        <div class="container">
            <?php 
    		$get_product_details = $product->get_details($id);
    		if ($get_product_details) {
    			while ($result_details = $get_product_details->fetch_assoc()) {
    				# code...
    			
    		 ?>
            <div class="box">
                <div class="breadcumb">
                    <a href="./index.php">home</a>
                    <span><i class='bx bxs-chevrons-right'></i></span>
                    <a href="./filters.php">all products</a>
                    <span><i class='bx bxs-chevrons-right'></i></span>
                    <a href="./detail.php">
                        <?php echo $result_details['productName'] ?></a>
                </div>
            </div>

            <div class="row product-row">
                <div class="col-5 col-md-12">
                    <div class="product-img" id="product-img">
                        <img src="admin/uploads/<?php echo $result_details['image'] ?>" alt="" />
                    </div>

                </div>
                <div class="col-7 col-md-12">

                    <div class="product-info">
                        <h2>
                            <?php echo $result_details['productName'] ?>
                        </h2>
                        <div class="product-info-detail">
                            <span class="product-info-detail-title">Brand:</span>
                            <a href="#"><span><?php echo $result_details['brandName'] ?></a><br>

                        </div>

                        <p class="product-description">
                            <?php echo $fm->textShorten($result_details['product_desc']) ?>
                        </p>
                        <div class="product-info-price">
                            <?php echo $fm->format_currency($result_details['price'])." "."VNĐ" ?></div>

                        <div class="product-quantity-wrapper">
                            <form action="" method="post">
                                <input type="number" class="buyfield" name="size" value="35" min="35" max="43"
                                    style="width: 30%;height:33px;" /><BR><BR>
                                <input type="number" class="buyfield" name="quantity" value="1" min="1"
                                    style="width: 30%;" /><BR><BR><BR>
                                <input type="submit" class="btn-flat btn-hover" name="submit"
                                    value="Thêm vào giỏ hàng" />
                            </form>

                            <?php 
						if (isset($AddtoCart)) {
							echo '<span style="color:red; font-size:18px;">Sản phẩm đã được bạn thêm vào giỏ hàng</span>';
						}
					 ?>
                            <?php 
						if (isset($insertCart)) {
							echo $insertCart;
						}
					 ?>


                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="box-header">
                        description
                    </div>
                    <div class="product-detail-description">
                        <button class="btn-flat btn-hover btn-view-description" id="view-all-description">
                            view all
                        </button>
                        <div class="product-detail-description-content">
                            <p>
                                <?php echo $fm->textShorten($result_details['product_desc']) ?>
                            </p>
                            <img src="admin/uploads/<?php echo $result_details['image'] ?>" alt=""
                                style="max-width: 40%;" />
                        </div>
                    </div>
                </div>
            </div>



        </div>
    </div>
    </div>
    <?php 
		}
    		}
		 ?>
    <!-- end product-detail content -->

    <?php include 'inc/footer.php'; ?>

    <!-- app js -->
    <script src="./js/app.js"></script>
    <script src="./js/product-detail.js"></script>
</body>

</html>