﻿function CreateUser() {
    var body = {};
    body.UserName = document.querySelector("#UserName").value;
    body.Email = document.querySelector("#Email").value;
    body.FirstName = document.querySelector("#FirstName").value;
    body.LastName = document.querySelector("#LastName").value;
    body.Password = document.querySelector("#Password").value;
    body.ConfirmPassword = document.querySelector("#ConfirmPassword").value;

    $.ajax({
        method: "POST",
        url: "/api/User/CreateUser",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(body),
        dataType: "json",
        success: function (response, status) {
            textP = document.createElement("p");
            textP.style.textAlign = "center";
            textP.innerText = response;
            if (response == "OK") {
                document.getElementById("CreateUserModalResult").innerHTML = `
                    <div class="alert alert-success alert-dismissible fade show mt-3" role="alert">
                        <strong>Benvenuto al Villaggio Vacanze!</strong>
                        <p>Sei stato registrato con successo.</p>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>`;
               
                window.setTimeout(refreshPage, 1000);
            }
            else {
                document.getElementById("CreateUserModalResult").innerHTML = `
                    <div class="alert alert-danger alert-dismissible fade show mt-3" role="alert">
                        <strong>Registrazione fallita :(</strong>
                        <p>${response}</p>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>`;

            }
          
           
            this.always();
        },
        error: function (error, status) {
            document.getElementById("CreateUserModalResult").innerHTML = `
                    <div class="alert alert-danger alert-dismissible fade show mt-3" role="alert">
                        <strong>Registrazione fallita :(</strong>
                        <p>Email o password non corrette. La password deve avere almeno 6 caratteri e la mail la @</p>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>`;
            this.always();
        },
        always: function () {
            document.getElementById("CreateUserForm").reset();
        }
    });
};



function LoginUser() {
    var body = {};
    body.UserName = document.querySelector("#LoginUserName").value;
    body.Password = document.querySelector("#LoginPassword").value;
    $.ajax({
        method: "POST",
        url: "/api/User/LoginUser",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(body),
        dataType: "json",
        success: function (response, status) {
            textP = document.createElement("p");
            textP.style.textAlign = "center";
            textP.innerText = response;
            if (response == "OK") {
                document.getElementById("LoginUserModalResult").innerHTML = `
                    <div class="alert alert-success alert-dismissible fade show mt-3" role="alert">
                        <strong>Benvenuto al Villaggio Vacanze!</strong>
                        <p>Sei stato loggato con successo.</p>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
            `;
                
                window.setTimeout(refreshPage, 1000);
            }
            else {
                document.getElementById("LoginUserModalResult").innerHTML = `
                    <div class="alert alert-danger alert-dismissible fade show mt-3" role="alert">
                        <strong>Login fallita :(</strong>
                        <p>${response}</p>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
            `;

            }

           
            this.always();
        },
        error: function (error, status) {
            console.log(body);
            console.log(error);
            console.log(status);
            this.always();
        },
        always: function () {
            document.getElementById("LoginUserForm").reset();
          

        }
    });
};


function LogoutUser() {
    var body = {};
    $.ajax({
        method: "POST",
        url: "/api/User/LogoutUser",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(body),
        dataType: "json",
        success: function (response, status) {

          
            window.location = "/";
            this.always();
        },
        error: function (error, status) {
            console.log(body);
            console.log(error);
            console.log(status);
            this.always();
        },
        always: function () {
          

        }
    });
};


function PrenotaUser(idCrossAttrazionePeriodo, indice) {
   
    var body = {};
    body.numPosti = document.getElementById("#" + indice + "numeroPostiScelti").value;
    body.Id = idCrossAttrazionePeriodo;
    console.log(body);
    $.ajax({
        method: "POST",
        url: "/api/User/PrenotaUser",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(body),
        dataType: "json",
        success: function (response, status) {
            textP = document.createElement("p");
            textP.style.textAlign = "center";
            textP.innerText = response;
            if (response == "OK") {
                document.getElementById("PrenotaUserResult").innerHTML = `
                    <div class="alert alert-success">
                        <strong>Buon viaggio!</strong>
                        <p>La tua prenotazione è avvenuta con successo.</p>
                    </div>`;
               

                setTimeout(() => {
                    window.location.replace('/Prenotazione/Prenotazioni');
                },1000)
                //window.setTimeout( window.location.replace('/Prenotazione/Prenotazioni') , 5000);
               
            }
            else {
                document.getElementById("PrenotaUserResult").innerHTML = `
                    <div class="alert alert-danger">
                        <strong>Prenotazione fallita!</strong>
                        <p>Non ci sono abbastanza posti disponibili oppure hai scelto 0 posti!</p>
                    </div>`;
            }


            this.always();
        },
        error: function (error, status) {
            console.log("sono in error del js", error);
            document.getElementById("PrenotaUserResult").innerHTML = `
                    <div class="alert alert-danger alert-dismissible fade show mt-3" role="alert">
                        <strong>Prenotazione fallita :(</strong>
                        <p>Errore nella prenotazione</p>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>`;
            this.always();
        },
        always: function () {


           
        }
    });
};



function ModificaPosti(idPrenotazione, indice) {

    var body = {};
    body.NumPostiPrenotati = document.getElementById("#" + indice + "numeroPostiModificati").value;
    body.Id = idPrenotazione;
    console.log(body);
    $.ajax({
        method: "POST",
        url: "/api/User/ModificaPosti",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(body),
        dataType: "json",
        success: function (response, status) {
            textP = document.createElement("p");
            textP.style.textAlign = "center";
            textP.innerText = response;
            if (response == "OK") {
                document.getElementById("ModificaPostiResult").innerHTML = `
                    <div class="alert alert-success">
                        <strong>Buon viaggio!</strong>
                        <p>La tua modifica è avvenuta con successo.</p>
                    </div>`;


                setTimeout(() => {
                    window.location.reload();
                }, 1000)
                //window.setTimeout( window.location.replace('/Prenotazione/Prenotazioni') , 5000);

            }
            else {
                document.getElementById("ModificaPostiResult").innerHTML = `
                    <div class="alert alert-danger">
                        <strong>Modifica fallita!</strong>
                        <p>Non ci sono abbastanza posti disponibili oppure hai scelto 0 posti!</p>
                    </div>`;
            }


            this.always();
        },
        error: function (error, status) {
            console.log("sono in error del js", error);
            document.getElementById("ModificaUserResult").innerHTML = `
                    <div class="alert alert-danger alert-dismissible fade show mt-3" role="alert">
                        <strong>Modifica fallita :(</strong>
                        <p>Errore nella modifica</p>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>`;
            this.always();
        },
        always: function () {



        }
    });
};

function CancellaPrenotazione(idPrenotazione) {

    var body = {};
    body.Id = idPrenotazione;
    console.log(body);
    $.ajax({
        method: "POST",
        url: "/api/User/CancellaPrenotazione",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(body),
        dataType: "json",
        success: function (response, status) {
            textP = document.createElement("p");
            textP.style.textAlign = "center";
            textP.innerText = response;
            if (response == "OK") {
                document.getElementById("ModificaPostiResult").innerHTML = `
                    <div class="alert alert-success">
                        <strong>Eliminazione avvenuta con successo!</strong>
                        <p>Che peccato!</p>
                    </div>`;


                setTimeout(() => {
                    window.location.reload();
                }, 1000)
                //window.setTimeout( window.location.replace('/Prenotazione/Prenotazioni') , 5000);

            }
            else {
                document.getElementById("ModificaPostiResult").innerHTML = `
                    <div class="alert alert-danger">
                        <strong>Cancellazione fallita!</strong>
                        <p>Qualcosa è andato storto</p>
                    </div>`;
            }


            this.always();
        },
        error: function (error, status) {
            console.log("sono in error del js", error);
            document.getElementById("ModificaUserResult").innerHTML = `
                    <div class="alert alert-danger alert-dismissible fade show mt-3" role="alert">
                        <strong>Cancellazione fallita :(</strong>
                        <p>Qualcosa è andato storto</p>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>`;
            this.always();
        },
        always: function () {



        }
    });
};






function refreshPage() {


    location.reload(true);
}