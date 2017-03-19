/**
 * Created by hanminglu on 2017/3/18.
 */
function cfgdisable(id, status) {
    var data = {};
    data.id = id;
    var url = contextPath + "/page/cfgdisable";

    if (status = 1) {
        alert("该配置已禁用！！");
        return
    }
    data.status = 1;
    ajaxReq(data, url, cfgdisableback, "POST");
}

function cfgdisableback(json) {
    var data = json.model;
    if (json.statusCode == "0000") {
        alert("禁用成功");
        window.location.reload();
    } else {
        alert(json.errMsg);
    }
}