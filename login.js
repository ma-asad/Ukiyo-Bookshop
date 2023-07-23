 const openFormBtn = document.querySelector('#open-form');
 home = document.querySelector('.home');
 container = document.querySelector('.container');
 closeFormBtn = document.querySelector('.close-form');
 signupBtn = document.querySelector('#signup');
 loginBtn = document.querySelector('#login');


 openFormBtn.addEventListener('click', ()=> home.classList.add('show'));
 closeFormBtn.addEventListener('click', ()=> home.classList.remove('show'));


 signupBtn.addEventListener("click", (e) => {
    e.preventDefault();
    container.classList.add("active");
  });
  loginBtn.addEventListener("click", (e) => {
    e.preventDefault();
    container.classList.remove("active");
  });