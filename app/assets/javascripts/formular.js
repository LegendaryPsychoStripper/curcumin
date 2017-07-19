function validation_email() {
  var valid = 1;
  var email = document.getElementById('email');
  var email_validation = document.getElementById('email_validation');
 var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	
	
  
  if (email.value === "") {
    valid = 0;
    email_validation.innerHTML = "Field Required";
   
    email.style.backgroundColor = "#FFDFDF";
  } else {
    email.placeholder = "email";
    email.style.backgroundColor = "transparent";
  }
  
	
  if(!filter.test(email.value)) {
    valid = 0;
    email_validation.innerHTML = "Invalid email address";
    
    email.style.backgroundColor = "#FFDFDF";
  } else {
    email.placeholder = "email";
    email.style.backgroundColor = "transparent";
  }
  if (!valid)
    return false;
}

function validation_name(){
	
	
var name = document.getElementById('name');
var name_validation = document.getElementById("name_validation");
var valid = 1;
	
	if (name.value === "") {
    valid = 0;
    name.placeholder = "Nume obligatoriu";
    
    name.style.backgroundColor = "#FFDFDF";
  } else {
    name.placeholder = "Name";
    name.style.backgroundColor = "transparent";
  }
	
	
	if (!valid)
    return false;


	
}


function prenume_validation(){
	
	var valid = 1;
	var prenume = document.getElementById('prenume');
	var prenume_validation = document.getElementById("prenume_validation");
	var valid = 1;
	
	if (prenume.value === "") {
    valid = 0;
    prenume.placeholder = "Prenume obligatoriu";
    
    prenume.style.backgroundColor = "#FFDFDF";
  } else {
    prenume.placeholder = "Prenume";
    prenume.style.backgroundColor = "transparent";
  }
	
	
	if (!valid)
    return false;
	
}
	
	
	
	function check_if_empty_nume(){
		
		
		var name = document.getElementById('name');
		var name_validation = document.getElementById("name_validation");
		var valid = 1;
	
	if (name.value === "") {
    valid = 0;
    name.placeholder = "Nume obligatoriu";
    
    name.style.backgroundColor = "#FFDFDF";
  } else {
    name.placeholder = "Nume";
    name.style.backgroundColor = "transparent";
  }
		
		if (!valid)
    	return false;
	
		
	}
	

function check_if_empty_prenume(){
	
		var valid = 1;
		
		var prenume = document.getElementById('prenume');
		var prenume_validation = document.getElementById("prenume_validation");
		var valid = 1;
	
	if (prenume.value === "") {
    valid = 0;
    prenume.placeholder = "Prenume obligatoriu";
   
    prenume.style.backgroundColor = "#FFDFDF";
  } else {
    prenume.placeholder = "Prenume";
    prenume.style.backgroundColor = "transparent";
	  
  }
		check_if_empty_nume();
		if (!valid)
    	return false;
		
		
	}



function check_if_empty_email() {
  var valid = 1;
  var email = document.getElementById('email');
  var email_validation = document.getElementById('email_validation');
 var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	
	
  
  if (email.value === "") {
    valid = 0;
    email.placeholder = "Email obligatoriu";
    
    email.style.backgroundColor = "#FFDFDF";
  } else {
    email.placeholder = "Email";
    email.style.backgroundColor = "transparent";
  }
  
  if(!filter.test(email.value)) {
    valid = 0;
    email.placeholder = "Adresa email invalida";
    
    email.style.backgroundColor = "#FFDFDF";
  } else {
    email.placeholder = "Email";
    email.style.backgroundColor = "transparent";
  }
	
	check_if_empty_prenume();
    if (!valid)
    return false;
}




function	phone_validation(){
	
	
	var phone = document.getElementById('phone');
	var phone_validation = document.getElementById("phone_validation");
	var valid = 1;
	
	if (phone.value === "") {
    valid = 0;
    phone.placeholder = "Numar obligatoriu";
    
    phone.style.backgroundColor = "#FFDFDF";
  } else {
    phone.placeholder = "Phone";
    phone.style.backgroundColor = "transparent";
  }
	
}
	



function check_if_empty_phone(){
	
	
		var phone = document.getElementById('phone');
		var phone_validation = document.getElementById("phone_validation");
		var valid = 1;
	
	if (phone.value === "") {
    valid = 0;
    phone.placeholder = "Telefon obligatoriu";
    
    phone.style.backgroundColor = "#FFDFDF";
  } else {
    phone.placeholder = "Phone";
    phone.style.backgroundColor = "transparent";
	  
  }
		check_if_empty_email();
		if (!valid)
    	return false;
		
		
	}




function	tara_validation(){
	
	var valid = 1;
	var tara = document.getElementById('tara');
	var tara_validation = document.getElementById("tara_validation");
	var valid = 1;
	
	if (tara.value === "") {
    valid = 0;
    tara.placeholder = "Tara obligatorie";
    
    tara.style.backgroundColor = "#FFDFDF";
  } else {
    tara.placeholder= "Tara";
    tara.style.backgroundColor = "transparent";
  }
	
	
	if (!valid)
    return false;
	
}


function check_if_empty_tara(){
	
		var valid = 1;
		
		var tara = document.getElementById('tara');
		var tara_validation = document.getElementById("tara_validation");
		var valid = 1;
	
	if (tara.value === "") {
    valid = 0;
    tara.placeholder = "Tara obligatorie";
  
    tara.style.backgroundColor = "#FFDFDF";
  } else {
    tara.placeholder = "Tara";
    tara.style.backgroundColor = "transparent";
	  
  }
		check_if_empty_phone();
		if (!valid)
    	return false;
		
		
	}




function judet_validation(){
	
	var valid = 1;
	var judet = document.getElementById('judet');
	var judet_validation = document.getElementById("judet_validation");
	var valid = 1;
	
	if (judet.value === "") {
    valid = 0;
    judet.placeholder = "Judet obligatoriu";
    
    judet.style.backgroundColor = "#FFDFDF";
  } else {
    judet.placeholder = "Judet";
    judet.style.backgroundColor = "transparent";
  }
	
	
	if (!valid)
    return false;
	
}


function check_if_empty_judet(){
	
		var valid = 1;
		
		var judet = document.getElementById('judet');
		var judet_validation = document.getElementById("judet_validation");
		var valid = 1;
	
	if (judet.value === "") {
    valid = 0;
    judet.placeholder = "Judet obligatoriu";
    
    judet.style.backgroundColor = "#FFDFDF";
  } else {
    judet.placeholder= "Judet";
    judet.style.backgroundColor = "transparent";
	  
  }
		check_if_empty_tara();
		if (!valid)
    	return false;
		
		
	}




function	oras_validation(){
	
	var valid = 1;
	var oras = document.getElementById('oras');
	var oras_validation = document.getElementById("oras_validation");
	var valid = 1;
	
	if (oras.value === "") {
    valid = 0;
    oras.placeholder = "Oras obligatoriu";
    
    oras.style.backgroundColor = "#FFDFDF";
  } else {
    oras.placeholder = "Oras";
    oras.style.backgroundColor = "transparent";
  }
	
	
	if (!valid)
    return false;
	
}


function check_if_empty_oras(){
	
		var valid = 1;
		
		var oras = document.getElementById('oras');
		var oras_validation = document.getElementById("oras_validation");
		var valid = 1;
	
	if (oras.value === "") {
    valid = 0;
    oras.placeholder = "Oras obligatoriu";
    
    oras.style.backgroundColor = "#FFDFDF";
  } else {
    oras.placeholder = "Oras";
    oras.style.backgroundColor = "transparent";
	  
  }
		check_if_empty_tara();
		if (!valid)
    	return false;
		
		
	}





function	codpostal_validation(){
	
	var valid = 1;
	var codpostal = document.getElementById('codpostal');
	var codpostal_validation = document.getElementById("codpostal_validation");
	
	
	if (codpostal.value === "") {
    valid = 0;
    codpostal.placeholder = "Cod postal obligatoriu";
    
    codpostal.style.backgroundColor = "#FFDFDF";
  } else {
    codpostal.placeholder = "Cod postal";
    codpostal.style.backgroundColor = "transparent";
  }
	
	
	if (!valid)
    return false;
	
}


function check_if_empty_codpostal(){
	
		var valid = 1;
		
		var codpostal = document.getElementById('codpostal');
		var codpostal_validation = document.getElementById("codpostal_validation");
		
	
	if (codpostal.value === "") {
    valid = 0;
    codpostal.placeholder = "Cod postal obligatoriu";
    
    codpostal.style.backgroundColor = "#FFDFDF";
  } else {
    codpostal.placeholder = "Cod postal";
    codpostal.style.backgroundColor = "transparent";
	  
  }
		check_if_empty_oras();
		if (!valid)
    	return false;
		
		
	}


function	adresa_validation(){
	
	var valid = 1;
	var adresa = document.getElementById('adresa');
	var adresa_validation = document.getElementById("adresa_validation");
	var valid = 1;
	
	if (adresa.value === "") {
    valid = 0;
    adresa.placeholder = "Adresa obligatorie";
    
    adresa.style.backgroundColor = "#FFDFDF";
  } else {
    adresa.placeholder = "adresa";
    adresa.style.backgroundColor = "transparent";
  }
	
	
	if (!valid)
    return false;
	
}




function	check_if_empty_adresa(){
	
	var valid = 1;
	var adresa = document.getElementById('adresa');
	var adresa_validation = document.getElementById("adresa_validation");
	var valid = 1;
	
	if (adresa.value === "") {
    valid = 0;
    adresa.placeholder = "Adresa obligatorie";
    
    adresa.style.backgroundColor = "#FFDFDF";
  } else {
    adresa.placeholder = "adresa";
    adresa.style.backgroundColor = "transparent";
  }
	
	check_if_empty_oras();
	if (!valid)
    return false;
	
}



function	mesaj_validation(){
	
	var valid = 1;
	var mesaj = document.getElementById('mesaj');
	var mesaj_validation = document.getElementById("mesaj_validation");
	var valid = 1;
	
	if (mesaj.value === "") {
    valid = 0;
    mesaj.placeholder = "adresa obligatoriu";
    
    mesaj.style.backgroundColor = "#FFDFDF";
  } else {
    mesaj.placeholder = "mesaj";
    mesaj.style.backgroundColor = "transparent";
  }
	
	
	if (!valid)
    return false;
	
}


function	check_if_empty_mesaj(){
	
	var valid = 1;
	var mesaj = document.getElementById('mesaj');
	var mesaj_validation = document.getElementById("mesaj_validation");
	var valid = 1;
	
	if (mesaj.value === "") {
    valid = 0;
    mesaj.placeholder = "adresa obligatoriu";
    
    mesaj.style.backgroundColor = "#FFDFDF";
  } else {
    mesaj.placeholder = "mesaj";
    mesaj.style.backgroundColor = "transparent";
  }
	
	check_if_empty_adresa();
	if (!valid)
    return false;
	
}




function	mesaj_validation(){
	
	var valid = 1;
	var mesaj = document.getElementById('mesaj');
	var mesaj_validation = document.getElementById("mesaj_validation");
	var valid = 1;
	
	if (mesaj.value === "") {
    valid = 0;
    mesaj.placeholder = "adresa obligatoriu";
    
    mesaj.style.backgroundColor = "#FFDFDF";
  } else {
    mesaj.placeholder = "mesaj";
    mesaj.style.backgroundColor = "transparent";
  }
	
	
	if (!valid)
    return false;
	
}







