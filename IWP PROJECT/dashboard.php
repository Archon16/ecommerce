<?php

session_start();
if(!isset($_SESSION['username'])){
header('location:signin.html');
}


?>
<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        Shopping site layout
    </title>
    <link rel="stylesheet" href="cart.css">
</head>
<script>
    var x = 0;
    var flag = 0;
    function add() {
        alert("item added to cart!");
        flag = 1;
    }
    function loadcart() {
        x = x + 1;
        if (x % 2 != 0) {
            document.getElementById('cart').style.visibility = "visible";
            if (Number(flag) === Number(1)) {
                document.getElementById('content').style.visibility = "visible";
            }
        }
        else {
            document.getElementById('cart').style.visibility = "hidden";
            document.getElementById('content').style.visibility = "hidden";
        }
    }
    function popup(x) {
        document.getElementById('popup' + x).style.display = 'block';
        document.getElementById('fade' + x).style.display = 'block';
    }

    function popupclose(x) {
        document.getElementById('popup' + x).style.display = 'none';
        document.getElementById('fade' + x).style.display = 'none';
    }
    function popupnext(x) {
        document.getElementById('popup' + x).style.display = 'block';
        document.getElementById('fade' + x).style.display = 'block';
        document.getElementById('popup' + Number(x - 1)).style.display = 'none';
        document.getElementById('fade' + Number(x - 1)).style.display = 'none';
    }
    function popupprev(x) {
        document.getElementById('popup' + x).style.display = 'block';
        document.getElementById('fade' + x).style.display = 'block';
        document.getElementById('popup' + Number(x + 1)).style.display = 'none';
        document.getElementById('fade' + Number(x + 1)).style.display = 'none';
    }
</script>

<body>

    <center><h2> WELCOME!! <?php echo $_SESSION['username'];?> </h2></center>
    <a href="logout.php">LOGOUT</a>
    <div class="head">
        <div class="container">
            shopmax
            <button class="fr" id="btn" onclick="loadcart()">Cart</button>

        </div>
    </div>
    <table>
        <tr>
            <td>
                mobile
            </td>
            <td>Lifestyle</td>
            <td>Groceries</td>
            <td>Electronies</td>
            <td width="30%"><input type="text" placeholder="Search"></td>
        </tr>
        <tr>
            <td colspan="5">
                <img src="omen.jpg">
                <div class="cart" id="cart" style="visibility: hidden; right: 25px;">
                    Items:
                    <br>
                    <p class="fl" id="content" style="visibility: hidden; float: left;">
                        EarPhones<br>
                        <img src="omen.jpg" class="img">
                        Price=Rs.500
                        <br>

                        <a href="javascript:void(0)" onclick="popup('1')"><button id="btn" class="a1" value=100
                                onclick="popup('1')" style="width: 40%;">View</button>
                        </a>
                    </p>
                    <br>
                    <p class="fl" id="content" style="visibility: hidden; float: left;">
                        hello<br>
                        <img src="omen.jpg" class="img">
                        Price=Rs.500
                        <br>

                        <a href="javascript:void(0)" onclick="popup('1')"><button id="btn" class="a1" value=100
                                onclick="popup('1')" style="width: 40%;">View</button>
                        </a>
                    </p>
                </div>
            </td>
        </tr>
    </table>
    <section class="row">
        <div class="container">
            <p class="fl">
                EarPhones<br>
                <img src="omen.jpg" class="img">
                Price=Rs.500
                <br>
                <button id="btn" class="a1" value=100 onclick="add()" style="width: 30%;">Add to Cart</button>
                <a href="javascript:void(0)" onclick="popup('1')"><button id="btn" class="a1" value=100
                        onclick="popup('1')" style="width: 30%;">View</button>
                </a>
            </p>
            <p class="fr">
                Filter page
            </p>
            <p class="fl">Phone Cover
                <br>
                <img src="omen.jpg" class="img">
                Price=Rs.500
                <br>
                <button id="btn" class="a1" value="500" onclick="add()" style="width: 30%;">Add to Cart</button>
                <a href="javascript:void(0)" onclick="popup('2')"><button id="btn" class="a1" value=100
                        onclick="popup('2')" style="width: 30%;">View</button>
                </a>
            </p>
            <p class="fl">Charger
                <br>
                <img src="omen.jpg" class="img">
                Price=Rs.600
                <br>
                <button id="btn" class="a1" value="600" onclick="add()" style="width: 30%;">Add to Cart</button>
                <a href="javascript:void(0)" onclick="popup('3')"><button id="btn" class="a1" value=100
                        onclick="popup('3')" style="width: 30%;">View</button>
                </a>
            </p>

        </div>

    </section>
    <div id="popup1" class="wc">
        <p>
            <a href="javascript:void(0)" onclick="popupclose('1')"><button id="btn" class="a1" value="600"
                    style="width: 10%;">X</button></a>

        </p>
        <p style="align-content: center ;text-align: center;">
            EarPhones<br>
            <img src="omen.jpg">
            <br>
            Price=Rs.500
            <br>
            <a href="javascript:void(0)" onclick="popupnext('2')"><button id="btn" class="a1" value="600"
                    style="width: 10%; float: right;">next</button></a>
        </p>
    </div>
    <div id="fade1" class="bc">

    </div>

    <div id="popup2" class="wc">
        <p>
            <a href="javascript:void(0)" onclick="popupclose('2')"><button id="btn" class="a1" value="600"
                    style="width: 10%;">X</button></a>
        </p>
        <p style="align-content: center ;text-align: center;">Phone Cover
            <br>
            <img src="omen.jpg">
            Price=Rs.500
            <br>
            <a href="javascript:void(0)" onclick="popupprev('1')"><button id="btn" class="a1" value="600"
                    style="width: 10%; float: left;">prev</button></a>
            <a href="javascript:void(0)" onclick="popupnext('3')"><button id="btn" class="a1" value="600"
                    style="width: 10%; float: right;">next</button></a>
        </p>
    </div>
    <div id="fade2" class="bc">

    </div>

    <div id="popup3" class="wc">
        <p>
            <a href="javascript:void(0)" onclick="popupclose('3')"><button id="btn" class="a1" value="600"
                    style="width: 10%;">X</button></a>
        </p>

        <p style="align-content: center ;text-align: center;">Charger
            <br>
            <img src="omen.jpg">
            Price=Rs.600
            <br>
            <a href="javascript:void(0)" onclick="popupprev('2')"><button id="btn" class="a1" value="600"
                    style="width: 10%; float: left;">prev</button></a>
        </p>
    </div>
    <div id="fade3" class="bc">

    </div>
</body>

</html>
