/**
 * 
 */
const usernameEl = document.querySelector('#txtuserid');
const passwordEl = document.querySelector('#txtpassword');

const form = document.querySelector('#signin');

/*
else if (!isBetween(username.length, min, max)) {
        showError(usernameEl, `Username must be between ${min} and ${max} characters.`)
    } 
*/
const checkUsername = (ele) => {

    let valid = false;

    const min = 3,
        max = 25;

    const username = ele.value.trim();

    if (!isRequired(username)) {
        showError(ele, 'UserID cannot be blank.');
    } else if ( !isAlphabets(username)) 
	{
		showError(ele, ele.id + ' must be alphabets');
	}
	else if (!isBetween(username.length, min, max)) {
        showError(ele, ele.id +` must be between ${min} and ${max} characters.`)
    } 	
	else {
        showSuccess(ele);
        valid = true;
    }
    return valid;
};


const checkEmail = () => {
    let valid = false;
    const email = emailEl.value.trim();
    if (!isRequired(email) || email.length() ==0) {
        showError(emailEl, 'Email cannot be blank.');
    } else if (!isEmailValid(email)) {
        showError(emailEl, 'Email is not valid.')
    } else {
        showSuccess(emailEl);
        valid = true;
    }
    return valid;
};



const checkPassword = () => {
    let valid = false;


    const password = passwordEl.value.trim();

    if (!isRequired(password)) {
        showError(passwordEl, 'Password cannot be blank.');
    } else if (!isPasswordSecure(password)) {
        showError(passwordEl, 'Password must has at least 8 characters that include at least 1 lowercase character, 1 uppercase characters, 1 number, and 1 special character in (!@#$%^&*)');
    } else {
        showSuccess(passwordEl);
        valid = true;
    }

    return valid;
};


const isEmailValid = (email) => {
    const re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
};

const isPasswordSecure = (password) => {
    const re = new RegExp("^(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");
    return re.test(password);
};

const isRequired = value => value === ''? false : true;
const isBetween = (length, min, max) => length < min || length > max ? false : true;
const isAlphabets = (name,min,max) => {
	const re = /^[a-zA-Z ]*$/;
	return re.test(name);
} 

const showError = (input, message) => {
    // get the form-field element
    const formField = input.parentElement;
    // add the error class
    formField.classList.remove('success');
    formField.classList.add('error');

    // show the error message
    const error = formField.querySelector('small');
    error.textContent = message;
};

const showSuccess = (input) => {
    // get the form-field element
    const formField = input.parentElement;

    // remove the error class
    formField.classList.remove('error');
    formField.classList.add('success');

    // hide the error message                            
    const error = formField.querySelector('small');
    error.textContent = '';
}


form.addEventListener('submit', function (e) {
    // prevent the form from submitting
    e.preventDefault();

    // validate fields
    let isUsernameValid = checkUsername(usernameEl),  isPasswordValid = checkPassword();

    let isFormValid = isUsernameValid && isPasswordValid;

    // submit to the server if the form is valid
    if (isFormValid) {
		
		form.submit();
    }
});


const debounce = (fn, delay = 500) => {
    let timeoutId;
    return (...args) => {
        // cancel the previous timer
        if (timeoutId) {
            clearTimeout(timeoutId);
        }
        // setup a new timer
        timeoutId = setTimeout(() => {
            fn.apply(null, args)
        }, delay);
    };
};

form.addEventListener('input', debounce(function (e) {
    switch (e.target.id) {
        case 'txtuserid':
            checkUsername(e.target);
            break;
	
		case 'txtpassword':
		   checkPassword();
		   break;
					
    }
}));



