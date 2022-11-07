/**
 * 
 */
$("#memberEmail").on("blur",function(){checkId($(this).val());});
let check = false;
function checkId(memberEmail){
	check=false;	
	if(!memberEmail){
		$("#result").text("아이디를 입력해주세요.");
		$("#result").css("color",'red')
		return;
	}
	
	$.ajax({		
		url: "/member/checkEmail.me",
		data: {"memberEmail":memberEmail},
		success: function(result){
			let message,color;	
			if(result == "true"){
				message = "사용가능한 아이디입니다.";
				check=true;
				color="blue";
			}else{
				message = "이미 사용중인 아이디입니다.";
				color="red";
			}
			$("#result").css("color",color);
			$("#result").text(message);		
		},
		error:function(a,b,c){
			console.log(a,b,c);
		}
	});
}