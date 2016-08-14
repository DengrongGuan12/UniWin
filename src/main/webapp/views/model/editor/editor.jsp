<link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-responsive.min.css" rel="stylesheet">
<link rel="shortcut icon" href="https://d1g6a398qq2djm.cloudfront.net/img/favicon.ico" >
<link rel="stylesheet" href="http://mindmup.github.io/bootstrap-wysiwyg/external/google-code-prettify/prettify.css" media="screen" title="no title" charset="utf-8">
<link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
<script src="http://mindmup.github.io/bootstrap-wysiwyg/external/jquery.hotkeys.js"></script>
<script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
<script src="http://mindmup.github.io/bootstrap-wysiwyg/external/google-code-prettify/prettify.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath() %>/views/model/editor/editor.css" charset="utf-8">
<script src="<%=request.getContextPath() %>/views/model/editor/editor.js" charset="utf-8"></script>
<div class="my-editor">
    <div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">
        <div class="btn-group">
            <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="icon-bold"></i></a>
            <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a>
            <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="icon-strikethrough"></i></a>
            <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="icon-underline"></i></a>
        </div>
        <div class="btn-group">
            <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="icon-list-ul"></i></a>
            <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="icon-list-ol"></i></a>
            <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
            <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="icon-indent-right"></i></a>
        </div>
        <div class="btn-group">
            <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
            <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
            <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
            <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>
        </div>

        <div class="btn-group">
            <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="icon-undo"></i></a>
            <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
        </div>
        <input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="">
        </div>

        <div id="editor">

        </div>
</div>
<script type="text/javascript">
    $("#editor").wysiwyg();
</script>
