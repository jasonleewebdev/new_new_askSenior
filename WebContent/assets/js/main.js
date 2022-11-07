/**
 * 
 */

const radios = $('.faq-list-radio');

radios.on("change", function(){
	
	var questionCategory = $(this).val();
	
	$.ajax({
		url: contextPath + "/main/recommendedAnswer.ma",
		type: "get",
		data: {questionCategory, questionCategory},
		dataType: "json",
		success: function(answers){
			console.log(answers);
		},
		error: function(a, b, c){
			console.log(a, b, c);
		}
	});
});