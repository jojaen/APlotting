const toggleBtn = document.querySelector('.navbar_toggleBtn');
const menu = document.querySelector('.navbar_menu');
const login = document.querySelector('.navbar_login');

toggleBtn.addEventListener('click', () => {
	menu.classList.toggle('active');
	login.classList.toggle('active');
});

const dropbtn = document.getElementById('dropbtn');
const board = document.querySelector('.content');

dropbtn.addEventListener('click', () => {
	board.classList.toggle('active');
})

const dropbtn2 = document.getElementById('dropbtn2');
const board2 = document.getElementById('content_li2');

dropbtn2.addEventListener('click', () => {
	board2.classList.toggle('active');
})