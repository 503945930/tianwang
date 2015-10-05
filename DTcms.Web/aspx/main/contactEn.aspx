﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_show" ValidateRequest="false" %>
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
	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n<head lang=\"en\">\r\n    <meta charset=\"UTF-8\">\r\n    <title></title> \r\n    ");
	string category_title = get_category_title(model.category_id,"公司简介");

	templateBuilder.Append("\r\n    <script src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/js/jquery.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/js/index.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n    <link href=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/css/index.css\" type=\"text/css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/css/introduction.css\" type=\"text/css\" rel=\"stylesheet\">\r\n    <script type=\"text/javascript\">\r\n        $(function () {\r\n            $('.nav li a').removeClass('current');\r\n            $('#contact').addClass('current');\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n\r\n<!-- Google Code for contact us Conversion Page -->\r\n<script type=\"text/javascript\">\r\n/* <![CDATA[ */\r\nvar google_conversion_id = 950814079;\r\nvar google_conversion_language = \"en\";\r\nvar google_conversion_format = \"3\";\r\nvar google_conversion_color = \"ffffff\";\r\nvar google_conversion_label = \"K1BhCMqTllwQ_4qxxQM\";\r\nvar google_remarketing_only = false;\r\n/* ]]> */\r\n</");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"//www.googleadservices.com/pagead/conversion.js\">\r\n</");
	templateBuilder.Append("script>\r\n<noscript>\r\n<div style=\"display:inline;\">\r\n<img height=\"1\" width=\"1\" style=\"border-style:none;\" alt=\"\" src=\"//www.googleadservices.com/pagead/conversion/950814079/?label=K1BhCMqTllwQ_4qxxQM&amp;guid=ON&amp;script=0\"/>\r\n</div>\r\n</noscript>\r\n    ");

	templateBuilder.Append("<!DOCTYPE html>\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    <title></title>\r\n    <script type=\"text/javascript\">\r\n\r\n        //$(function () {\r\n        //    var baner = document.getElementById('baner');\r\n        //    var ul = baner.getElementsByTagName('ul')[0];\r\n        //    var li = ul.getElementsByTagName('li');\r\n        //    ul.innerHTML = ul.innerHTML + ul.innerHTML;\r\n        //    ul.style.width = li[0].offsetWidth * li.length + 'px';\r\n        //    function move() {\r\n        //        if (ul.offsetLeft < -ul.offsetWidth / 2) {\r\n        //            ul.style.left = '0';\r\n        //        }\r\n        //        if (ul.offsetLeft > 0) {\r\n        //            ul.style.left = -ul.offsetWidth / 2 + 'px';\r\n        //        }\r\n        //        ul.style.left = ul.offsetLeft - 1200 + 'px';\r\n        //    }\r\n        //    var timer = setInterval(move, 3000);\r\n        //    baner.onmouseover = function () {\r\n        //        clearInterval(timer);\r\n        //    };\r\n        //    baner.onmouseout = function () {\r\n        //        timer = setInterval(move, 3000);\r\n        //    };\r\n        //    document.getElementById('one').onclick = function () {\r\n        //        ul.style.left = '0';\r\n        //    };\r\n        //    document.getElementById('two').onclick = function () {\r\n        //        ul.style.left = -1200 + 'px';\r\n        //    };\r\n        //})\r\n        //window.onload = function () {\r\n\r\n\r\n        //};\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div class=\"header\">\r\n        <div class=\"logo-nav\">\r\n            <div class=\"logo\"><a href=\"#\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/tw_02.jpg\" alt=\"\" /></a></div>\r\n            <div class=\"nav-phone\">\r\n                <div class=\"phone\">\r\n                    <a href=\"\">\r\n                        <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/tw_03.png\" alt=\"\" /></a>\r\n                </div>\r\n                <div class=\"nav\">\r\n                    <ul>\r\n                        <li><a class=\"current\" href=\"/indexEn.html\">Home</a></li>\r\n                        <li><a id=\"gsjj\" href=\"/contentEn/aboutEn.html\">About US</a></li>\r\n                        <li><a id=\"gsdt\" href=\"/newsEn/39.html\">News</a></li>\r\n                        <li><a id=\"cpsj\" href=\"/productEn.html\">Products</a></li>\r\n                        <li><a id=\"wm\" href=\"/tradeEn/51.html\">Export</a></li>\r\n                        <li><a id=\"contact\" href=\"/contactEn/lianxiwomenyingwen.html\">Contact US</a></li>\r\n                        <li><a href=\"/index.html\">中文</a></li>\r\n                    </ul>\r\n                </div>\r\n                <div class=\"clear\"></div>\r\n            </div>\r\n            <div class=\"clear\"></div>\r\n            <div  id=\"baner\" class=\"swith\" style=\"overflow:hidden;height:350px;position:relative;left:0;top:0;\">\r\n                <!--<img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/baner_03.jpg\" alt=\"\"/>-->\r\n                <ul  style=\"position:absolute;left:0;top:0;padding:0;margin:0;\">\r\n                    <li style=\"list-style: none; float: left;\" name=\"img1\">\r\n                        <img style=\"width: 1200px; height: 350px;\" src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/baner_03.jpg\"></img></li>\r\n                   <!-- <li  style=\"list-style: none; float: left;\" name=\"img2\">\r\n                        <img style=\"width: 1200px; height: 350px;\" src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/swith.png\"></img></li>-->\r\n                </ul>\r\n             <!--   <a id=\"one\" href=\"javascript:;\" style=\"width: 15px;height: 10px;left:600px;top:330px;position:absolute;text-decoration:none;background: url(");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/baner_06.png)\"></a>\r\n    	       <a id=\"two\" href=\"javascript:;\" style=\"width: 15px;height: 10px;left:620px;top:330px;position:absolute;text-decoration:none;background: url(");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/baner_06.png)\"></a>-->\r\n            </div>\r\n             <div class=\"clear\"></div>\r\n        </div>\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n</body>\r\n</html>\r\n\r\n");


	templateBuilder.Append("\r\n    \r\n    <div class=\"summary\">\r\n        <div class=\"left\">\r\n            <div class=\"about\">\r\n\r\n                <h3>About us</h3>\r\n                <!--<h4>About us</h4>-->\r\n                <div onclick=\"location.href='/zizhiEn/zizhiEn.html'\">\r\n                    <pre>&bull;  Qualification</pre>\r\n                </div>\r\n                <div onclick=\"location.href='/contentEn/aboutEn.html'\"  >\r\n                    <pre>&bull;  Company profile</pre>\r\n                </div>\r\n                <div class=\"current\" onclick=\"location.href='/contactEn/lianxiwomenyingwen.html'\">\r\n                    <pre>&bull;  Contact us</pre>\r\n                </div>\r\n\r\n            </div>\r\n             <div>\r\n                <a href=\"/newsEn/39.html\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/introduction/introduction1_06.jpg\" alt=\"\" /></a>\r\n            </div>\r\n            <div>\r\n                <a href=\"/contactEn/lianxiwomenyingwen.html\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/introduction/introduction1_08.jpg\" alt=\"\" /></a>\r\n            </div>\r\n        </div>\r\n        <div class=\"center\">\r\n            <div class=\"title\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/7.gif\" alt=\"\" />\r\n                <div class=\"location\"><span>location:Home&gt;Contact us</span></div>\r\n            </div>\r\n             \r\n            <div class=\"entry\" style=\"margin: 10px;\">\r\n                   ");
	templateBuilder.Append(Utils.ObjectToStr(model.content));
	templateBuilder.Append("\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n    ");

	templateBuilder.Append("<!DOCTYPE html>\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>\r\n    <title></title>\r\n</head>\r\n<body>\r\n      <div class=\"footer\" style=\"position: relative;\">\r\n        <div class=\"space\"></div>\r\n          <div class=\"foot-content\" style=\"margin-left: 20px\">\r\n              <pre>All rights reserved CHANGZHOU CITY TIANWANG PLASTIC CO.,LTD     TEL：0519-83639759       FAX：0519-83831228</pre>\r\n              <pre>                   Address：HEXI VILLAGE ZOUQU TOWN WU JIN DISTRICT JIANGSU OF CHINA\r\n    </pre>\r\n          </div>\r\n <div class=\"skype\" style=\"position: absolute;top: 40px;right: 200px;\">\r\n            <a href=\"skype:linda.masterbatch?chat\">\r\n\r\n                <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/skype.png\" style=\"border: none; width: 50px; height: 50px\" alt=\"My status\" />\r\n            </a>\r\n        </div>\r\n        <div class=\"Div1\" style=\"position: absolute;top: 40px;right: 140px;\">\r\n            <a href=\"mailto:info@twmasterbatch.com\">\r\n\r\n                <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/Email.png\" style=\"border: none; width: 50px; height: 50px\" alt=\"My status\" />\r\n            </a>\r\n        </div>\r\n        <div class=\"qq\"  style=\"position: absolute;top: 35px;right: 80px;\">\r\n            <a target=\"blank\" href=\"tencent://message/?uin=251344632\">\r\n\r\n                <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/QQ.png\" style=\"border: none; width: 50px; height: 55px\" alt=\"My status\" />\r\n            </a>\r\n        </div>\r\n    </div>\r\n    <script type=\"text/javascript\" src=\"http://download.skype.com/share/skypebuttons/js/skypeCheck.js\"></");
	templateBuilder.Append("script>\r\n</body>\r\n    <style>\r\n        #skypeCheckNotice{top: 900px !important}\r\n    </style>\r\n</html>\r\n");


	templateBuilder.Append("\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
