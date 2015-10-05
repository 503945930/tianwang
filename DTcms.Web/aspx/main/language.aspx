<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.index" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2015/5/5 星期二 下午 1:11:48.
		本页面代码由DTcms模板引擎生成于 2015/5/5 星期二 下午 1:11:48. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	templateBuilder.Append("<!DOCTYPE html>\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>\r\n       <script src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/js/jquery.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n    <title></title>\r\n      <script type=\"text/javascript\">\r\n\r\n          $(function () {\r\n              var language = navigator.browserLanguage ? navigator.browserLanguage : navigator.language;\r\n             // alert(language);\r\n              if (language.indexOf('zh') > -1) {\r\n                \r\n                  document.location.href = '/index.html';\r\n              }\r\n\r\n              else {\r\n                \r\n                   document.location.href = '/indexen.html';\r\n              }\r\n          } )\r\n\r\n\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
