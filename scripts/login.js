const openFormBtn = document.querySelector('#open-form');
home = document.querySelector('.home');
container = document.querySelector('.container');
closeFormBtn = document.querySelector('.close-form');
signupBtn = document.querySelector('#signup');
loginBtn = document.querySelector('#login');

// When the "Login" button is clicked, add the "show" class to the "home" section
openFormBtn.addEventListener('click', () => home.classList.add('show'));

closeFormBtn.addEventListener('click', () => home.classList.remove('show'));

// Add event listener to the "Signup" link inside the form
signupBtn.addEventListener("click", (e) => {
  e.preventDefault();
  // When the "Signup" link is clicked, add the "active" class to the form container
  // This will show the signup form and hide the login form since the .signup class is set to display:block while .login is set to display:none
  container.classList.add("active");
});
// Add event listener to the "Login" link inside the form
loginBtn.addEventListener("click", (e) => {
  e.preventDefault();
  // When the "Login" link is clicked, remove the "active" class from the form container
  // This will show the login form and hide the signup form since the .login class is set to display:block while .signup is set to display:none
  container.classList.remove("active");
});