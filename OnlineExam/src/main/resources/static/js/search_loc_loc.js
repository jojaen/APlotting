const gangwon = document.getElementById("gangwon");
const gyeonggi = document.getElementById("gyeonggi");
const gyeongsang_south = document.getElementById("gyeongsang_south");
const gyeongsang_north = document.getElementById("gyeongsang_north");
const gwangju = document.getElementById("gwangju");
const daegu = document.getElementById("daegu");
const daejeon = document.getElementById("daejeon");
const busan = document.getElementById("busan");
const seoul = document.getElementById("seoul");
const sejong = document.getElementById("sejong");
const ulsan = document.getElementById("ulsan");
const incheon = document.getElementById("incheon");
const jeolla_south = document.getElementById("jeolla_south");
const jeolla_north = document.getElementById("jeolla_north");
const jeju = document.getElementById("jeju");
const chungcheong_south = document.getElementById("chungcheong_south");
const chungcheong_north = document.getElementById("chungcheong_north");

let param_location = document.getElementById("param_location");
let sel_location = document.getElementById("location");
let value;

function changeFn() {

	value = (sel_location.options[sel_location.selectedIndex].value);
	console.log(value);
	console.log(typeof(value));

	if (value == "none") {
		gangwon.classList.remove('active');
		gyeonggi.classList.remove('active');
		gyeongsang_south.classList.remove('active');
		gyeongsang_north.classList.remove('active');
		gwangju.classList.remove('active');
		daegu.classList.remove('active');
		daejeon.classList.remove('active');
		busan.classList.remove('active');
		seoul.classList.remove('active');
		sejong.classList.remove('active');
		ulsan.classList.remove('active');
		incheon.classList.remove('active');
		jeolla_south.classList.remove('active');
		jeolla_north.classList.remove('active');
		jeju.classList.remove('active');
		chungcheong_south.classList.remove('active');
		chungcheong_north.classList.remove('active');
	} else if (value == "gangwon") {
		gangwon.classList.toggle('active');
		gyeonggi.classList.remove('active');
		gyeongsang_south.classList.remove('active');
		gyeongsang_north.classList.remove('active');
		gwangju.classList.remove('active');
		daegu.classList.remove('active');
		daejeon.classList.remove('active');
		busan.classList.remove('active');
		seoul.classList.remove('active');
		sejong.classList.remove('active');
		ulsan.classList.remove('active');
		incheon.classList.remove('active');
		jeolla_south.classList.remove('active');
		jeolla_north.classList.remove('active');
		jeju.classList.remove('active');
		chungcheong_south.classList.remove('active');
		chungcheong_north.classList.remove('active');
	} else if (value == "gyeonggi") {
		gangwon.classList.remove('active');
		gyeonggi.classList.toggle('active');
		gyeongsang_south.classList.remove('active');
		gyeongsang_north.classList.remove('active');
		gwangju.classList.remove('active');
		daegu.classList.remove('active');
		daejeon.classList.remove('active');
		busan.classList.remove('active');
		seoul.classList.remove('active');
		sejong.classList.remove('active');
		ulsan.classList.remove('active');
		incheon.classList.remove('active');
		jeolla_south.classList.remove('active');
		jeolla_north.classList.remove('active');
		jeju.classList.remove('active');
		chungcheong_south.classList.remove('active');
		chungcheong_north.classList.remove('active');

	} else if (value == "gyeongsang_south") {
		gangwon.classList.remove('active');
		gyeonggi.classList.remove('active');
		gyeongsang_south.classList.toggle('active');
		gyeongsang_north.classList.remove('active');
		gwangju.classList.remove('active');
		daegu.classList.remove('active');
		daejeon.classList.remove('active');
		busan.classList.remove('active');
		seoul.classList.remove('active');
		sejong.classList.remove('active');
		ulsan.classList.remove('active');
		incheon.classList.remove('active');
		jeolla_south.classList.remove('active');
		jeolla_north.classList.remove('active');
		jeju.classList.remove('active');
		chungcheong_south.classList.remove('active');
		chungcheong_north.classList.remove('active');

	} else if (value == "gyeongsang_north") {
		gangwon.classList.remove('active');
		gyeonggi.classList.remove('active');
		gyeongsang_south.classList.remove('active');
		gyeongsang_north.classList.toggle('active');
		gwangju.classList.remove('active');
		daegu.classList.remove('active');
		daejeon.classList.remove('active');
		busan.classList.remove('active');
		seoul.classList.remove('active');
		sejong.classList.remove('active');
		ulsan.classList.remove('active');
		incheon.classList.remove('active');
		jeolla_south.classList.remove('active');
		jeolla_north.classList.remove('active');
		jeju.classList.remove('active');
		chungcheong_south.classList.remove('active');
		chungcheong_north.classList.remove('active');

	} else if (value == "gwangju") {
		gangwon.classList.remove('active');
		gyeonggi.classList.remove('active');
		gyeongsang_south.classList.remove('active');
		gyeongsang_north.classList.remove('active');
		gwangju.classList.toggle('active');
		daegu.classList.remove('active');
		daejeon.classList.remove('active');
		busan.classList.remove('active');
		seoul.classList.remove('active');
		sejong.classList.remove('active');
		ulsan.classList.remove('active');
		incheon.classList.remove('active');
		jeolla_south.classList.remove('active');
		jeolla_north.classList.remove('active');
		jeju.classList.remove('active');
		chungcheong_south.classList.remove('active');
		chungcheong_north.classList.remove('active');

	} else if (value == "daegu") {
		gangwon.classList.remove('active');
		gyeonggi.classList.remove('active');
		gyeongsang_south.classList.remove('active');
		gyeongsang_north.classList.remove('active');
		gwangju.classList.remove('active');
		daegu.classList.toggle('active');
		daejeon.classList.remove('active');
		busan.classList.remove('active');
		seoul.classList.remove('active');
		sejong.classList.remove('active');
		ulsan.classList.remove('active');
		incheon.classList.remove('active');
		jeolla_south.classList.remove('active');
		jeolla_north.classList.remove('active');
		jeju.classList.remove('active');
		chungcheong_south.classList.remove('active');
		chungcheong_north.classList.remove('active');

	} else if (value == "daejeon") {
		gangwon.classList.remove('active');
		gyeonggi.classList.remove('active');
		gyeongsang_south.classList.remove('active');
		gyeongsang_north.classList.remove('active');
		gwangju.classList.remove('active');
		daegu.classList.remove('active');
		daejeon.classList.toggle('active');
		busan.classList.remove('active');
		seoul.classList.remove('active');
		sejong.classList.remove('active');
		ulsan.classList.remove('active');
		incheon.classList.remove('active');
		jeolla_south.classList.remove('active');
		jeolla_north.classList.remove('active');
		jeju.classList.remove('active');
		chungcheong_south.classList.remove('active');
		chungcheong_north.classList.remove('active');

	} else if (value == "busan") {
		gangwon.classList.remove('active');
		gyeonggi.classList.remove('active');
		gyeongsang_south.classList.remove('active');
		gyeongsang_north.classList.remove('active');
		gwangju.classList.remove('active');
		daegu.classList.remove('active');
		daejeon.classList.remove('active');
		busan.classList.toggle('active');
		seoul.classList.remove('active');
		sejong.classList.remove('active');
		ulsan.classList.remove('active');
		incheon.classList.remove('active');
		jeolla_south.classList.remove('active');
		jeolla_north.classList.remove('active');
		jeju.classList.remove('active');
		chungcheong_south.classList.remove('active');
		chungcheong_north.classList.remove('active');

	} else if (value == "seoul") {
		gangwon.classList.remove('active');
		gyeonggi.classList.remove('active');
		gyeongsang_south.classList.remove('active');
		gyeongsang_north.classList.remove('active');
		gwangju.classList.remove('active');
		daegu.classList.remove('active');
		daejeon.classList.remove('active');
		busan.classList.remove('active');
		seoul.classList.toggle('active');
		sejong.classList.remove('active');
		ulsan.classList.remove('active');
		incheon.classList.remove('active');
		jeolla_south.classList.remove('active');
		jeolla_north.classList.remove('active');
		jeju.classList.remove('active');
		chungcheong_south.classList.remove('active');
		chungcheong_north.classList.remove('active');

	} else if (value == "sejong") {
		gangwon.classList.remove('active');
		gyeonggi.classList.remove('active');
		gyeongsang_south.classList.remove('active');
		gyeongsang_north.classList.remove('active');
		gwangju.classList.remove('active');
		daegu.classList.remove('active');
		daejeon.classList.remove('active');
		busan.classList.remove('active');
		seoul.classList.remove('active');
		sejong.classList.toggle('active');
		ulsan.classList.remove('active');
		incheon.classList.remove('active');
		jeolla_south.classList.remove('active');
		jeolla_north.classList.remove('active');
		jeju.classList.remove('active');
		chungcheong_south.classList.remove('active');
		chungcheong_north.classList.remove('active');

	} else if (value == "ulsan") {
		gangwon.classList.remove('active');
		gyeonggi.classList.remove('active');
		gyeongsang_south.classList.remove('active');
		gyeongsang_north.classList.remove('active');
		gwangju.classList.remove('active');
		daegu.classList.remove('active');
		daejeon.classList.remove('active');
		busan.classList.remove('active');
		seoul.classList.remove('active');
		sejong.classList.remove('active');
		ulsan.classList.toggle('active');
		incheon.classList.remove('active');
		jeolla_south.classList.remove('active');
		jeolla_north.classList.remove('active');
		jeju.classList.remove('active');
		chungcheong_south.classList.remove('active');
		chungcheong_north.classList.remove('active');

	} else if (value == "incheon") {
		gangwon.classList.remove('active');
		gyeonggi.classList.remove('active');
		gyeongsang_south.classList.remove('active');
		gyeongsang_north.classList.remove('active');
		gwangju.classList.remove('active');
		daegu.classList.remove('active');
		daejeon.classList.remove('active');
		busan.classList.remove('active');
		seoul.classList.remove('active');
		sejong.classList.remove('active');
		ulsan.classList.remove('active');
		incheon.classList.toggle('active');
		jeolla_south.classList.remove('active');
		jeolla_north.classList.remove('active');
		jeju.classList.remove('active');
		chungcheong_south.classList.remove('active');
		chungcheong_north.classList.remove('active');

	} else if (value == "jeolla_south") {
		gangwon.classList.remove('active');
		gyeonggi.classList.remove('active');
		gyeongsang_south.classList.remove('active');
		gyeongsang_north.classList.remove('active');
		gwangju.classList.remove('active');
		daegu.classList.remove('active');
		daejeon.classList.remove('active');
		busan.classList.remove('active');
		seoul.classList.remove('active');
		sejong.classList.remove('active');
		ulsan.classList.remove('active');
		incheon.classList.remove('active');
		jeolla_south.classList.toggle('active');
		jeolla_north.classList.remove('active');
		jeju.classList.remove('active');
		chungcheong_south.classList.remove('active');
		chungcheong_north.classList.remove('active');

	} else if (value == "jeolla_north") {
		gangwon.classList.remove('active');
		gyeonggi.classList.remove('active');
		gyeongsang_south.classList.remove('active');
		gyeongsang_north.classList.remove('active');
		gwangju.classList.remove('active');
		daegu.classList.remove('active');
		daejeon.classList.remove('active');
		busan.classList.remove('active');
		seoul.classList.remove('active');
		sejong.classList.remove('active');
		ulsan.classList.remove('active');
		incheon.classList.remove('active');
		jeolla_south.classList.remove('active');
		jeolla_north.classList.toggle('active');
		jeju.classList.remove('active');
		chungcheong_south.classList.remove('active');
		chungcheong_north.classList.remove('active');

	} else if (value == "jeju") {
		gangwon.classList.remove('active');
		gyeonggi.classList.remove('active');
		gyeongsang_south.classList.remove('active');
		gyeongsang_north.classList.remove('active');
		gwangju.classList.remove('active');
		daegu.classList.remove('active');
		daejeon.classList.remove('active');
		busan.classList.remove('active');
		seoul.classList.remove('active');
		sejong.classList.remove('active');
		ulsan.classList.remove('active');
		incheon.classList.remove('active');
		jeolla_south.classList.remove('active');
		jeolla_north.classList.remove('active');
		jeju.classList.toggle('active');
		chungcheong_south.classList.remove('active');
		chungcheong_north.classList.remove('active');

	} else if (value == "chungcheong_south") {
		gangwon.classList.remove('active');
		gyeonggi.classList.remove('active');
		gyeongsang_south.classList.remove('active');
		gyeongsang_north.classList.remove('active');
		gwangju.classList.remove('active');
		daegu.classList.remove('active');
		daejeon.classList.remove('active');
		busan.classList.remove('active');
		seoul.classList.remove('active');
		sejong.classList.remove('active');
		ulsan.classList.remove('active');
		incheon.classList.remove('active');
		jeolla_south.classList.remove('active');
		jeolla_north.classList.remove('active');
		jeju.classList.remove('active');
		chungcheong_south.classList.toggle('active');
		chungcheong_north.classList.remove('active');

	} else if (value == "chungcheong_north") {
		gangwon.classList.remove('active');
		gyeonggi.classList.remove('active');
		gyeongsang_south.classList.remove('active');
		gyeongsang_north.classList.remove('active');
		gwangju.classList.remove('active');
		daegu.classList.remove('active');
		daejeon.classList.remove('active');
		busan.classList.remove('active');
		seoul.classList.remove('active');
		sejong.classList.remove('active');
		ulsan.classList.remove('active');
		incheon.classList.remove('active');
		jeolla_south.classList.remove('active');
		jeolla_north.classList.remove('active');
		jeju.classList.remove('active');
		chungcheong_south.classList.remove('active');
		chungcheong_north.classList.toggle('active');

	}
};
function changeSel() {
	let loca = param_location.innerText;
	console.log("param_location.innertext: " + loca);
	console.log("value: " + value);
	
	if(loca==""){
		sel_location.options[0].selected = true;
		changeFn();
	} else if(loca == "gangwon") {
		sel_location.options[1].selected = true;
		console.log("selected: " + sel_location.options[1].innerText);
		changeFn();
	} else if(loca == "gyeonggi") {
		sel_location.options[2].selected = true;
		console.log("selected: " + sel_location.options[2].innerText);
		changeFn();
	} else if(loca == "gyeongsang_south") {
		sel_location.options[3].selected = true;
		console.log("selected: " + sel_location.options[3].innerText);
		changeFn();
	} else if(loca == "gyeongsang_north") {
		sel_location.options[4].selected = true;
		console.log("selected: " + sel_location.options[4].innerText);
		changeFn();
	} else if(loca == "gwangju") {
		sel_location.options[5].selected = true;
		console.log("selected: " + sel_location.options[5].innerText);
		changeFn();
	} else if(loca == "daegu") {
		sel_location.options[6].selected = true;
		console.log("selected: " + sel_location.options[6].innerText);
		changeFn();
	} else if(loca == "daejeon") {
		sel_location.options[7].selected = true;
		console.log("selected: " + sel_location.options[7].innerText);
		changeFn();
	} else if(loca == "busan") {
		sel_location.options[8].selected = true;
		console.log("selected: " + sel_location.options[8].innerText);
		changeFn();
	} else if(loca == "seoul") {
		sel_location.options[9].selected = true;
		console.log("selected: " + sel_location.options[9].innerText);
		changeFn();
	} else if(loca == "sejong") {
		sel_location.options[10].selected = true;
		console.log("selected: " + sel_location.options[10].innerText);
		changeFn();
	} else if(loca == "ulsan") {
		sel_location.options[11].selected = true;
		console.log("selected: " + sel_location.options[11].innerText);
		changeFn();
	} else if(loca == "incheon") {
		sel_location.options[12].selected = true;
		console.log("selected: " + sel_location.options[12].innerText);
		changeFn();
	} else if(loca == "jeolla_south") {
		sel_location.options[13].selected = true;
		console.log("selected: " + sel_location.options[13].innerText);
		changeFn();
	} else if(loca == "jeolla_north") {
		sel_location.options[14].selected = true;
		console.log("selected: " + sel_location.options[14].innerText);
		changeFn();
	} else if(loca == "jeju") {
		sel_location.options[15].selected = true;
		console.log("selected: " + sel_location.options[15].innerText);
		changeFn();
	} else if(loca == "chungcheong_south") {
		sel_location.options[16].selected = true;
		console.log("selected: " + sel_location.options[16].innerText);
		changeFn();
	} else if(loca == "chungcheong_north") {
		sel_location.options[17].selected = true;
		console.log("selected: " + sel_location.options[17].innerText);
		changeFn();
	}

}