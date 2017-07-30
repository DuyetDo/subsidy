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
 Nhập thông tin cần tìm kiếm
</h3>
<!-- END PAGE HEADER-->

<!-- BEGIN EXAMPLE TABLE PORTLET-->
<div class="portlet light bordered">
    <div class="portlet-title">
        <div class="caption-mid">
            Thông tin tổ chức/cá nhân bảo lãnh
        </div>
    </div>
 <div class="form-group">
        <label for="receiver" class="control-label col-sm-2"><b>Nhập thông tin tìm kiếm <span class="required">*</span></b></label>
        <div class="col-sm-10">

            <input type="text" name="currency" class="form-control" id="autosearch">
        </div>
    </div>
    <div class="form-group">
        <label for="receiver" class="control-label col-sm-2"><b></b></label>
        <div class="col-sm-10" >
            <div style="height:40px"></div>

        </div>
    </div>
   <div class="form-group">
        <label for="receiver" class="control-label col-sm-10"><b>KẾT QUẢ TÌM KIẾM</b></label>
        <div class="col-sm-10" >
        <div style="height:20px"></div>
        </div>
    </div>
    <div class="form-horizontal">

 <div class="form-group col-sm-10">
        <div class="caption-mid">
            Thông tin cơ bản
        </div>
    </div>
         <div class="form-group">
            <label for="title" class="control-label col-sm-2"><b>Tên cá nhân/ Tổ chức <span class="required">*</span></b></label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="name" id="name" required="required" />
            </div>
            <label for="tax_code" class="control-label col-sm-2"><b>Mã bảo lãnh<span class="required">*</span></b></label>
            <div class='col-sm-4'>

                <input type='text' class="form-control" id='tax_code' name="'tax_code'" placeholder="Số CMT (cá nhân) hoặc MST (tổ chức)" required="required" />


            </div>
        </div>

        <div class="form-group">
            
            <label for="cash_limit" class="control-label col-sm-2"><b>Hạn mức bảo lãnh<span class="required">*</span></b></label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="cash_limit" id="cash_limit" required="required" />
            </div>
            <label for="balance" class="control-label col-sm-2"><b>Còn lại<span class="required">*</span></b></label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="balance" id="balance" required="required" />
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
            <button class="btn btn-primary  pull-left inline-block" onclick="SaveCashmanage();">
                <i class="glyphicon"></i> Cập nhật
            </button>


        </div>

  
		

  




    </div>
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
function SaveCashmanage(){
	var name = document.getElementById("name").value.trim();
	var tax_code = document.getElementById("tax_code").value.trim();
	var balance = document.getElementById("balance").value.trim();
	var cash_limit = document.getElementById("cash_limit").value.trim();
	var address = document.getElementById("address").value.trim();
	if(!doValidate(name, tax_code, balance, cash_limit, address))
		return ;
	//
 
	
}
function doValidate(name,tax_code, balance, cash_limit, address){
	return true;
}
</script>


<jsp:include page="footer.jsp"></jsp:include>

