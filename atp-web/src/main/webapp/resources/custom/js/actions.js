/**
 * Created by hanminglu on 2017/3/18.
 */
function cfgstatus(id, status) {
    var data = {};
    data.id = id;
    var url = contextPath + "/config/cfgstatus";

    if (status == 1) {
        //0为启用
        data.status = 0;
    } else {
        //1为禁用
        data.status = 1;
    }

    ajaxReq(data, url, cfgstatusback, "POST");
}

function cfgstatusback(json) {
    var data = json.model;
    if (json.statusCode == "0000") {
        alert("修改成功");
        window.location.reload();
    } else {
        alert(json.errMsg);
    }
}
/*function cfgadd() {
    var form = new FormData(document.getElementById("cfgaddform"));
    form.append("creatUser","hanminglu");
    var url = contextPath + "/config/cfgadd";
    ajaxReq(form, url, cfgaddback, "POST");
}*/

function cfgadd() {
   // var form = new FormData(document.getElementById("cfgaddform"));
    var data =$("#cfgaddform").serialize();
    //form.append("creatUser","hanminglu");
    var url = contextPath + "/config/cfgadd";
    ajaxReq(data, url, cfgaddback, "POST");
}

function cfgaddback(json) {
    if (json.statusCode == "0000") {
        alert("新增配置成功");
        window.location.reload();
    } else {
        alert(json.errMsg);
    }
}
