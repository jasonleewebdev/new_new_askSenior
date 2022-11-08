/**
 * 
 */

const radios = $('.faq-list-radio');

radios.on("change", function(){
	
	changeRadio($(this));
	
	var questionCategory = $(this).val();
	
	$.ajax({
		url: contextPath + "/main/recommendedAnswer.ma",
		type: "get",
		data: {questionCategory, questionCategory},
		dataType: "json",
		success: showList,
		error: function(a, b, c){
			console.log(a, b, c);
		}
	});
});

function showList(answers){
	
	let text = "";
	
	answers.forEach(answer => {
		text += `<div class="faq-card">`
        text += `<div class="faq-question">`
		text += `<span>`
        text += `<span class="question-title-num faq-q">Q.</span>`
        text += `<span>` + answer.questionTitle + `</span>`
        text += `</span>`
        text += `</div>`
        text += `<div class="faq-answer">`
        text += `<span class="faq-q faq-a">A.</span>`
        text += `<span class="faq-answer-content">` + answer.answerContent + `</span>`
        text += `</div>`
    	text += `</div>`
	});
	
	$('#answer-list').html(text);
	
};

function changeRadio(radio){

	$('.faq-category-list').each(function(){
		const span = $(this).find('span');
		
		if(span.hasClass('faq-list-radio-blue')){
			span.removeClass('faq-list-radio-blue');
			span.addClass('faq-list-radio-white');
		}
	});
	
	radio.next().removeClass('faq-list-radio-white');
	radio.next().addClass('faq-list-radio-blue');
};








