<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/category.php';  ?>
<?php include '../classes/brand.php';  ?>
<?php include '../classes/product.php';  ?>
<?php
    // gọi class category
    $pd = new product();
    if(!isset($_GET['productid']) || $_GET['productid'] == NULL){
        echo "<script> window.location = 'productlist.php' </script>";
        
    }else {
        $id = $_GET['productid']; // Lấy productid trên host
    } 
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
        // LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
        $updateProduct = $pd -> update_product($_POST, $_FILES, $id); // hàm check catName khi submit lên
    }
  ?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Sửa sản phẩm</h2>
        <?php 
            if(isset($updateProduct)){
                echo $updateProduct;
            }
         ?>
        <?php 
         $get_product_by_id = $pd->getproductbyId($id);
         if($get_product_by_id){
            while ($result_product = $get_product_by_id->fetch_assoc()) {
                # code...
            
          ?>
        <div class="block">

            <form action="" method="post" enctype="multipart/form-data">
                <table class="form">

                    <tr>
                        <td>
                            <label>Tên</label>
                        </td>
                        <td>
                            <input name="productName" value="<?php echo $result_product['productName'] ?>" type="text"
                                class="medium" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Code sản phẩm</label>
                        </td>
                        <td>
                            <input name="product_code" value="<?php echo $result_product['product_code'] ?>" type="text"
                                class="medium" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Số lượng</label>
                        </td>
                        <td>
                            <input name="productQuantity" value="<?php echo $result_product['productQuantity'] ?>"
                                type="text" class="medium" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Danh mục sản phẩm</label>
                        </td>
                        <td>
                            <select id="select" name="category">
                                <option>Chọn chuyên mục</option>
                                <?php 
                            $cat = new category();
                            $catlist = $cat->show_category();
                            if($catlist){
                                while ($result = $catlist->fetch_assoc()){
                            
                             ?>
                                <option <?php 
                            if($result['catId']==$result_product['catId'])
                                { echo 'selected'; }
                             ?> value=" <?php echo $result['catId'] ?> "> <?php echo $result['catName'] ?></option>

                                <?php 
                            }
                             }
                             ?>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Thương hiệu</label>
                        </td>
                        <td>
                            <select id="select" name="brand">
                                <option>Chọn thương hiệu</option>
                                <?php 
                            $brand = new brand();
                            $brandlist = $brand->show_brand();
                            if($brandlist){
                                while ($result = $brandlist->fetch_assoc()){
                            
                             ?>
                                <option <?php 
                            if($result['brandId']==$result_product['brandId'])
                                { echo 'selected'; }
                             ?> value=" <?php echo $result['brandId'] ?> "> <?php echo $result['brandName'] ?>
                                </option>

                                <?php 
                            }
                             }
                             ?>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td style="vertical-align: top; padding-top: 9px;">
                            <label>Mô tả
                            </label>
                        </td>
                        <td>
                            <textarea name="desc"
                                class="tinymce"><?php echo $result_product['product_desc'] ?></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Giá</label>
                        </td>
                        <td>
                            <input name="price" value="<?php echo $result_product['price'] ?>" type="text"
                                class="medium" />
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>Tải ảnh</label>
                        </td>
                        <td>
                            <img src="uploads/<?php echo $result_product['image'] ?>" width="100"><br>
                            <input name="image" type="file" />
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>Loại sản phẩm</label>
                        </td>
                        <td>
                            <select id="select" name="type">

                                <?php 
                            if ($result_product['type'] ==0) {
                             ?>
                                <option selected value="0">Giày Cổ Cao</option>
                                <option value="1">Giày Cổ Thấp</option>
                                <?php 
                                }else{
                            ?>
                                <option selected value="0">Giày Cổ Cao</option>
                                <option value="1">Giày Cổ Thấp</option>
                                <?php 
                        }
                             ?>


                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" name="submit" value="Cập nhật" />
                        </td>
                    </tr>
                </table>
            </form>
            <?php 
            }
            }
             ?>
        </div>
    </div>
</div>

<?php include 'inc/footer.php';?>