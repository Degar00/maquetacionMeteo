	/*
	* Check if localStorage is avaible and show the last 10 Spots visited		
	* v1.0 AUR 08/02/2015
	*/	
	//localStorage.clear();



	var localStorageSpot = {

		numSpots: 10, // max Spots			
		aSpot: new Array(), // Array for Spot
		content: $('.spotvisited'), // html content for spots

		//check localStorage
		init: function () {				
			if (typeof(localStorage) == 'undefined' ) {
					alert('Tu navegador no soporta HTML5, prueba a navegar con Chrome o Firefox ');
					console.error('Tu navegador no soporta HTML5, prueba a navegar con Chrome o Firefox ');
				} else {			
					try {					
						this.load();
					}catch(e){				
						console.error( e );				
					}					
				}					  
		   
		},
		//load Spots from localStorage
		load: function(){			
			exist = false;
		   //load array from localStorage			
		   for ( i=0; i < this.numSpots; i++){
				if ( localStorage.getItem( 'spotvisited'+i) != null ){					
					var auxSpot = JSON.parse(localStorage.getItem( 'spotvisited'+i));										
					this.aSpot[i]=  auxSpot;											
				}							   
		   }			   			   

		},		
		//load Spots in html container	
		showSpotVisited: function(){
			if( this.aSpot!=null ){
				this.aSpot.reverse();
				for ( j=0; j < this.aSpot.length; j++){
					if ( this.aSpot[j].id != 'undefined' ){
						this.content.append('<li><a href="'+this.aSpot[j].url+'">'+this.aSpot[j].name+'</a></li>');
					}	
				}
			}	
		},
		//include spot if not exist
		addSpot: function( spot ){
			var exist = false;
			for ( i=0; i< this.aSpot.length; i++){
				if ( spot.name == this.aSpot[i].name ){
					exist=true;
				}
			}				
			if ( !exist){
			  //load in array	
			  var pos = ( this.aSpot.length < 10 ) ? this.aSpot.length: this.numSpots;
			  this.aSpot[pos] = spot;
			  //save in localStorage
			  localStorage.setItem( 'spotvisited'+pos , JSON.stringify(spot) );	
			}
			
		}

	};
