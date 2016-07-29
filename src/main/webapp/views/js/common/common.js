/**
 * Created by I330558 on 7/30/2016.
 */

function getData(url, data, callback, error)
{
    if (!arguments || arguments.length < 1)
    {
        return { status: "ok", reason: "参数缺少" };
    }
    error = error ? error: defaultError;

    $.ajax({
        url,
        method: "GET",
        dataType: "json",
        data,
        success: callback,
        error: error
    });
}

function postData(url, data, callback, error)
{
    if (!arguments || arguments.length < 1)
    {
        return { status: "ok", reason: "参数缺少" };
    }

    error = error ? error: defaultError;

    $.ajax({
        url,
        method: "POST",
        dataType: "json",
        data,
        success: callback,
        error: error
    });
}

function deleteData(url, data, callback, error)
{
    if (!arguments || arguments.length < 1)
    {
        return { status: "ok", reason: "参数缺少" };
    }

    error = error ? error: defaultError;

    $.ajax({
        url,
        type: "DELETE",
        data,
        success: callback,
        error: error
    });
}

function putData(url, data, callback, error)
{
    if (!arguments || arguments.length < 1)
    {
        return { status: "ok", reason: "参数缺少" };
    }

    error = error ? error: defaultError;

    $.ajax({
        url,
        type: "PUT",
        data,
        success: callback,
        error: error
    });
}

//默认错误处理函数
function defaultError(reason)
{
    console.log("code: " + reason.code + "message: " + reason.message);
}
