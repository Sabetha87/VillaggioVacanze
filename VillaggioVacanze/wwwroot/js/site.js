function CreateUser() {
    var body = {};
    body.UserName = document.querySelector("#UserName").value;
    body.Email = document.querySelector("#Email").value;
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
                    </div>
            `;
            }
            else {
                document.getElementById("CreateUserModalResult").innerHTML = `
                    <div class="alert alert-danger alert-dismissible fade show mt-3" role="alert">
                        <strong>Registrazione fallita :(</strong>
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
                window.location.reload();
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
