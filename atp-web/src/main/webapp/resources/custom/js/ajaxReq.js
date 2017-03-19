/**
 * Created by hanminglu on 2017/3/18.
 */
function ajaxReq(data,url,call,type){
    if(type==null){
        type="post";
    }
    $.ajax({
        "type":type,
        "url":url,
        "traditional": true,
        "data":data,
        dataType: "json",
        beforeSend: function () {
        },
        "success":function(result){
            call(result);
        },
        complete: function () {

        },
        error:function(){
            alert("请求失败");
        }
    });
}
