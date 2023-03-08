var data_len = document.getElementById('data_len');

const ctx = document.getElementById('myChart');
const myChart = new Chart(ctx, {
	type: 'doughnut', // 그래프의 종류
	data: { //chart에 들어갈 값
		labels: ['정답', '오답'], // 라벨 값을 대표할 이름
		datasets: [{
			label: 'My First Dataset',
			data: [100 - data_len.innerText * 1, data_len.innerText * 1],
			backgroundColor: [
				'rgb(54, 162, 235)',
				'rgb(255, 99, 132)'
			],
			hoverOffset: 2
		}]
	},
});


console.log(data_len.innerText);
console.log(typeof (data_len.innerText));