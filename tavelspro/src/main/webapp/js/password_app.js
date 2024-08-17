
const password = document.querySelector('#txtpassword');

const ctogglePassword = document.querySelector('#ctogglePassword');
const cpassword = document.querySelector('#confirm-password');

togglePassword.addEventListener('click', function (e) {
    // toggle the type attribute
    const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
    password.setAttribute('type', type);
    // toggle the icon
    this.classList.toggle('fa-eye-slash');

});



ctogglePassword.addEventListener('click', function (e) {
    // toggle the type attribute
    const type = cpassword.getAttribute('type') === 'password' ? 'text' : 'password';
    cpassword.setAttribute('type', type);
    // toggle the icon
    this.classList.toggle('fa-eye-slash');

});