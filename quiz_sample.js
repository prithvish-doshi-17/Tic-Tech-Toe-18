var questions = [];
var curr_que = 0;

var que1 = {
	stat: "Question 1?",
	op1: "A1",
	op2: "B1",
	op3: "C1",
	op4: "D1",
	correct: "3"
}

var que2 = {
	stat: "Question 2?",
	op1: "A2",
	op2: "B2",
	op3: "C2",
	op4: "D2",
	correct: "1"
}

var que3 = {
	stat: "Question 3?",
	op1: "A3",
	op2: "B3",
	op3: "C3",
	op4: "D3",
	correct: "4"
}

var que4 = {
	stat: "Question 4?",
	op1: "A4",
	op2: "B4",
	op3: "C4",
	op4: "D4",
	correct: "2"
}

var que5 = {
	stat: "Question 5?",
	op1: "A5",
	op2: "B5",
	op3: "C5",
	op4: "D5",
	correct: "3"
}

questions.push(que1);
questions.push(que2);
questions.push(que3);
questions.push(que4);
questions.push(que5);

var lis = document.querySelectorAll("li");
var que_stat = document.querySelector("#que_stat");
var opt1 = document.querySelector("#opt1");
var opt2 = document.querySelector("#opt2");
var opt3 = document.querySelector("#opt3");
var opt4 = document.querySelector("#opt4");


lis.forEach(function(item){
	item.addEventListener("click", function(){
		if(this.classList.contains("disabled")) return;

		document.querySelector("button").disabled = false;

		var num = Number(this.id)/10 - 1;
		curr_que = num;
		que_stat.innerText = questions[num].stat;
		opt1.innerText = questions[num].op1;
		opt2.innerText = questions[num].op2;
		opt3.innerText = questions[num].op3;
		opt4.innerText = questions[num].op4;

		opt1.parentElement.classList.remove("correct");
		opt2.parentElement.classList.remove("correct");
		opt3.parentElement.classList.remove("correct");
		opt4.parentElement.classList.remove("correct");

		opt1.parentElement.classList.remove("incorrect");
		opt2.parentElement.classList.remove("incorrect");
		opt3.parentElement.classList.remove("incorrect");
		opt4.parentElement.classList.remove("incorrect");
	});
});


var btn = document.querySelector("button");

btn.addEventListener("click", function(){
	var correctAns = questions[curr_que].correct;
	var userChoice = document.querySelector("input:checked");
	var userAns = userChoice.value;
	var comment = document.querySelector("#comment");

	this.disabled = true;

	if(correctAns === userAns){
		comment.innerText = "Correct Answer!";
		userChoice.parentElement.classList.add("correct");
	} else {
		comment.innerText = "Wrong Answer!";
		userChoice.parentElement.classList.add("incorrect");
		document.getElementById(correctAns).classList.add("correct");
	}

	document.getElementById((curr_que+1)*10).classList.add("disabled");
});

