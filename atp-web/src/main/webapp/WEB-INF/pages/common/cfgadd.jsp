<%@ page language="java" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>


<div class="modal-header">
    <button class="close" type="button" data-dismiss="modal" aria-label="Close" aria-hidden="true">
    </button>
    <h3 class="modal-title" id="myModalLabel">New Top ConfigInfo</h3>
</div>
<div class="modal-body">
    <form class="form-horizontal" id="cfgaddform" novalidate="novalidate" enctype="multipart/form-data">
        <div class="form-group">
            <label class="control-label col-sm-4" for="cfgtype">ConfigType:</label>
            <div class="col-md-8 ">
                <select class="bs-select form-control" style="width:200px;" name="configType" id="cfgtype">
                    <option value="1" selected>InstId</option>
                    <option value="2">BusinType</option>
                    <option value="3">URL</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4" for="cfginfo">ConfigInfo:</label>
            <div class="col-md-8">
                <input class=" form-control" style="width:180px" type="text" name="config" id="cfginfo">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4" for="cfgdes">Description:</label>
            <div class="col-md-8">
                <input class=" form-control" style="width:180px" type="text" name="description" id="cfgdes">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4" for="cfguser">CreatUser:</label>
            <div class="col-md-8">
                <input class=" form-control" style="width:180px" type="text" name="creatUser" id="cfguser"
                       value="hanminglu" readonly>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4" for="cfgstatus">Enable:</label>
            <div class="col-md-8 ">
                <select class="bs-select form-control" style="width:200px;" name="status" id="cfgstatus">
                    <option value="0" selected>Enable</option>
                    <option value="1">Disable</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4 hidden" for="cfgre">Remark:</label>
            <div class="col-md-8">
                <input class=" form-control hidden" style="width:180px" type="text" name="remark" id="cfgre"
                       value="" readonly>
            </div>
        </div>
        <%--   <div class="form-group">
               <label class="control-label" for="fileContent">附件:</label>
               <div class="controls">
                   <input type="file" name="fileContent" id="fileContent">
               </div>
           </div>--%>
    </form>
    <div class="modal-footer">
        <button type="button" class="btn btn-primary" onclick="cfgadd()">Save</button>
        <button type="reset" class="btn btn-default" data-dismiss="modal">Close</button>
    </div>
</div>