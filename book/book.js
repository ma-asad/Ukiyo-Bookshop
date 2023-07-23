// cart open-close
let cartLogo = document.querySelector('#cart-logo'); 
let cart = document.querySelector('.cart');
let cartClose = document.querySelector('#cart-close');

cartLogo.onclick = ()=> {
  cart.classList.add("active");
}

cartClose.onclick = ()=> {
  cart.classList.remove("active");
}


// functioning cart
if (document.readyStates == 'loading'){
  document.addEventListener('DOMContentLoaded', ready);
} else {
  ready();
}


// removing item from cart
function ready(){
    var removeCartBtn = document.getElementsByClassName('remove');
    console.log(removeCartBtn);
    for (var i = 0; i < removeCartBtn.length; i++){
        var button = removeCartBtn[i]
        button.addEventListener('click', removeCartItem);
    }

// adding to cart
var addToCart = document.getElementsByClassName('cart-btn');
for (var i = 0; i < addToCart.length; i++){
    var button = addToCart[i]
    button.addEventListener('click', addToCartClicked);
}
// buy btn
document
.getElementsByClassName('buy-btn')[0]
.addEventListener('click', buyBtnClicked);
}


function removeCartItem(event){
  var buttonClicked = event.target;
  buttonClicked.parentElement.remove();
  updatetotal();
}

function addToCartClicked(event){
    var button = event.target;
    var ourShopBooks = button.parentElement;
    var title = ourShopBooks.getElementsByClassName('book-title')[0].innerText;
    var price = ourShopBooks.getElementsByClassName('price')[0].innerText;
    var book = ourShopBooks.getElementsByClassName('book-img')[0].src;
    addBooksToCart(title, price, book);
    updatetotal();
}



function addBooksToCart(title, price, book){
    var cartBoxBooks = document.createElement('div');
    cartBoxBooks.classList.add('cart-content');
    var cartProducts = document.getElementsByClassName('cart-box')[0];
    var cartProductsTitle = cartProducts.getElementsByClassName('cart-book-title');




var contentCartBox = `

                     <img src="${book}" class="cart-book-img">
                     <div class="book-info">
                               <div class="cart-book-title">${title}</div>
                               <div class="cart-price">${price}</div>
                     </div>
                     <!--close cart-->
                     <i class="fa-solid fa-trash remove"></i>`;

cartBoxBooks.innerHTML = contentCartBox;
cartProducts.append(cartBoxBooks);
cartBoxBooks
.getElementsByClassName('remove')[0]
.addEventListener('click', removeCartItem);
}

function buyBtnClicked(){
  alert('Thank You For Shopping With Us!');
    var cartContent = document.getElementsByClassName('cart-box')[0]
    while (cartContent.hasChildNodes()){
        cartContent.removeChild(cartContent.firstChild);
    }
    updatetotal();

}



// to update total
function updatetotal(){
  var cartContent = document.getElementsByClassName('cart-box')[0];
  var cartBooks = cartContent.getElementsByClassName('cart-content');
  var total = 0;
  for (var i = 0; i < cartBooks.length; i++){
    var cartBox = cartBooks[i];
    var priceElement = cartBox.getElementsByClassName('cart-price')[0];
    var price = parseFloat(priceElement.innerText.replace('$', ''));
    total = total + price; 
  }

    document.getElementsByClassName('total-price')[0].innerText = '$' + total;
}