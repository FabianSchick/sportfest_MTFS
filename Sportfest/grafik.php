<html>
 <head>
  <meta charset="utf-8"/>
  <script type="application/javascript">
  var bool = 3;
    function draw() {
      var canvas = document.getElementById("canvas");
	  
      if (canvas.getContext) {
        var ctx = canvas.getContext("2d");
		
        ctx.fillStyle = "rgb(200,0,0)";
        ctx.fillRect (2, 248, 246, 2);

        ctx.fillStyle = "rgb(0, 0, 0)";
        ctx.fillRect (200, 80, 50, 2);
		
		ctx.fillStyle = "rgb(0, 0, 0)";
        ctx.fillRect (248, 40, 2, 210);
		
		ctx.beginPath();
		ctx.moveTo(25,248);
		ctx.lineTo(45,208);
		ctx.lineTo(45,158);
		ctx.lineTo(45,208);	
		ctx.lineTo(45,208);
		ctx.lineTo(65,248);
		ctx.closePath();
		ctx.stroke();

		ctx.moveTo(68,138);
		ctx.arc(48, 138, 20, 0, 2 * Math.PI);
		ctx.stroke();
		}
		
		var ball = {
			x: 90,
			y: 190,
			vxWurf: 1,
			radius: 20,
			color: 'blue',
			draw: function() {
				ctx.beginPath();
				ctx.arc(this.x, this.y, this.radius, 0, Math.PI*2, true);
				ctx.closePath();
				ctx.fillStyle = this.color;
				ctx.fill();
			}
		};
		
		var arme ={
			beginnOberarmX: 45,
			beginnOberarmY: 168,
			beginnUnterarmX: 55,
			beginnUnterarmY: 198,
			endeUnterarmX: 90,
			endeUnterarmY: 190,
			draw: function(){
				ctx.beginPath();
				ctx.moveTo(this.beginnOberarmX, this.beginnOberarmY);
				ctx.lineTo(this.beginnUnterarmX, this.beginnUnterarmY);
				ctx.lineTo(this.endeUnterarmX, this.endeUnterarmY);
				ctx.stroke();
			}
			
		};

			function draw() {
			  ctx.clearRect(0,0, canvas.width, canvas.height);
			  ctx.fillStyle = "rgb(200,0,0)";
			  ball.draw();
			  arme.draw();
			  ctx.fillStyle = "rgb(0, 0, 0)";
        ctx.fillRect (2, 248, 246, 2);

        ctx.fillStyle = "rgb(0, 0, 0)";
        ctx.fillRect (200, 80, 50, 2);
		
		ctx.fillStyle = "rgb(0, 0, 0)";
        ctx.fillRect (248, 40, 2, 210);
		
		ctx.beginPath();
		ctx.moveTo(25,248);
		ctx.lineTo(45,208);
		ctx.lineTo(45,158);
		ctx.lineTo(45,208);	
		ctx.lineTo(45,208);
		ctx.lineTo(65,248);
		ctx.moveTo(100,248);
		ctx.lineTo(248, 220);
		ctx.closePath();
		ctx.stroke();

		ctx.moveTo(68,138);
		ctx.arc(48, 138, 20, 0, 2 * Math.PI);
		ctx.stroke();
			  
			  if(ball.x==230){
				  bool=0;
			  }
			  
			  else if(bool == 2 && (ball.x < (arme.endeUnterarmX+1))	){
				  bool =3;
			  }			                   
			                   
			  else if(ball.y > 215){
				  bool=2;      
			  }    

			  
			  if(bool == 0){   
				  ball.x -= 1; 
				  ball.y += 2; 
			  }                
			                   
			                   
			  else if(bool ==1){
				if(arme.endeUnterarmX != 90 || arme.beginnUnterarmX != 55|| arme.endeUnterarmY != 190 || arme.endeUnterarmX != 198){
					if(arme.endeUnterarmX > 90){
						arme.endeUnterarmX-=1;
					}
					if(arme.beginnUnterarmX > 55){
						arme.beginnUnterarmX -=1;
					}
					
					if(arme.endeUnterarmX > 90){
						arme.endeUnterarmX-=1;
					}
					if(arme.beginnUnterarmX <55){
						arme.beginnUnterarmX +=1;
					}
					if(arme.beginnUnterarmY>198){
						arme.beginnUnterarmY-=1;
					}
					if(arme.beginnUnterarmY<198){
						arme.beginnUnterarmY+=1;
					}
					if(arme.endeUnterarmY>190){
						arme.endeUnterarmY-=1;
					}
					if(arme.endeUnterarmY<190){
						arme.endeUnterarmY+=1;
					}
					
						
				}				  
				  if(ball.x<(162)){
					ball.x += ball.vxWurf;
					ball.y -= (0.0005*(ball.x-170)*(ball.x-170)) ;
				  }            
				               
				  else if(ball.x>(161)){
					ball.x += ball.vxWurf;
					ball.y += (0.0005*(ball.x-170)*(ball.x-170)) ;
				  }            
			  }                
			                   
			  else if(bool ==2){ 

				if(ball.y>180){
					ball.x -= 1;   
					ball.y -=1;	 
				} 
				else{
					arme.endeUnterarmX +=2;
					arme.beginnUnterarmX +=2;
					ball.x -= 1;   
					ball.y +=1;
				}
			  } 

			else if(bool == 3){
				if(arme.endeUnterarmX != 90 || arme.beginnUnterarmX != 55){
					if(arme.endeUnterarmX > 90){
						arme.endeUnterarmX-=1;
					}
					if(arme.beginnUnterarmX > 55){
						arme.beginnUnterarmX -=1;
					}
					
					if(arme.endeUnterarmX > 90){
						arme.endeUnterarmX-=1;
					}
					if(arme.beginnUnterarmX <55){
						arme.beginnUnterarmX +=1;
					}
				} 
				else{
					
					arme.endeUnterarmY -= 2;
				arme.beginnUnterarmY -=1;
				  ball.x = arme.endeUnterarmX;
				  ball.y= arme.endeUnterarmY;
				  if(arme.endeUnterarmY==120){
					  bool = 1;
				  } 
				}			  
			}   

			
			  raf = window.requestAnimationFrame(draw);
			}                  
                               
			canvas.addEventListener('mouseover', function(e){
			  raf = window.requestAnimationFrame(draw);
			});                
                               
			canvas.addEventListener("mouseout",function(e){
			  window.cancelAnimationFrame(raf);
			});                
                               
			ball.draw();       
			arme.draw();       
				               
				}              
  </script>                    
 </head>                       
 <body onload="draw();">       
   <canvas id="canvas" width="250" height="250"></canvas>
 </body>                       
</html>                        