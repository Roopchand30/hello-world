<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Proposal </title>
</head>
<body>
        <canvas id="canvas" width="1024" height="768">
                Laa sorry, canvas support garena!!    
              </canvas>
              <!-- <div style="color:red;font-size:45px;position:absolute;top:400px;left:200px">Pragya <i class='fa fa-heart'></i> </div> -->
                <!-- The Modal -->
                <div class="modal fade" id="myModal">
                      <div class="modal-dialog">
                        <div class="modal-content">
                        
                          <!-- Modal Header -->
                          <div class="modal-header">
                            <h4 class="modal-title">Hey You <i class='fa fa-heart text-danger '></i></h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                          </div>
                          
                          <!-- Modal body -->
                          <div class="modal-body">
                           This one is for my dearest and nearest, which is you
                          </div>
                          
                          <!-- Modal footer -->
                          <div class="modal-footer">
                              <p style="position:absolute;left:15px"><small class='text-muted'>Made By Anjal Binayak with and for <i class='fa fa-heart text-danger'></i> </small></p>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                          </div>
                          
                        </div>
                      </div>
                    </div>
              
                    <div style="position:absolute;top:200px;left:160px">
                          <img class="img-thumbnail" src='girl.png' style='height:200px;width:200px'>
                          <p class='text-danger text-center'>You <i class='fa fa-heart'></i></p>
              
                  </div>
                  
                  <button type="button" style="position:absolute;left:200px;bottom:300px" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#feelings"> <i class='fa fa-heart '></i> Open Letter</button>
              
                  <div class="modal fade" id="feelings">
                          <div class="modal-dialog">
                            <div class="modal-content">
                            
                              <!-- Modal Header -->
                              <div class="modal-header">
                                <h4 class="modal-title">Hey you</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                              </div>
                              
                              <!-- Modal body -->
                              <div class="modal-body">
                                You are the person I have been dreaming all my life <i class=' text-danger fa fa-heart'></i>, so allow me to express my intense love for you.<i class=' text-danger fa fa-heart'></i> You are the most precious thing in my life.



                                You have fascinated my heart and seized my mind with your magnetic presence and I keep dreaming of yourself<i class=' text-danger fa fa-heart'></i>. Your memories are invaluable treasure of my life, which are locked inside my heart. <i class=' text-danger fa fa-heart'></i>The time spent with you was the most mesmerizing and delightful of my life.<i class=' text-danger fa fa-heart'></i> I take this opportunity to ask for your consent if you want to be my life partner.<i class=' text-danger fa fa-heart'></i>  This letter is a token of my love for you.<i class=' text-danger fa fa-heart'></i><i class=' text-danger fa fa-heart'></i><i class=' text-danger fa fa-heart'></i><a href='burst-heart.html'>Click Here</a>
                              </div>
                              
                              <!-- Modal footer -->
                              <div class="modal-footer">
                                  <p style="position:absolute;left:15px"><small class='text-muted'>Made By Anjal Binayak with and for <i class='fa fa-heart text-danger'></i> </small></p>
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                              </div>
                              
                            </div>
                          </div>
                        </div>
                  
                        <div style="position:absolute;top:200px;left:160px">
                              <img class="img-thumbnail" src='girl.png' style='height:200px;width:200px'>
                              <p class='text-danger text-center'>You <i class='fa fa-heart'></i></p>
                  
                      </div>
</body>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
    
   $('#myModal').modal('show');

var c = document.getElementById("canvas");
var a = c.getContext("2d");

var w = c.width;
var h = c.height;

var hearts = [];

function Heart(x, y, size, direction, alpha) {
    this.hue = (Math.random() * 25)|0 + 10;
    this.x = x;
    this.y = y;
    this.size = (Math.random() * 60)|0 + 50;
    this.direction = "u";
    this.a = 1;
}

c.onmousemove = function(e) {
    var mouseX, mouseY;

    if (e.offsetX) {
        mouseX = e.offsetX;
        mouseY = e.offsetY;
    }
    else if (e.layerX) {
        mouseX = e.layerX;
        mouseY = e.layerY;
    }

    hearts.push(new Heart(mouseX - 4, mouseY - 4));
};

window.setInterval(function() {

    a.fillStyle = "#fff";
    a.fillRect(0, 0, w, h);

    if (hearts.length === 0) return;

    hearts = hearts.filter(function(val) {
        return val.y >= 0 && val.a >= 0;
    });

    hearts.forEach(function(heart) {

        heart.y = heart.y + 2;
        heart.a = heart.a - 0.01;

        if (heart.direction === "u") {
            heart.size = heart.size + 5;
            if (heart.size >= 100) heart.direction = "d";
        } else {
            heart.size = heart.size - 5;
            if (heart.size <= 10) heart.direction = "u";
        }

        a.save();
        a.font = heart.size + 'px Arial';
        a.fillStyle = "hsla(" + heart.hue + ",100%,50%," + heart.a + ")";
        a.fillText('♥', heart.x, heart.y);
        a.restore();
        
    });
}, 17);
</script>

</html>
