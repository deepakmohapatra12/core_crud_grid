<style>
	i
		{
			color:red;
		}
</style>
                    <div class="row">
					<form action="savequickenquiry.php" method="POST" id="form2">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h3 class="text-center">Enquiry Form</h3>
								
							</div>
							<div class="panel-body">
							<div id="showmsg"></div>
								<div class="form-group">
									<input type="text" class="form-control" id="name" name="name" placeholder="Enter name here"><i id="nameerror"></i>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" id="email" name="email" placeholder="Enter Email here"><i id="emailerror"></i>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" id="mobile" name="mobile" placeholder="Enter Mobile No here"><i id="mobileerror"></i>
								</div>
								<div class="form-group">
									<textarea type="text" class="form-control" id="message" name="message" placeholder="Enter Message here"></textarea><i id="messageerror"></i>
								</div>
								<div class="form-group text-center">
									<button type="button" id="btn2" class="btn btn-primary">Submit</button>					
								</div>
							</div>
						</div>
					</form>
					</div>