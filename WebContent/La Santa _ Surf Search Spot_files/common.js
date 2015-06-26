var previsiones = {
	init:function(){
		$('.previsiones .down').hide();
		previsiones.slide();
	},
	slide:function(){
		$('.verMas').bind('click',function(e){

			// guardamos el mas que hemos clickado
			cual = $(this).attr('id');
			// añadimosuna clase al mas para marcarlo como seleccionado
			$(this).toggleClass('sel');
			// mostramos las rows que siguen a este mas
			$('.previsiones tr.' + cual + '').slideToggle('fast');

			// añadimos al modulo la clase para que crezca por encima de los modulos
			$('section.prev').toggleClass('sel');

			e.preventDefault();
		});
	}
};

var menu = {
	isTiny:false, //para saber si esta el menu para moviles
	init:function(){

		$('.menu-toggle').bind('click',function(){
			$('.menu-home-container').animate({
						left: "0"
						}, 1000);	
			$('#content').animate({
						left: "90%"
						}, 1000).css('position','relative');
			$('.header').animate({
						left: "90%"
						}, 1000).css('position','relative');	
			$('.footer').animate({
						left: "90%"
						}, 1000).css('position','relative');
			$('body').css('overflow','hidden');
		});
		$('.menu-toggle-close').bind('click',function(e){
			$('.menu-home-container').animate({
						left: "-100%"
						}, 1000);
			$('#content').animate({
						left: "0"
						}, 1000, function(){$(this).css('position','static')});
			$('.header').animate({
						left: "0"
						}, 1000, function(){$(this).css('position','static')});	
			$('.footer').animate({
						left: "0"
						}, 1000, function(){$(this).css('position','static')});

			$('body').css('overflow','auto');

			e.preventDefault();
		});
			
	},
	checkTiny:function(){
		if ( $('.menu-toggle').css('display')=='none' ){
			this.isTiny=false;
		}else{
			this.isTiny=true;
		}		
		console.debug('checkTiny shows: ' + this.isTiny);
	},
	//prevent click efect in menu with childrens
	preventClick:function(){
		/* TODO
		if ( !this.isTiny ) return;
		$('.preventclick').bind('click',function(e){
			e.preventDefault();
			log.debug('click on menu item with childrens');
		});
		*/
	}

}


var descripcion = {
	init:function(){		
	     //initial height
		$height = $('#entrevista').height();
		
		$('#entrevista').height('200px');
		
		$('#leermas').bind('click',function(e){						
		
			if ( $('#entrevista').height()==200 ){
				$('#entrevista').slideDown('slow', function(){
					$('#entrevista').height($height);				
				});		
			}else{
				$('#entrevista').slideUp('slow', function(){
					$('#entrevista').height('200px');				
				});
			}		
			e.preventDefault();
		});
	},	
}

/* Funcion para mostrar ocultar los comentarios*/
var comments = {
	init:function(){
		$('#respond').hide();
		$('#comment_button').bind('click',function(e){						
			$('#respond').slideToggle('slow');									
			e.preventDefault();
		});
	},	
}



$(document).ready(function() {

	if($('.previsiones').length) previsiones.init();

	//if($('.slider').length) slider.init();

	if($('.menu-toggle').length != 0){
		menu.init();
		menu.checkTiny();
		menu.preventClick();
	}	
	
	
	descripcion.init();
	comments.init();
	
	
	
	
});


