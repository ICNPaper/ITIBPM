<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="http://jquery.bassistance.de/treeview/demo/screen.css" type="text/css" />
<link rel="stylesheet" href="http://jquery.bassistance.de/treeview/jquery.treeview.css" type="text/css" />
<script type="text/javascript" src="http://jquery.bassistance.de/treeview/jquery.treeview.js"></script>
<script>
$(document).ready(function(){
$("#example").treeview();
});
</script>
</head>
<body>
  <ul id="example" class="filetree">
        <li><span class="folder">Folder 1</span>
            <ul>
                <li><span class="file">Item 1.1</span></li>
            </ul>
        </li>
        <li><span class="folder">Folder 2</span>
            <ul>
                <li><span class="folder">Subfolder 2.1</span>
                    <ul>
                        <li><span class="file">File 2.1.1</span></li>
                        <li><span class="file">File 2.1.2</span></li>
                    </ul>
                </li>
                <li><span class="file">File 2.2</span></li>
            </ul>
        </li>
        <li class="closed"><span class="folder">Folder 3 (closed at start)</span>
            <ul>
                <li><span class="file">File 3.1</span></li>
            </ul>
        </li>
        <li><span class="file">File 4</span></li>
    </ul>
</body>
</html>