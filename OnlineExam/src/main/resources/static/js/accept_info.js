const ul_guide_common = document.getElementById('ul_guide_common');
const ul_guide_writing = document.getElementById('ul_guide_writing');
const ul_guide_practice = document.getElementById('ul_guide_practice');

const guide_common = document.getElementById('guide_common');
const guide_basic = document.getElementById('guide_basic');
const guide_writing = document.getElementById('guide_writing');
const guide_practice = document.getElementById('guide_practice');


ul_guide_common.addEventListener('click', () => {
	guide_common.classList.remove('active');
	guide_basic.classList.remove('active');
	guide_writing.classList.remove('active');
	guide_practice.classList.remove('active');
	
	guide_common.classList.toggle('active');
	guide_basic.classList.toggle('active');
	guide_writing.classList.remove('active');
	guide_practice.classList.remove('active');
})

ul_guide_writing.addEventListener('click', () => {
	guide_common.classList.remove('active');
	guide_basic.classList.remove('active');
	guide_writing.classList.remove('active');
	guide_practice.classList.remove('active');
	
	guide_common.classList.remove('active');
	guide_basic.classList.toggle('active');
	guide_writing.classList.toggle('active');
	guide_practice.classList.remove('active');
})

ul_guide_practice.addEventListener('click', () => {
	guide_common.classList.remove('active');
	guide_basic.classList.remove('active');
	guide_writing.classList.remove('active');
	guide_practice.classList.remove('active');
	
	guide_common.classList.remove('active');
	guide_basic.classList.toggle('active');
	guide_writing.classList.remove('active');
	guide_practice.classList.toggle('active');
})