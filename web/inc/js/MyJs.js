/**
 * Created by sya on 3/15/2016.
 */
function verificationNewPassword()
{
    var password = document.getElementById("password");
    var confirmPassword = document.getElementById("confirmPassword");

    if (password.value ==""&& confirmPassword.value !="")
    {
        password.style.borderColor="red";
        confirmPassword.style.borderColor="red";
        alert("Enter your new password before you enter your confirm password");
    }
    else if (password.value!= confirmPassword.value)
    {
        password.style.borderColor="red";
        confirmPassword.style.borderColor="red";
        password.value ="";
        confirmPassword.value="";
        alert("Be sure your new password is the same to your confirm password");
    }
    else if (password.value.length<4)
    {
        password.style.borderColor = "red";
        alert("Password length should longer than 4 elements");
        password.value = "";
    }
    else
    {
        password.style.borderColor="#8bcf17";
        confirmPassword.style.borderColor="#8bcf17";
    }
}
function verificationPassword()
{
    var password = document.getElementById("newpassword");
    if (password.value.length<4)
    {
        password.style.borderColor = "red";
        alert("Password length should longer than 4 elements");
        password.value = "";
    }
    else
    {
        password.style.borderColor = "#8bcf17";
    }
}
function verificationAccount()
{
    var account = document.getElementById("newaccount");
    if(account.value.length<=6)
    {
        account.style.borderColor = "red";
        alert("CampusID should be 5 number");
        account.value = "";
    }
    else
    {
     account.style.borderColor = "#8bcf17";
    }
}