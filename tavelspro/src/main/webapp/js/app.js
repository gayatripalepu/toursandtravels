const usernameEl = document.querySelector('#txtusername');
const cellEl = document.querySelector('#txtphonenumber');
const ageEl = document.querySelector('#txtage');
const adhaarEl = document.querySelector('#txtaadhaar');
const passwordEl = document.querySelector('#txtpassword');
const ansEl = document.querySelector('#txtans');
const genderEl = document.querySelector("#txtgender");
const form = document.querySelector('#tuserfrom');


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
        showError(ele, ele.id + ' cannot be blank.');
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


const checkCell = () => {
	let valid = false;
	const cell = cellEl.value.trim();
	if(!isRequired(cell)){
		showError(cellEl,'Cell cannot be blank.');
	} else if( !isCellValid(cell)) {
		showError(cellEl,'Cell Number must be 10 digits number only.');
	}
	else {
		showSuccess(cellEl);
		valid = true;
	}
	return valid;
}

const checkAdhaar = () => {
	let valid = false;
	const adhaar = adhaarEl.value.trim();
	if(!isRequired(adhaar)){
		showError(adhaarEl,'Adhaar cannot be blank.');
	} else if( !isAdhaarValid(adhaar)) {
		showError(adhaarEl,'Adhaar Number must be 12 digits number only.');
	}
	else {
		showSuccess(adhaarEl);
		valid = true;
	}
	return valid;
}
const checkAge = () => {
	let valid = false;
	const age = ageEl.value.trim();
	if(!isRequired(age)){
		showError(ageEl,'Age cannot be blank.');
	} else if( !isAgeValid(age)) {
		showError(ageEl,'Age Number must be 1-3 digits number only.');
	}
	else {
		showSuccess(ageEl);
		valid = true;
	}
	return valid;
}


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

const checkConfirmPassword = () => {
    let valid = false;
    // check confirm password
    const confirmPassword = confirmPasswordEl.value.trim();
    const password = passwordEl.value.trim();

    if (!isRequired(confirmPassword)) {
        showError(confirmPasswordEl, 'Please enter the password again');
    } else if (password !== confirmPassword) {
        showError(confirmPasswordEl, 'The password does not match');
    } else {
        showSuccess(confirmPasswordEl);
        valid = true;
    }

    return valid;
};

const isEmailValid = (email) => {
    const re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
};

const isCellValid = (cell) => {
	var re = /^\d{10}$/;
	//var re = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
	return re.test(cell);
	
}

const isAdhaarValid = (adhaar) => {
	var re = /^\d{12}$/;
	//var re = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
	return re.test(adhaar);
	
}
const isAgeValid = (age) => {
	var re = /^\d{2,3}$/;
	//var re = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
	return re.test(age);
	
}

const isPasswordSecure = (password) => {
    const re = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");
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
    let isUsernameValid = checkUsername(usernameEl), isAnsValid = checkUsername(ansEl),isAdhaarValid =checkAdhaar(),
		isCellValid = checkCell(), isAgeValid =checkAge(), isPasswordValid = checkPassword(), isGenderValid = checkUsername(genderEl);

    let isFormValid = isUsernameValid && isAnsValid && isAdhaarValid &&
		isCellValid && isAgeValid && isGenderValid && isPasswordValid;

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
        case 'txtusername':
            checkUsername(e.target);
            break;
		
		case 'txtphonenumber':
			checkCell();
			break;
       case 'txtage':
			checkAge();
			break;
		case 'txtgender':
			checkUsername(e.target);
			break;			
		case 'txtpassword':
		   checkPassword();
		   break;
		case 'txtans':
		   checkUsername(e.target);
		   break;
				   
		case 'txtaadhaar':
		   checkAdhaar();
		   break;				   
					
    }
}));



var show = true;
  
        function showCheckboxes() {
            var checkboxes = 
                document.getElementById("checkBoxes");
  
            if (show) {
                checkboxes.style = "display:grid;grid-template-columns: auto auto auto;padding:5px;justify-content: space-between;grid-gap: 5px;height:100px;overflow: auto;";
	show = false;
            } else {
                checkboxes.style.display = "none";
                show = true;
            }
        }