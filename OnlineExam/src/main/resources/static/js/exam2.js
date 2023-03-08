var db_answerList = [];

db_answerList[0] = "2";
db_answerList[1] = "1";
db_answerList[2] = "1";
db_answerList[3] = "3";
db_answerList[4] = "2";
db_answerList[5] = "4";
db_answerList[6] = "2";
db_answerList[7] = "3";
db_answerList[8] = "4";
db_answerList[9] = "4";
db_answerList[10] = "2";
db_answerList[11] = "3";
db_answerList[12] = "1";
db_answerList[13] = "3";
db_answerList[14] = "3";
db_answerList[15] = "1";
db_answerList[16] = "3";
db_answerList[17] = "1";
db_answerList[18] = "1";
db_answerList[19] = "2";
db_answerList[20] = "3";
db_answerList[21] = "2";
db_answerList[22] = "3";
db_answerList[23] = "2";
db_answerList[24] = "1";
db_answerList[25] = "2";
db_answerList[26] = "4";
db_answerList[27] = "4";
db_answerList[28] = "1";
db_answerList[29] = "3";
db_answerList[30] = "4";
db_answerList[31] = "4";
db_answerList[32] = "2";
db_answerList[33] = "1";
db_answerList[34] = "3";
db_answerList[35] = "2";
db_answerList[36] = "2";
db_answerList[37] = "1";
db_answerList[38] = "3";
db_answerList[39] = "4";
db_answerList[40] = "1";
db_answerList[41] = "1";
db_answerList[42] = "4";
db_answerList[43] = "4";
db_answerList[44] = "3";
db_answerList[45] = "3";
db_answerList[46] = "3";
db_answerList[47] = "2";
db_answerList[48] = "2";
db_answerList[49] = "4";
db_answerList[50] = "2";
db_answerList[51] = "4";
db_answerList[52] = "3";
db_answerList[53] = "3";
db_answerList[54] = "4";
db_answerList[55] = "4";
db_answerList[56] = "4";
db_answerList[57] = "2";
db_answerList[58] = "2";
db_answerList[59] = "1";
db_answerList[60] = "3";
db_answerList[61] = "2";
db_answerList[62] = "2";
db_answerList[63] = "2";
db_answerList[64] = "2";
db_answerList[65] = "2";
db_answerList[66] = "3";
db_answerList[67] = "2";
db_answerList[68] = "3";
db_answerList[69] = "4";
db_answerList[70] = "2";
db_answerList[71] = "3";
db_answerList[72] = "4";
db_answerList[73] = "2";
db_answerList[74] = "1";
db_answerList[75] = "1";
db_answerList[76] = "4";
db_answerList[77] = "1";
db_answerList[78] = "3";
db_answerList[79] = "2";
db_answerList[80] = "4";
db_answerList[81] = "1";
db_answerList[82] = "2";
db_answerList[83] = "1";
db_answerList[84] = "2";
db_answerList[85] = "4";
db_answerList[86] = "3";
db_answerList[87] = "4";
db_answerList[88] = "1";
db_answerList[89] = "1";
db_answerList[90] = "2";
db_answerList[91] = "1";
db_answerList[92] = "2";
db_answerList[93] = "2";
db_answerList[94] = "1";
db_answerList[95] = "4";
db_answerList[96] = "3";
db_answerList[97] = "4";
db_answerList[98] = "1";
db_answerList[99] = "4";

function sendPost(url, params) {
	console.log(params);
	var form = document.createElement('form');
	form.setAttribute('method', 'post');
	form.setAttribute('target', '_blank');
	form.setAttribute('action', url);
	document.charset = "UTF-8";

	for (var key in params) {
		console.log(params[key]);
		var hiddenField = document.createElement('input');
		hiddenField.setAttribute('type', 'hidden');
		hiddenField.setAttribute('name', 'key');
		hiddenField.setAttribute('value', params[key]);
		form.appendChild(hiddenField);
	}

	document.body.appendChild(form);
	form.submit();
}

function getanswer() {

	var exam2 = [];
	var str = 'exam2_';
	var answer_o = [];
	var answer_x = [];

	for (let i = 1; i <= 100; i++) {
		exam2[i - 1] = document.getElementsByName(str + i);
		for (let j = 0; j < exam2[i - 1].length; j++) {

			if (exam2[i - 1][j].checked === true) {

				if (exam2[i - 1][j].value === db_answerList[i - 1]) {
					console.log(i + "번 정답!");
					answer_o.push(i);

				} else {
					console.log(i + "번 X!!")
					exam2[i - 1][j] = 0;
					answer_x.push(i);
				}
			}
		}
		if (exam2[i - 1][0].checked === false && exam2[i - 1][1].checked === false && exam2[i - 1][2].checked === false && exam2[i - 1][3].checked === false) {
			answer_x.push(i);
		}
	}
	
	for (let n = 0; n < answer_x.length; n++) {
		console.log(answer_x[n]);
	}
	$.ajax({
		type: "POST",
		url: "/exam2_loading/" + answer_x,
		data: JSON.stringify(answer_x),
		contentType: "application/json; charset=utf-8",
		dataType: "json"
	}).done(function(data) {
		console.log(data);
		if (confirm("시험을 종료하시겠습니까?")) {
			sendPost('/solution2/{data}', { param: data });
		} 

	}).fail(function(error) {
		alert("응답이 정상X");
	});
}