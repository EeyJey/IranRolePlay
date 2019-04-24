var prices = {}
var maxes = {}
var zone = null

// Partial Functions
function closeMain() {
	$("body").css("display", "none");
}
function openMain() {
	$("body").css("display", "block");
}
function closeAll() {
	$(".body").css("display", "none");
}
$(".close").click(function(){
    $.post('http://esx_supermarket/quit', JSON.stringify({}));
});
// Listen for NUI Events
window.addEventListener('message', function (event) {

	var item = event.data;

	// Open & Close main window
	if (item.message == "show") {
		if (item.clear == true){
			$( ".home" ).empty();
			prices = {}
			maxes = {}
			zone = null
		}
		openMain();
	}

	if (item.message == "hide") {
		closeMain();
	}
	
	if (item.message == "add"){
		$( ".home" ).append('<div class="card">' +
					'<img src="img/' + item.item + '.png" alt="' + item.label + '" style="width:100%">' + 
					'<div class="container">' + 
						'<h4><b>' + item.label + '</b></h4> ' +
						'<div class="quantity">' + 
							'<div class="minus-btn btnquantity" name="' + item.item + '" id="minus">' + 
								'<img src="img/minus.png" alt="" />' + 
							'</div>' +
							'<div class="number" name="name">1</div>' + 
							'<div class="plus-btn btnquantity" name="' + item.item + '" id="plus">' + 
								'<img src="img/plus.png" alt="" />' + 
							'</div>' +
						'</div>' +
						'<div class="purchase">' + 
							'<div class="price">' + item.price + '$' + '</div>' +
							'<div class="buy" name="' + item.item + '">خرید</div>' + 
						'</div>' +
					'</div>' +
				'</div>');
		prices[item.item] = item.price;
		maxes[item.item] = item.max;
		zone = item.loc;
	}
});

// Handle Button Presses
// $(".btnQuestion").click(function () {
	// $.post('http://esx_dmvschool/question', JSON.stringify({}));
// });

// $(".btnClose").click(function () {
	// $.post('http://esx_dmvschool/close', JSON.stringify({}));
// });

// $(".btnKick").click(function () {
	// $.post('http://esx_dmvschool/kick', JSON.stringify({}));
// });

// Handle Form Submits
// $("#question-form").submit(function (e) {

	// e.preventDefault();

	// if (questionNumber != nbQuestionToAnswer) {
		//// question 1 to 9 : pushing answer in array
		// closeAll();
		// userAnswer.push($('input[name="question"]:checked').val());
		// questionNumber++;
		// openQuestionnaire();
	// } else {
		//// question 10 : comparing arrays and sending number of good answers
		// userAnswer.push($('input[name="question"]:checked').val());
		// var nbGoodAnswer = 0;
		// for (i = 0; i < nbQuestionToAnswer; i++) {
			// if (userAnswer[i] == goodAnswer[i]) {
				// nbGoodAnswer++;
			// }
		// }

		// closeAll();
		// if (nbGoodAnswer >= nbAnswerNeeded) {
			// openResultGood();
		// } else {
			// openResultBad();
		// }
	// }

	// return false;

// });


$(".home").on("click", ".btnquantity", function() {
	
	var $button = $(this);
	var $name = $button.attr('name')
	var oldValue = $button.parent().find(".number").text();
	if ($button.get(0).id == "plus") {
		if (oldValue <  maxes[$name]){
			var newVal = parseFloat(oldValue) + 1;
		}else{
			var newVal = parseFloat(oldValue);
		}
	} else {
	// Don't allow decrementing below zero
		if (oldValue > 1) {
			var newVal = parseFloat(oldValue) - 1;
		} else {
			newVal = 1;
		}
	}
	$button.parent().parent().find(".price").text((prices[$name] * newVal) + "$");
	$button.parent().find(".number").text(newVal);

});

$(".home").on("click", ".buy", function() {
	var $button = $(this);
	var $name = $button.attr('name')
	var $count = parseFloat($button.parent().parent().find(".number").text());
	$.post('http://esx_supermarket/purchase', JSON.stringify({
		item: $name,
		count: $count,
		loc: zone
	}));
});
