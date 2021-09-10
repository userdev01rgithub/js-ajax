<?php 



$url = 'http://localhost/test_ajax.php'; // url, на который отправляется запрос
$post_data = [ // поля нашего запроса
    'startFrom' => '0',
];

$headers = []; // заголовки запроса

$post_data = http_build_query($post_data);

$curl = curl_init();
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($curl, CURLOPT_VERBOSE, 1);
curl_setopt($curl, CURLOPT_POSTFIELDS, $post_data);
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_POST, true); // true - означает, что отправляется POST запрос

$result = curl_exec($curl);
$result = json_decode($result);
    foreach($result as $result){
        var_dump($result);
        echo '<br> <br> <br> <br> <br> <br> <br>';

    }
    echo '<hr> <br>';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!--<script src="script.js"></script>-->
</head>
<body>
    <div style="height=10px; width=30px; background=red;"></div>
    <div class="div" id="div"></div>
<script>
$(document).ready(function(){
    var inProgress=false;
    var startFrom=10;
    $(window).scroll(function(){
        if($(window).scrollTop() + $(window).height() >= $(document).height() && !inProgress ){
            $.ajax({
                url:'test_ajax.php',
                method:'POST',
                data:{"startFrom":startFrom},
                beforeSend:function(){inProgress=true;}
            }).done(function(data){
                data=jQuery.parseJSON(data);
                if(data.length>0){
                    console.log(data)
                    $.each(data, function(index, data){
                        $("#div").append('<p>' + data.id + ' ' + data.title + ' ' + data.text +'</p>');
                    });
                    inProgress=false;
                    startFrom +=10;
                }
            });
        }
    });
});
</script>
</body>
</html>