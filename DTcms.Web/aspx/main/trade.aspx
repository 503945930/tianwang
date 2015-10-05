<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_list" ValidateRequest="false" %>
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
	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n<head lang=\"en\">\r\n    <meta charset=\"UTF-8\">\r\n    <script src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/js/jquery.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/js/index.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n    <link href=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/css/index.css\" type=\"text/css\" rel=\"stylesheet\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/css/news.css\" type=\"text/css\" rel=\"stylesheet\">\r\n    <script src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/js/base.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n\r\n    <link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" type=\"text/css\" rel=\"stylesheet\">\r\n\r\n    <link href=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/css/product.css\" type=\"text/css\" rel=\"stylesheet\">\r\n    <title></title>\r\n     <script type=\"text/javascript\">\r\n         $(function () {\r\n             $('.nav li a').removeClass('current');\r\n             $('#wm').addClass('current');\r\n         });\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    ");

	templateBuilder.Append("<!DOCTYPE html>\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    \r\n\r\n\r\n    <title></title>\r\n    <script type=\"text/javascript\">\r\n\r\n        //$(function() {\r\n        //    var baner = document.getElementById('baner');\r\n        //    var ul = baner.getElementsByTagName('ul')[0];\r\n        //    var li = ul.getElementsByTagName('li');\r\n        //    ul.innerHTML = ul.innerHTML + ul.innerHTML;\r\n        //    ul.style.width = li[0].offsetWidth * li.length + 'px';\r\n        //    function move() {\r\n        //        if (ul.offsetLeft < -ul.offsetWidth / 2) {\r\n        //            ul.style.left = '0';\r\n        //        }\r\n        //        if (ul.offsetLeft > 0) {\r\n        //            ul.style.left = -ul.offsetWidth / 2 + 'px';\r\n        //        }\r\n        //        ul.style.left = ul.offsetLeft - 1200 + 'px';\r\n        //    }\r\n        //    var timer = setInterval(move, 3000);\r\n        //    baner.onmouseover = function () {\r\n        //        clearInterval(timer);\r\n        //    };\r\n        //    baner.onmouseout = function () {\r\n        //        timer = setInterval(move, 3000);\r\n        //    };\r\n        //    document.getElementById('one').onclick = function () {\r\n        //        ul.style.left = '0';\r\n        //    };\r\n        //    document.getElementById('two').onclick = function () {\r\n        //        ul.style.left = -1200 + 'px';\r\n        //    };\r\n        //})\r\n        //window.onload = function () {\r\n\r\n\r\n        //};\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n<body>\r\n    <div class=\"header\">\r\n        <div class=\"logo-nav\">\r\n            <div class=\"logo\"><a href=\"#\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/tw_02.jpg\" alt=\"\" /></a></div>\r\n            <div class=\"nav-phone\">\r\n                <div class=\"phone\">\r\n                    <a href=\"\">\r\n                        <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/tw_03.png\" alt=\"\" /></a>\r\n                </div>\r\n                <div class=\"nav\">\r\n                    <ul>\r\n                        <li><a class=\"current\" href=\"/indexzh.html\">网站首页</a></li>\r\n                        <li><a id=\"gsjj\" href=\"/content/about.html\">公司简介</a></li>\r\n                        <li><a id=\"gsdt\" href=\"/news/33.html\">公司动态</a></li>\r\n                        <li><a id=\"cpsj\" href=\"/product.html\">产品世界</a></li>\r\n                        <li><a id=\"wm\" href=\"/trade/38.html\">外贸</a></li>\r\n                        <li><a id=\"contact\" href=\"/contact/lianxiwomen.html\">联系我们</a></li>\r\n                        <li><a href=\"/indexen.html\">ENGLISH</a></li>\r\n                    </ul>\r\n                </div>\r\n                <div class=\"clear\"></div>\r\n            </div>\r\n            <div class=\"clear\"></div>\r\n            <div  id=\"baner\" class=\"swith\" style=\"overflow:hidden;height:350px;position:relative;left:0;top:0;\">\r\n                <!--<img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/baner_03.jpg\" alt=\"\"/>-->\r\n                <ul  style=\"position:absolute;left:0;top:0;padding:0;margin:0;\">\r\n                    <li style=\"list-style: none; float: left;\" name=\"img1\">\r\n                        <img style=\"width: 1200px; height: 350px;\" src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/baner_03.jpg\"></img></li>\r\n                   <!-- <li  style=\"list-style: none; float: left;\" name=\"img2\">\r\n                        <img style=\"width: 1200px; height: 350px;\" src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/swith.png\"></img></li>-->\r\n                </ul>\r\n                <!--<a id=\"one\" href=\"javascript:;\" style=\"width: 15px;height: 10px;left:600px;top:330px;position:absolute;text-decoration:none;background: url(");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/baner_06.png)\"></a>\r\n    	       <a id=\"two\" href=\"javascript:;\" style=\"width: 15px;height: 10px;left:620px;top:330px;position:absolute;text-decoration:none;background: url(");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/baner_06.png)\"></a-->>\r\n            </div>\r\n             <div class=\"clear\"></div>\r\n        </div>\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n</body>\r\n</html>\r\n");


	templateBuilder.Append("\r\n    <div class=\"news\" style=\"overflow: visible;\">\r\n        <div class=\"left\">\r\n            <div class=\"about\">\r\n   <h3>公司动态</h3>\r\n                    <h4>News</h4>\r\n                    <div onclick=\"location.href='/zhizhi/zhizhi.html'\">\r\n                        <pre>&bull;  企业资质</pre>\r\n                    </div>\r\n                    <div onclick=\"location.href='/trade/38.html‘\" class=\"current\">\r\n                        <pre>&bull;  外贸流程</pre>\r\n                    </div>\r\n                    <div onclick=\"location.href='/contact/lianxiwomen.html'\">\r\n                        <pre>&bull;  联系我们</pre>\r\n                    </div>\r\n\r\n            </div>\r\n\r\n\r\n          \r\n            <div>\r\n                <a href=\"/news/33.html\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/introduction/ad_06.jpg\" alt=\"\" /></a>\r\n            </div>\r\n            <div>\r\n                <a href=\"/contact/lianxiwomen.html\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/introduction/ad_08.jpg\" alt=\"\" /></a>\r\n            </div>\r\n        </div>\r\n        <div class=\"center\" style=\"height: auto; width: 750px;\">\r\n            <div class=\"title\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/wm_title.gif\" alt=\"\" />\r\n                <div class=\"location\"><span>当前位置:首页&gt;外贸</span></div>\r\n            </div>\r\n            <div class=\"photo_list\">\r\n                \r\n                <ul style=\"height: auto;margin-bottom: 10px;\">\r\n                    ");
	DataTable photo_list = get_article_list("waimao", category_id, page, "status=0", out totalcount, out pagelist, "trade_list", category_id, "__id__");

	templateBuilder.Append("<!--取得一个分页DataTable-->\r\n                    ");
	foreach(DataRow dr in photo_list.Rows)
	{

	templateBuilder.Append("\r\n                    <li style=\"width: 350px;\">\r\n                        <a  class=\"img\" href=\"");
	templateBuilder.Append(linkurl("trade_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">\r\n                            <img  src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\" style=\"width: 300px;height: 300px;display: block\" />\r\n                            <span style=\"display: block;margin: 0 150px;text-align: center\">" + Utils.ObjectToStr(dr["title"]) + "</span>\r\n                        </a>\r\n                    </li>\r\n\r\n                    ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n                </ul>\r\n                <div class=\"clear\"></div>\r\n                <div class=\"line20\" style=\"padding: 10px\"></div>\r\n                <div class=\"flickr\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div> <!--放置页码列表-->\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n\r\n    <div class=\"clear\"></div>\r\n    ");

	templateBuilder.Append("<!DOCTYPE html>\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>\r\n    <title></title>\r\n</head>\r\n<body>\r\n      <div class=\"footer\" style=\"position: relative\">\r\n        <div class=\"space\"></div>\r\n        <div class=\"foot-content\">\r\n            <pre>版权所有 常州市天王塑业有限公司     电话：0519-83639759       传真：0519-83831228</pre>\r\n            <pre>                                            地址：武进区邹区镇鹤溪村委    </pre>\r\n        </div>\r\n        <div class=\"skype\" style=\"position: absolute;top: 40px;right: 200px;\">\r\n            <a href=\"skype:linda.masterbatch?chat\">\r\n\r\n                <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/skype.png\" style=\"border: none; width: 50px; height: 50px\" alt=\"My status\" />\r\n            </a>\r\n        </div>\r\n        <div class=\"Div1\" style=\"position: absolute;top: 40px;right: 140px;\">\r\n            <a href=\"mailto:info@twmasterbatch.com\">\r\n\r\n                <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/Email.png\" style=\"border: none; width: 50px; height: 50px\" alt=\"My status\" />\r\n            </a>\r\n        </div>\r\n        <div class=\"qq\"  style=\"position: absolute;top: 35px;right: 80px;\">\r\n            <a target=\"blank\" href=\"tencent://message/?uin=251344632\">\r\n\r\n                <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/QQ.png\" style=\"border: none; width: 50px; height: 55px\" alt=\"My status\" />\r\n            </a>\r\n        </div>\r\n    </div>\r\n    <script type=\"text/javascript\" src=\"http://download.skype.com/share/skypebuttons/js/skypeCheck.js\"></");
	templateBuilder.Append("script>\r\n    <style>\r\n        #skypeCheckNotice{top: 900px !important}\r\n    </style>\r\n</body>\r\n</html>\r\n");


	templateBuilder.Append("\r\n\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
