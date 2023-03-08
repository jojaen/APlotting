let payment = {
	init: function() {
		$("#check_module").on("click",()=>{
			this.payment();
		});
	},

payment: function() {
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
	
	
	let data = {
			subscribeName:title,
			subscribePrice:$("input[name='subscribe']:checked").val(),
			payment:$("#kakaoPayment").val(),

	};
	
	console.log(data.subscribeName)
	console.log(data.subscribePrice)
	console.log(data.payment)

		var IMP = window.IMP;
		IMP.init('imp06061546'); 

		IMP.request_pay({
			pg: 'kakaopay',
			pay_method: 'card',
			merchant_uid: '작당모의' + new Date().getTime(),
			name: '작당모의',
			amount: data.subscribePrice,
			}, function (resp) {
				$.ajax({
				type: "POST",
				url: "/payment",
				data:JSON.stringify(data),
				contentType:"application/json; charset=utf-8",
				dataType: "json"
			}).done(function(resp){
			alert("결제가 완료되었습니다.");
			location.href="/";
		}).fail(function(error){
			alert("결제가 취소되었습니다.");
		});
		});
	}

}
payment.init();