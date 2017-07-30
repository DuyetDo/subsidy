<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<meta charset="utf-8">
<jsp:include page="mainlayout.jsp"></jsp:include>

   <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div></div>
                    <div class="page-content-wrapper">
                        <div class="page-content">
                           <h3 class="page-title-register" id="title_operation">
   Đăng ký thêm mới thông tin cá nhân bảo lãnh
</h3>
<!-- END PAGE HEADER-->

<!-- BEGIN EXAMPLE TABLE PORTLET-->
<div class="portlet light bordered">
    <div class="portlet-title">
        <div class="caption-mid">
            Thông tin cá nhân bảo lãnh
        </div>
    </div>

    <form class="form-horizontal" >
        <input type="hidden" name="_token"  >

         <div class="form-group">
            <label for="title" class="control-label col-sm-2"><b>Tên cá nhân <span class="required">*</span></b></label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="name" id="name" required="required" />
            </div>
            <label for="tax_code" class="control-label col-sm-2"><b>Số chứng minh thư<span class="required">*</span></b></label>
            <div class='col-sm-4'>

                <input type='text' class="form-control" id='identify_code' name="'identify_code'" placeholder="565653226523" required="required" />


            </div>
        </div>

        <div class="form-group">
            <label for="license_business" class="control-label col-sm-2"><b>Ngày sinh<span class="required">*</span></b></label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="birth_day" id="birth_day" required="required" />
            </div>
            <label for="cash_limit" class="control-label col-sm-2"><b>Loại thẻ<span class="required">*</span></b></label>
            <div class="col-sm-4">
              <select name="type_card" id="type_card" class="selectpicker form-control col-sm-4">
                    <option value="">Không thẻ gì</option>
                    <option value="Platium">Thẻ bạch kim</option>
                    <option value="Gold">Thẻ vàng</option>
                    <option value="Silver">Thẻ bạc</option>
                    <option value="Bronze">Thẻ đồng</option>
                    
                </select>
              
            </div>
        </div>

           <div class="form-group">
            
            <label for="cash_limit" class="control-label col-sm-2"><b>Hạn mức bảo lãnh<span class="required">*</span></b></label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="cash_limit" id="cash_limit" required="required" />
            </div>
        </div>
        <div class="form-group">
            <label for="address" class="control-label col-sm-2"><b>Địa chỉ<span class="required">*</span></b></label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="address" id="address" required="required" />
            </div>
        </div>
       
       
<div style="width: 100%; height: 20px;"></div>

        <div class="clearfix">
       <button class="btn btn-primary  pull-left inline-block" onclick="createGuarantor();">
                <i class="glyphicon"></i> Thêm mới
            </button>


        </div>
    </form>
</div>
                        </div>
                    </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<script>
function createGuarantor(){
	var name = document.getElementById("name").value.trim();
	var identify_code = document.getElementById("identify_code").value.trim();
	var birth_day = document.getElementById("birth_day").value.trim();
	var type_card = document.getElementById("type_card").value.trim();
	var cash_limit = document.getElementById("cash_limit").value.trim();
	var address = document.getElementById("address").value.trim();
	if(!doValidate(name, identify_code, birth_day, type_card, cash_limit, address))
		return ;
	//
 
	
}
function doValidate(name,identify_code, birth_day,type_card,cash_limit, address){
	return true;
}
</script>


<jsp:include page="footer.jsp"></jsp:include>

