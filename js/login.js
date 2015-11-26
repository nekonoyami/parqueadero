$(document).ready(function () {
    $("#btnLimpiar").click(function () {
        $("input").val("");
    })

    $("#btnAceptar").click(function () {
        login();
    })
})

function login() {
    var blValido = true;
    var dato = {}
    $("input").each(function (llave, valor) {
        if (valor.value == "") {
            alert("Por favor digite: " + valor.id.substr(3))
            blValido = false;
        } else
            dato[valor.id.substr(3).toLowerCase] = valor.value
    })
    if (blValido) {
        $.ajax({
            type: "POST",
            url: "",
            data: dato
        }).done(function (data) {
            if(data == 1)
                window.location.href = "admin";
            else if(data == 0)
                window.location.href = "normal"
            else
                alert("Verifique su Usuario y contraseña \n O comunique se con su supervisor")
                
        })
    }
}