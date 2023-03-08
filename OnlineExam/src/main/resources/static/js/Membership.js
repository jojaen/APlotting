function sendPost(url, params) {
	console.log(params);
	var form = document.createElement('form');
	form.setAttribute('method', 'post');
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


function GeneralPayment() {
	let title;
	console.log($("input[name='subscribe']:checked").val());
	
	if($("input[name='subscribe']:checked").val()== '39,100원'){
		title = $("#subscribeTitle1").text();
	}
	if($("input[name='subscribe']:checked").val()== '69,100원'){
		title = $("#subscribeTitle2").text();
	}
	if($("input[name='subscribe']:checked").val()== '79,100원'){
		title = $("#subscribeTitle3").text();
	}
	if($("input[name='subscribe']:checked").val()== '89,100원'){
		title = $("#subscribeTitle4").text();
	}
	if($("input[name='subscribe']:checked").val()== '159,100원'){
		title = $("#subscribeTitle5").text();
	}
	if($("input[name='subscribe']:checked").val()== '259,100원'){
		title = $("#subscribeTitle6").text();
	}
	if($("input[name='subscribe']:checked").val()== '359,100원'){
		title = $("#subscribeTitle7").text();
	}
	if($("input[name='subscribe']:checked").val()== '459,100원'){
		title = $("#subscribeTitle8").text();
	}
	

			var subscribeName= title;
			var subscribePrice= $("input[name='subscribe']:checked").val();
			console.log(subscribeName+subscribePrice);

		$.ajax({
			type: "POST",
			url: "/payment/" + subscribeName + "/" + subscribePrice,
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(data) {
			console.log(data);
			if (confirm("구매하시겠습니까?")) {
				sendPost('/paymentresult/{subscribeName}/{subscribePrice}', { param: data });
			}

		}).fail(function(error) {
			alert("로그인해주세요.");
		});
	}