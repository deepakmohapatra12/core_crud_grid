		$(function()
		{
			$("#btn2").click(function()
			
			{
			var status = true;
		
				var name = $("#name").val().trim();
				if(name=="")
					{
						status = false;
						$("#name").css({"border":"1px solid red"});
						$("#nameerror").html("Please enter name");
					}
				else
					{
						$("#name").css({"border":""});
						$("#nameerror").html("");
					}
					
				var email = $("#email").val().trim();
				var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
				if((email=="")||(!email.match(mailformat)))
					
					{
						status = false;
						$("#email").css({"border":"1px solid red"});
						$("#emailerror").html("Please enter email");
					}
				else
					{
						$("#email").css({"border":""});
						$("#emailerror").html("");
					}
				
				
				
				var mobile = $("#mobile").val().trim();
				if(mobile=="")
					{
						status = false;
						$("#mobile").css({"border":"1px solid red"});
						$("#mobileerror").html("Please enter mobile");
					}
				else
					{
						$("#mobile").css({"border":""});
						$("#mobileerror").html("");
					}
				
				
					
				var message = $("#message").val().trim();
				if(message=="")
					{
						status = false;
						$("#message").css({"border":"1px solid red"});
						$("#messageerror").html("Please enter Message");
					}
				else
					{
						$("#message").css({"border":""});
						$("#messageerror").html("");
					}
			
				
				if(status==true)
					{
						var mydata = {"name":name, "email":email,"mobile":mobile,"message":message};
						
						$.ajax({
							type:"POST",
							url:"savequickenquiry.php",
							data:mydata,
							success:function(response)
							{
								$("#name").val("");
								$("#email").val("");
								$("#mobile").val("");
								$("#message").val("");
								$("#showmsg").html(response);
							}
							
						});
					}
				
					

				return status;

			});
		});