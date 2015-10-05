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
	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n<head lang=\"en\">\r\n    <meta charset=\"UTF-8\">\r\n    <title>CHANGZHOU CITY TIANWANG PLASTIC CO.,LTD</title>\r\n    <script src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/js/jquery.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n    <script src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/js/index.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n    <link href=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/css/index.css\" type=\"text/css\" rel=\"stylesheet\">\r\n\r\n</head>\r\n<body>\r\n  ");

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


	templateBuilder.Append("\r\n    <div class=\"content\">\r\n        <div class=\"introduction-news\">\r\n            <div class=\"introduction\">\r\n                <div class=\"title\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/aboutus_03.png\" alt=\"\"/>\r\n                    <span><a href=\"/content/about.html\">More&lt;&lt;</a></span>\r\n                </div>\r\n                <div class=\"content-images\">\r\n                    <div class=\"content\"style=\"overflow: hidden\" >\r\n                        ");
	templateBuilder.Append(get_article_content("aboutEn").ToString());

	templateBuilder.Append("\r\n\r\n                    </div>\r\n                    <div class=\"images\">\r\n                        <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/gsjj_04 .jpg\" style=\"width: 170px;height: 200px\" alt=\"\"/>\r\n                    </div>\r\n                </div>\r\n\r\n            </div>\r\n            <div class=\"news\">\r\n                <div class=\"title\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/news.jpg\" alt=\"\"/>\r\n                    <img  class=\"point\" src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/xwdt_06.png\" alt=\"\"/>\r\n                    <span><a href=\"/news/33.html\">More&lt;&lt;</a></span>\r\n                </div>\r\n                <div class=\"list\">\r\n                    <ul>\r\n                         ");
	DataTable redNews = get_article_list("newsEn", 0,9, "status=0 and is_top=1");

	int newsdr11__loop__id=0;
	foreach(DataRow newsdr11 in redNews.Rows)
	{
		newsdr11__loop__id++;


	templateBuilder.Append("\r\n                   \r\n             <li style=\"overflow: hidden;white-space: nowrap;text-overflow: ellipsis;margin: 5px 0;\">\r\n              <span  style=\"float: right\">");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(newsdr11["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("</span>\r\n              <a style=\"color: black\" href=\"");
	templateBuilder.Append(linkurl("news_showEn",Utils.ObjectToStr(newsdr11["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(newsdr11["title"]) + "\">" + Utils.ObjectToStr(newsdr11["title"]) + "</a>\r\n            </li>\r\n         \r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"show\">\r\n            <div class=\"title\">\r\n                <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/products.jpg\" alt=\"\"/>\r\n                <span><a href=\"/product.html\">More&lt;&lt;</a></span>\r\n            </div>\r\n            <div class=\"cp\">\r\n                <div class=\"pre\" id=\"pre\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/pre6_10_10.png\" alt=\"\"/>\r\n                </div>\r\n                <div class=\"cpImgas\">\r\n                    <div id=\"img\" style=\"height:200px;width:850px;position:relative;overflow:hidden;\">\r\n                        <ul style=\"position:absolute;left:0;top:0;\">\r\n                            \r\n                             ");
	DataTable redProducts = get_article_list("productEn", 0,5, "is_red=1");

	foreach(DataRow dr in redProducts.Rows)
	{

	templateBuilder.Append("\r\n                              <li style=\"float:left;list-style:none;\">\r\n                                  <a style=\"display: block;\" target= _blank  href=\"");
	templateBuilder.Append(linkurl("product_showEn",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" >  <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\" style=\"width: 140px;height: 140px\"></img></a>\r\n\r\n                                    <a href=\"#\" style=\"display:block;text-align:center;color:black;height: 20px\">" + Utils.ObjectToStr(dr["title"]) + "</a>\r\n                                </li>\r\n                            \r\n\r\n                             ");
	}	//end for if

	templateBuilder.Append("\r\n                         \r\n                        </ul>\r\n                        </div>\r\n          \r\n                <div class=\"next\" id=\"next\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/next6_10_12.png\" alt=\"\"/>\r\n                </div>\r\n            </div>\r\n                </div>\r\n        </div>\r\n          <script type=\"text/javascript\">\r\n              window.onload = function () {\r\n                  var div = document.getElementById('img');\r\n                  var ul = div.getElementsByTagName('ul')[0];\r\n                  var li = ul.getElementsByTagName('li');\r\n                  var speed = 2;\r\n                  ul.innerHTML = ul.innerHTML + ul.innerHTML;\r\n                  ul.style.width = li[0].offsetWidth * li.length + 'px';\r\n                  function move() {\r\n                      if (ul.offsetLeft < -ul.offsetWidth / 2) {\r\n                          ul.style.left = '0';\r\n                      }\r\n                      if (ul.offsetLeft > 0) {\r\n                          ul.style.left = -ul.offsetWidth / 2 + 'px';\r\n                      }\r\n                      ul.style.left = ul.offsetLeft + speed + 'px';\r\n                  }\r\n                  var timer = setInterval(move, 30);\r\n                  div.onmouseover = function () {\r\n                      clearInterval(timer);\r\n                  };\r\n                  div.onmouseout = function () {\r\n                      timer = setInterval(move, 30);\r\n                  };\r\n                  document.getElementById(\"pre\").onclick = function () {\r\n                      speed = -2;\r\n                  };\r\n                  document.getElementById(\"next\").onclick = function () {\r\n                      speed = 2;\r\n                  };\r\n              };\r\n    </");
	templateBuilder.Append("script>\r\n        <div class=\"trade-chat\">\r\n            <div class=\"trade\">\r\n                <div class=\"title\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/export.png\" alt=\"\"/>\r\n                    <span><a href=\"/trade/38.html\">More&lt;&lt;</a></span>\r\n                </div>\r\n                <div class=\"wm1\" style=\"height: 210px\">\r\n                        \r\n                    <ul style=\"width: 100%;height: 100%;list-style-type: none;overflow: hidden\">\r\n                        \r\n                         ");
	DataTable redTrade = get_article_list("waimaoEn", 0,4, "is_red=1");

	foreach(DataRow drr in redTrade.Rows)
	{

	templateBuilder.Append("\r\n                        \r\n                        \r\n                        \r\n                          <li style=\"width: 45%;height: 45%;float: left;margin: 10px;overflow: hidden\">\r\n                            <div class=\"cum1\" onclick=\"\">\r\n                              <a style=\"display: block;width: 130px;height: 100px\"  href=\"");
	templateBuilder.Append(linkurl("trade_showEn",Utils.ObjectToStr(drr["id"])));

	templateBuilder.Append("\" >   <img src=\"" + Utils.ObjectToStr(drr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(drr["title"]) + "\" style=\"width: 130px;height: 100px\" alt=\"\"/></a>\r\n                            </div>\r\n                            <div class=\"cum2\" style=\"overflow: hidden\">\r\n                                <p>" + Utils.ObjectToStr(drr["title"]) + "</p>\r\n                            </div>\r\n                        </li>\r\n                      \r\n                            \r\n                       \r\n\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                      \r\n                      \r\n                    </ul>\r\n                           \r\n\r\n                </div>\r\n            </div>\r\n         \r\n       \r\n            <div class=\"chat\">\r\n                <div class=\"title\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/contact.jpg\" alt=\"\"/>\r\n                    <span><a href=\"/contact/lianxiwomen.html\">More&lt;&lt;</a></span>\r\n                </div>\r\n                <div class=\"lx\">\r\n                    <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/lx_004.jpg\" alt=\"\"/>\r\n                    <h2> CHANGZHOU CITY TIANWANG PLASTIC CO.,LTD</h2>\r\n                    <h5>TEL：0519-83639759</h5>\r\n                    <h5>FAX：0519-83831228</h5>\r\n                 <!--   <h5>网址：http://lmxs.cn.alibaba.com</h5>-->\r\n                    <h5>ADD：HEXI VILLAGE ZOUQU TOWN WU JIN DISTRICT JIANGSU OF CHINA</h5>\r\n                    <h5>\r\n                        <a target=\"_blank\" href=\"https://www.facebook.com/lindamasterbatch@gmail.com/\"><img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/facebook.png\"  width=\"40px\" height=\"35px;\" style=\"margin-left:80px\"  border=\"0\" /></a>\r\n                        <a target=\"_blank\" href=\"https://www.linkedin.com/company/lindamasterbatch@gmail.com/\"><img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/linkedin.jpg\"  width=\"40px\" height=\"35px\"  border=\"0\" /></a>\r\n                          <a target=\"_blank\" href=\"https://twitter.com/lindamasterbatch@gmail.com/\"><img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/tw.png\"  width=\"40px\" height=\"35px\"  border=\"0\" /></a>\r\n                    </h5>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n    ");

	templateBuilder.Append("<!DOCTYPE html>\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>\r\n    <title></title>\r\n</head>\r\n<body>\r\n      <div class=\"footer\" style=\"position: relative;\">\r\n        <div class=\"space\"></div>\r\n          <div class=\"foot-content\" style=\"margin-left: 20px\">\r\n              <pre>All rights reserved CHANGZHOU CITY TIANWANG PLASTIC CO.,LTD     TEL：0519-83639759       FAX：0519-83831228</pre>\r\n              <pre>                   Address：HEXI VILLAGE ZOUQU TOWN WU JIN DISTRICT JIANGSU OF CHINA\r\n    </pre>\r\n          </div>\r\n <div class=\"skype\" style=\"position: absolute;top: 40px;right: 200px;\">\r\n            <a href=\"skype:linda.masterbatch?chat\">\r\n\r\n                <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/skype.png\" style=\"border: none; width: 50px; height: 50px\" alt=\"My status\" />\r\n            </a>\r\n        </div>\r\n        <div class=\"Div1\" style=\"position: absolute;top: 40px;right: 140px;\">\r\n            <a href=\"mailto:info@twmasterbatch.com\">\r\n\r\n                <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/Email.png\" style=\"border: none; width: 50px; height: 50px\" alt=\"My status\" />\r\n            </a>\r\n        </div>\r\n        <div class=\"qq\"  style=\"position: absolute;top: 35px;right: 80px;\">\r\n            <a target=\"blank\" href=\"tencent://message/?uin=251344632\">\r\n\r\n                <img src=\"");
	templateBuilder.Append("/templates/twsy");
	templateBuilder.Append("/images/QQ.png\" style=\"border: none; width: 50px; height: 55px\" alt=\"My status\" />\r\n            </a>\r\n        </div>\r\n    </div>\r\n    <script type=\"text/javascript\" src=\"http://download.skype.com/share/skypebuttons/js/skypeCheck.js\"></");
	templateBuilder.Append("script>\r\n</body>\r\n    <style>\r\n        #skypeCheckNotice{top: 900px !important}\r\n    </style>\r\n</html>\r\n");


	templateBuilder.Append("\r\n    <div class=\"clear\"></div>\r\n\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
