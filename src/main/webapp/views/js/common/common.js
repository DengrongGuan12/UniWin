/**
 * Created by I330558 on 7/30/2016.
 */

/*
服务公共接口   parameters url 必须传
error 设置了默认处理函数,也可以自定义
data 设置了默认函数，可以不传
*/
function getDataByAjax(url, data)
{
    if (!arguments || arguments.length < 1)
    {
        return { successful: false, reason: "参数缺少" };
    }

    var secureData = data ? data : null;


    return new Promise((resolve, reject) => {
            $.ajax({
                url,
                method: "GET",
                dataType: "json",
                data: secureData,
                success: function(result) {
                    resolve(result);
                },
                error: function(reason) {
                    reject(reason);
                }
            });
        }
    );
}

function postDataByAjax(url, data)
{
    if (!arguments || arguments.length < 1)
    {
        return { successful: false, reason: "参数缺少" };
    }

    var secureData = data ? data : null;

    return new Promise((resolve, reject) => {
            $.ajax({
                url,
                method: "POST",
                dataType: "json",
                data: secureData,
                success: function(result) {
                    resolve(result);
                },
                error: function(reason) {
                    reject(reason);
                }
            });
        }
    );
}


function deleteDataByAjax(url, data)
{
    if (!arguments || arguments.length < 1)
    {
        return { successful: false, reason: "参数缺少" };
    }

    var secureData = data ? data : null;

    return new Promise((resolve, reject) => {
            $.ajax({
                url,
                type: "DELETE",
                dataType: "json",
                data: secureData,
                success: function(result) {
                    resolve(result);
                },
                error: function(reason) {
                    reject(reason);
                }
            });
        }
    );
}

function putDataByAjax(url, data)
{
    if (!arguments || arguments.length < 1)
    {
        return { successful: false, reason: "参数缺少" };
    }

    var secureData = data ? data : null;

    return new Promise((resolve, reject) => {
            $.ajax({
                url,
                type: "PUT",
                dataType: "json",
                data: secureData,
                success: function(result) {
                    resolve(result);
                },
                error: function(reason) {
                    reject(reason);
                }
            });
        }
    );
}

function patchDataByAjax(url, data)
{
    if (!arguments || arguments.length < 1)
    {
        return { successful: false, reason: "参数缺少" };
    }

    var secureData = data ? data : null;

    return new Promise((resolve, reject) => {
            $.ajax({
                url,
                type: "PATCH",
                dataType: "json",
                data: secureData,
                success: function(result) {
                    resolve(result);
                },
                error: function(reason) {
                    reject(reason);
                }
            });
        }
    );
}

//默认错误处理函数
function defaultError(reason)
{
    return $.extend({successful: false}, reason);
}
