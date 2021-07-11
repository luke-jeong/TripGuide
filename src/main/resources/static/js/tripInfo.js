let index ={
	init: function(){
		$("#btn-trip-save").on("click", ()=>{ //function(){}, ()=>{} this를 바인딩하기 위해서 사용
			this.save();
		});
		$("#btn-update").on("click", ()=>{
			this.update();
		});
	},
	
	save:function(){
		let data = {
			contentid:$("#contentid").val(),
			img:$("#img").val(),
			s_date:$("#s_date").val(),
			title:$("#title").text(),
			addr:$("#addr").text()
		};
		console.log(data)
		$.ajax({
			type:"POST",
			url:"/user/prefer",
			data: JSON.stringify(data),
			contentType:"application/json;charset=utf-8",
			dataType:"json"
		}).done(function(resp){
			alert("즐겨찾기 완료!");
			
		}).fail(function(error){
			alert(JSON.stringify(error));
		}); //ajax 통신을 이용해서 3개의 데이터를 json 형식으로 받음 
	}
}

index.init();