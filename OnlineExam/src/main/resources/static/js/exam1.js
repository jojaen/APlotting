var db_answerList = [];

db_answerList[0] = "4";
db_answerList[1] = "2";
db_answerList[2] = "3";
db_answerList[3] = "4";
db_answerList[4] = "4";
db_answerList[5] = "3";
db_answerList[6] = "4";
db_answerList[7] = "3";
db_answerList[8] = "2";
db_answerList[9] = "3";
db_answerList[10] = "3";
db_answerList[11] = "4";
db_answerList[12] = "2";
db_answerList[13] = "3";
db_answerList[14] = "1";
db_answerList[15] = "1";
db_answerList[16] = "2";
db_answerList[17] = "2";
db_answerList[18] = "2";
db_answerList[19] = "2";
db_answerList[20] = "1";
db_answerList[21] = "2";
db_answerList[22] = "3";
db_answerList[23] = "2";
db_answerList[24] = "4";
db_answerList[25] = "4";
db_answerList[26] = "2";
db_answerList[27] = "4";
db_answerList[28] = "1";
db_answerList[29] = "1";
db_answerList[30] = "4";
db_answerList[31] = "4";
db_answerList[32] = "1";
db_answerList[33] = "3";
db_answerList[34] = "1";
db_answerList[35] = "4";
db_answerList[36] = "1";
db_answerList[37] = "3";
db_answerList[38] = "3";
db_answerList[39] = "2";
db_answerList[40] = "1";
db_answerList[41] = "2";
db_answerList[42] = "1";
db_answerList[43] = "3";
db_answerList[44] = "3";
db_answerList[45] = "3";
db_answerList[46] = "1";
db_answerList[47] = "4";
db_answerList[48] = "2";
db_answerList[49] = "2";
db_answerList[50] = "1";
db_answerList[51] = "1";
db_answerList[52] = "4";
db_answerList[53] = "1";
db_answerList[54] = "1";
db_answerList[55] = "3";
db_answerList[56] = "4";
db_answerList[57] = "4";
db_answerList[58] = "3";
db_answerList[59] = "3";
db_answerList[60] = "1";
db_answerList[61] = "3";
db_answerList[62] = "1";
db_answerList[63] = "1";
db_answerList[64] = "1";
db_answerList[65] = "1";
db_answerList[66] = "3";
db_answerList[67] = "2";
db_answerList[68] = "4";
db_answerList[69] = "4";
db_answerList[70] = "1";
db_answerList[71] = "4";
db_answerList[72] = "2";
db_answerList[73] = "2";
db_answerList[74] = "4";
db_answerList[75] = "3";
db_answerList[76] = "1";
db_answerList[77] = "2";
db_answerList[78] = "2";
db_answerList[79] = "3";
db_answerList[80] = "2";
db_answerList[81] = "1";
db_answerList[82] = "3";
db_answerList[83] = "1";
db_answerList[84] = "3";
db_answerList[85] = "1";
db_answerList[86] = "3";
db_answerList[87] = "2";
db_answerList[88] = "3";
db_answerList[89] = "2";
db_answerList[90] = "4";
db_answerList[91] = "2";
db_answerList[92] = "4";
db_answerList[93] = "1";
db_answerList[94] = "3";
db_answerList[95] = "1";
db_answerList[96] = "4";
db_answerList[97] = "4";
db_answerList[98] = "4";
db_answerList[99] = "1";

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

	var exam1 = [];
	var str = 'exam1_';
	var answer_o = [];
	var answer_x = [];

	for (let i = 1; i <= 100; i++) {
		exam1[i - 1] = document.getElementsByName(str + i);
		for (let j = 0; j < exam1[i - 1].length; j++) {

			if (exam1[i - 1][j].checked === true) {

				if (exam1[i - 1][j].value === db_answerList[i - 1]) {
					console.log(i + "번 정답!");
					answer_o.push(i);

				} else {
					console.log(i + "번 X!!")
					exam1[i - 1][j] = 0;
					answer_x.push(i);
				}
			}
		}
		if (exam1[i - 1][0].checked === false && exam1[i - 1][1].checked === false && exam1[i - 1][2].checked === false && exam1[i - 1][3].checked === false) {
			answer_x.push(i);
		}
	}

	for (let n = 0; n < answer_x.length; n++) {
		console.log(answer_x[n]);
	}

	$.ajax({
		type: "POST",
		url: "/exam1_loading/" + answer_x,
		data: JSON.stringify(answer_x),
		contentType: "application/json; charset=utf-8",
		dataType: "json"
	}).done(function(data) {
		console.log(data);
		if (confirm("시험을 종료하시겠습니까?")) {
			sendPost('/solution/{data}', { param: data });
		}

	}).fail(function(error) {
		alert("응답이 정상X");
	});
}