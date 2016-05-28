  <script type="application/javascript">
  var bool = 3;
    function draw() {
      var canvas = document.getElementById("canvas");
	  
      if (canvas.getContext) {
        var ctx = canvas.getContext("2d");
		
        ctx.fillStyle = "rgb(0,0,0)";
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
			  
			  
			  // Hier beginnt der bereich, in dem die die Hilfsvariable "bool" Werte zu gewiesen bekommt.
			  // Diese werden anhand von den X und Y Koordinaten von Armen und Ball vergeben
			  
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
				  //Hier werden die Arme bewegt, damit der Ball geworfen werden kann
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
					//hier wird die Aufwärtsbewegung des Balls berechnet
				  if(ball.x<(162)){
					ball.x += ball.vxWurf;
					ball.y -= (0.0005*(ball.x-170)*(ball.x-170)) ;
				  }            
				     //hier die Abwärtsbewegung         
				  else if(ball.x>(161)){
					ball.x += ball.vxWurf;
					ball.y += (0.0005*(ball.x-170)*(ball.x-170)) ;
				  }            
			  }                
			       
					//Dieser zustand trifft ein, sobald der Ball die Wand berührt.
					
			  else if(bool ==2){ 
				//hier bewegt sich der Ball nach dem er auf der Schräge gelandet ist wieder aufwärts
				if(ball.y>180){
					ball.x -= 1;   
					ball.y -=1;	 
				} 
				
				//hier bewegt sich der Ball, sold er zu hoch ist wieder nach untern (simuliert die Schwerkraft)
				// und geht wieder in Richtung Spieler
				else{
					arme.endeUnterarmX +=2;
					arme.beginnUnterarmX +=2;
					ball.x -= 1;   
					ball.y +=1;
				}
			  } 
			
			// Hier werden die Arme nach dem Wurd zurück an den Körper gezogen. Wenn sie in der richtigen 
			// Position sind und der Ball in etwa auf der selben Höhe wie das Ende des Unterarmes ist,
			// wird der Ball gefangen
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
			} 
				
            //Actionlistener -> sobald die Maus über der Grafik ist bewegt sie sich. 
			// Theoretisch würde sie nie damit aufhören, aber siehe Eventlistener Nr. 2
			canvas.addEventListener('mouseover', function(e){
			  raf = window.requestAnimationFrame(draw);
			});                
            //Hier wird festgelegt, dass die Grafik sich nicht mehr bewegt, sobald die Maus
			// nicht mehr drüber ist.
			canvas.addEventListener("mouseout",function(e){
			  window.cancelAnimationFrame(raf);
			});                
                               
			ball.draw();       
			arme.draw();       
				               
}              
  </script>                                