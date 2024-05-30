let username =[];
let password =[];
let forms = document.getElementById("Data");
let getUsername = document.getElementById("UN");
let getPassword = document.getElementById("PS");
let validateButton = document.getElementById("Validation");
let checkUsername;
let checkPassword;

validateButton.addEventListener("click", event =>{
   let username = getUsername.value;
   let password = getPassword.value;

   CheckValidation(username);
   SeeValidation(password);
})

function CheckValidation(username) 
{ 
    let usernameSize = username;
    let isUsernameValid = false;
    
    const CharCount=  /^[A0-Z0-z0]{7,}$/;
    if(!CharCount.test(usernameSize)) 
    { 
    alert("Error, No Special Characters or minimum characters");
    isUsernameValid = false;
    }
    else
    { 
    alert("Success");
    return isUsernameValid = true;
    }
}

function SeeValidation(password){
    let
}