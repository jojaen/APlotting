let index = {
	init: function() {
		$("#paymentBtn").on("click", () => {
			this.save();
		});
	},

	save: function() {
		console.log($("#subscribeName").text());
		
		let payment;
		
		if($("#account").val() == 'account'){
			payment = $("#accountTitle1").text();
		} if($("#account").val() == 'cardPay'){
			payment = $("#accountTitle2").text();
		}
		
		console.log("결제방식"+payment);
		let data = {
			subscribeName:$("#subscribeName").text(),
			subscribePrice:$("#subscribePrice").text(),
			payment:payment
		};
		$.ajax({
			type: "POST",
			url: "/payment",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			alert("결제가 완료되었습니다.");
			location.href = "/"
		}).fail(function(error) {
			alert("결제가 취소되었습니다.");
		});
		
	}
}
index.init();