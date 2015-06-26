var sssback_service = '/sssback/web/sssback/es/web/1/images/';

var holder = 
	document.getElementById('holder'),
    tests = {
      filereader: typeof FileReader != 'undefined',
	  //The in operator returns true if the specified property is in the specified object.
      dnd: 'draggable' in document.createElement('span'), 
      formdata: !!window.FormData
    }, 
    support = {
      filereader: document.getElementById('filereader'),
      formdata: document.getElementById('formdata'),
      //progress: document.getElementById('progress')
    },
    acceptedTypes = {
      'image/png': true,
      'image/jpeg': true,
      'image/gif': true
    },
  
    fileupload     = document.getElementById('upload'),
	title          = document.getElementById('title');
	
//end holder
	
	
//Muetsra o oculta segun las APIs soportadas
"filereader formdata".split(' ').forEach(function (api) {
  if (tests[api] === false) {
	support[api].className = 'fail';
  } else {		
	support[api].className = 'hidden';
  }
});


function readFileBrowser(){
	var image_file = document.getElementById('image_file');	
	readfiles(image_file["files"]);
}

function previewfile() {

  var image_file = document.getElementById('image_file');		
  var files = image_file["files"];
  
  for (var i = 0, file; file = files[i]; ++i) {
	  if (tests.filereader === true && acceptedTypes[file.type] === true) {
		var reader = new FileReader();
		reader.onload = function (event) {
		  var image = new Image();
		  image.src = event.target.result;
		  image.width = 250; // a fake resize
		  holder.appendChild(image);
		};

		reader.readAsDataURL(file);
	  }  else {
		holder.innerHTML += '<p>Uploaded ' + file.name + ' ' + (file.size ? (file.size/1024|0) + 'K' : '');
		console.log(file);
	  }
	}  
}

function readfiles(files) {
   
    //comprobar titulo foto	
	if ( document.getElementById('title').value == "" ) {
		alert("Cuenta algo de la foto");
		document.getElementById('title').focus();
		return;
	}	
	
	//mostrar GIF
	document.getElementById('loader_gif').style.display = 'block';
	document.getElementById('content_upload').style.display = 'none';
	
	
	
    var formData = tests.formdata ? new FormData() : null;    
	for (var i = 0, file; file = files[i]; ++i) {
	  if (tests.formdata) formData.append("foo", file);
      previewfile(files[i]);
    }

    // now post a new XHR request
    if (tests.formdata) {
      var xhr = new XMLHttpRequest();
      xhr.open('POST', sssback_service );      
      xhr.onload = function() {
        //progress.value = progress.innerHTML = 100;
		
      };
	  
	  //retorno de Json
	  xhr.onreadystatechange = function() {	    
		
		 
		if (xhr.status == 200 ){
			console.info("Imgane subida OK, url:" +	xhr.responseText );
			 if (xhr.responseText != ""){
		    	var data = JSON.parse(xhr.responseText);
				if (data != null){
					//Para formulario Sponsors polo
					//var image = document.getElementById('formulario_sponsor_image');				
					//image.value = data;
					//console.log(image.value);
				}
			 }
		}else{
			console.error("Error en retorno: " + xhr.status);
		}
       
		
		
		//limpiar campos
		document.getElementById('title').value="";
		document.getElementById('holder').innerHTML = "";
				
		var url = document.location.href;
		//recarga la url sin #openModal
		document.location.href = url.split("#")[0]; //+ "#close";
				
	};

     
      //Si es para el album o es foto de portada del spot/rider/sponsor
      //param: album/portada
      formData.append('type', type);
      
      //Entidad de la foto spot=3 rider=4 sponsor=5
      formData.append('entity', entity);

      //Id del spot/rider/sponsor
      formData.append('id', identity);

       formData.append('title', document.getElementById('title').value);	  
	   xhr.send(formData);
	
    }
	
}





if (tests.dnd) { 
  holder.ondragover = function () { this.className = 'hover'; return false; };
  holder.ondragend = function () { this.className = ''; return false; };
  holder.ondrop = function (e) {
    this.className = '';
    e.preventDefault();
    readfiles(e.dataTransfer.files);	
  }
} else {
  fileupload.className = 'hidden';
  fileupload.querySelector('input').onchange = function () {
    readfiles(this.files);	
  };
}
