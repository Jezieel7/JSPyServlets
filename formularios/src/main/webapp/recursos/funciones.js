function validarForma(forma){
    const usuario = forma.usuario;
    if(usuario.value === "" || usuario.value === "Escribir usuario"){
        alert("Debe proporcionar un nombre de usuario");
        usuario.focus();
        usuario.select();
        return false;
    }
    const password = forma.password;
    if(password === "" || password.value.length < 3){
        alert("Debe proporcionar un password de al menos 3 caracteres");
        password.focus();
        password.select();
        return false;
    }
    const tecnologias = forma.tecnologia;
    let checkSeleccionado = false;
    for(let tecnologia of tecnologias){
        if(tecnologia.checked){
            checkSeleccionado = true;
        }
    }
    if(!checkSeleccionado){
        alert("Debe seleccionar una tecnologia");
        return false;
    }
    const generos = forma.genero;
    let radioSeleccionado = false;
    for(let genero of generos){
        if(genero.checked){
            radioSeleccionado = true
        }
    }
    if(!radioSeleccionado){
        alert("Debe seleccionar un genero");
        return false;
    }
    const ocupacion = forma.ocupacion;
    if(ocupacion.value === "") {
        alert("Debe seleccionar una ocupacion");
        return false;
    }
    alert("Formulario valido, enviando datos al servidor");
    return true;
}