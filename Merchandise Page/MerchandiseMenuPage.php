<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mechandise</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
    crossorigin="anonymous">
    <script>
// change method to direct the page to itemdescpage.
        function describePageOpen(){
            window.open("ItemDescPage.php");
        }
    </script>

    <!-- NAV UI Import here -->
    <?php require("../Navigation Bar and Footer/navbar.php"); ?> 
</head>
<body class="bg-dark">
<?php
    require ('../Database/connect.php');

    if(isset($_GET['result'])){
        if(($_GET['result'])==0){
            ?> <script>alert("<?php echo "Unsucessful, please try again."; ?>")</script> <?php
        }else{
            ?> <script>alert("<?php echo "Sucessful add item to cart!"; ?>")</script> <?php
        }
    }

    //query from item table
    $sql = 'SELECT itemID, itemName, itemPrice, itemDescription, image FROM item ORDER BY itemID'; 
    
    //make query & get result
    $result = mysqli_query($con, $sql); 

    //fetch the result's row as an array
    $items = mysqli_fetch_all($result, MYSQLI_ASSOC);
    
?>

<body>
        <div class="container-fluid p-5" >
        <div class="row row-cols-3">
            <?php foreach ($items as $item){?> 

                <a href="ItemDescPage.php?id=<?php echo $item['itemID'];?>&pagepass=true;">
                    <div class="row-cols-1 bg-light rounded m-2 p-2" >
                        <div class="col m-auto">
                            <?php echo '<img width = 150dp height = 130dp src="data:image/jpeg;base64,'.base64_encode( $item['image'] ).'"/>'; ?>
                        </div>
                        <div class="col">
                            <h3><?php echo $item["itemName"]; ?></h3>
                        </div>
                        <div class="col my-auto">
                            <p>RM <?php echo $item["itemPrice"]; ?> </p>
                        </div>
                    </div>
                </a>
                
            <?php } ?>
        </div>
    </div>

    <!-- Footer UI Import Here -->
    <?php require("../Navigation Bar and Footer/footer.html"); ?> 
</body>


</html>