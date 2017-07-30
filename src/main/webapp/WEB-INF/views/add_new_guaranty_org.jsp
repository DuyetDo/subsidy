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
   Đăng ký thêm mới thông tin tổ chức bảo lãnh
</h3>
<!-- END PAGE HEADER-->

<!-- BEGIN EXAMPLE TABLE PORTLET-->
<div class="portlet light bordered">
    <div class="portlet-title">
        <div class="caption-mid">
            Thông tin tổ chức bảo lãnh
        </div>
    </div>

    <form class="form-horizontal" >
        <input type="hidden" name="_token"  >

         <div class="form-group">
            <label for="title" class="control-label col-sm-2"><b>Tên tổ chức <span class="required">*</span></b></label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="name" id="name" required="required" />
            </div>
            <label for="tax_code" class="control-label col-sm-2"><b>Mã số thuế<span class="required">*</span></b></label>
            <div class='col-sm-4'>

                <input type='text' class="form-control" id='tax_code' name="'tax_code'" placeholder="565653226523" required="required" />


            </div>
        </div>

        <div class="form-group">
            <label for="license_business" class="control-label col-sm-2"><b>Giấy phép kinh doanh<span class="required">*</span></b></label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="license_business" id="license_business" required="required" />
            </div>
            <label for="cash_limit" class="control-label col-sm-2"><b>Hạn mức bảo lãnh<span class="required">*</span></b></label>
            <div class="col-sm-4">
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
            <button class="btn btn-primary  pull-left inline-block" onclick="createOrg();">
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
function createOrg(){
	var name = document.getElementById("name").value.trim();
	var tax_code = document.getElementById("tax_code").value.trim();
	var license_business = document.getElementById("license_business").value.trim();
	var cash_limit = document.getElementById("cash_limit").value.trim();
	var address = document.getElementById("address").value.trim();
	if(!doValidate(name, tax_code, license_business, cash_limit, address))
		return ;
	//
 
	
}
function doValidate(name,tax_code, license_business, cash_limit, address){
	return true;
}
</script>


<jsp:include page="footer.jsp"></jsp:include>

