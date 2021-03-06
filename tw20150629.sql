USE [DTcmsdb3]
GO
/****** Object:  Table [dbo].[dt_user_groups]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[grade] [int] NULL,
	[upgrade_exp] [int] NULL,
	[amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[discount] [int] NULL,
	[is_default] [tinyint] NULL,
	[is_upgrade] [tinyint] NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_DT_USER_GROUPS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员等级值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'grade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'升级经验值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'upgrade_exp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认预存款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购物折扣' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否注册用户组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动升级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_upgrade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否禁用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups'
GO
SET IDENTITY_INSERT [dbo].[dt_user_groups] ON
INSERT [dbo].[dt_user_groups] ([id], [title], [grade], [upgrade_exp], [amount], [point], [discount], [is_default], [is_upgrade], [is_lock]) VALUES (1, N'普通会员', 1, 0, CAST(1.00 AS Decimal(9, 2)), 10, 100, 1, 1, 0)
INSERT [dbo].[dt_user_groups] ([id], [title], [grade], [upgrade_exp], [amount], [point], [discount], [is_default], [is_upgrade], [is_lock]) VALUES (2, N'VIP会员', 2, 1000, CAST(0.00 AS Decimal(9, 2)), 0, 99, 0, 1, 0)
SET IDENTITY_INSERT [dbo].[dt_user_groups] OFF
/****** Object:  Table [dbo].[dt_user_group_price]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_group_price](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[group_id] [int] NULL,
	[price] [decimal](9, 2) NULL,
 CONSTRAINT [PK_DT_USER_GROUP_PRICE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'group_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购物价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员组价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price'
GO
/****** Object:  Table [dbo].[dt_user_point_log]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_point_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[value] [int] NULL,
	[remark] [nvarchar](500) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_POINT_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增减积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
/****** Object:  Table [dbo].[dt_user_oauth_app]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_oauth_app](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[app_id] [nvarchar](100) NULL,
	[app_key] [nvarchar](500) NULL,
	[remark] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[api_path] [nvarchar](255) NULL,
 CONSTRAINT [PK_DT_USER_OAUTH_APP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AppId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'app_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AppKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'app_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'api_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OAuth应用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app'
GO
SET IDENTITY_INSERT [dbo].[dt_user_oauth_app] ON
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (1, N'用QQ帐号登录', N'/upload/201301/22/201301222356267017.png', N'API Key', N'Secret Key', N'QQ互联开放平台', 99, 0, N'qq')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (2, N'用新浪微博登录', N'/upload/201301/22/201301222358108990.png', N'API Key', N'Secret Key', N'新浪微博开放平台', 100, 0, N'sina')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (3, N'用淘宝账号登录', N'/upload/201301/22/201301222359116140.png', N'API Key', N'Secret Key', N'淘宝开放平台', 101, 0, N'taobao')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (4, N'用开心网帐号登录', N'/upload/201301/22/201301222359597445.png', N'API Key', N'Secret Key', N'开心网开放平台', 102, 0, N'kaixin')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (5, N'用人人网帐号登录', N'/upload/201301/23/201301230000421311.png', N'API Key', N'Secret Key', N'人人网开放平台', 103, 0, N'renren')
INSERT [dbo].[dt_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (6, N'用飞信账号登录', N'/upload/201301/23/201301230001220360.png', N'API Key', N'Secret Key', N'中国移动飞信开放平台', 104, 0, N'feixin')
SET IDENTITY_INSERT [dbo].[dt_user_oauth_app] OFF
/****** Object:  Table [dbo].[dt_user_oauth]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_oauth](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[oauth_name] [nvarchar](50) NOT NULL,
	[oauth_access_token] [nvarchar](500) NULL,
	[oauth_openid] [nvarchar](255) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_OAUTH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开放平台名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'access_token' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_access_token'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OAuth授权用户信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth'
GO
/****** Object:  Table [dbo].[dt_user_message]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_message](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [tinyint] NULL,
	[post_user_name] [nvarchar](100) NULL,
	[accept_user_name] [nvarchar](100) NULL,
	[is_read] [tinyint] NULL,
	[title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[post_time] [datetime] NOT NULL,
	[read_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_MESSAGE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息类型0系统消息1收件箱2发件箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'post_user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'accept_user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否查看0未阅1已阅' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'is_read'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'post_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'read_time'
GO
/****** Object:  Table [dbo].[dt_navigation]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_navigation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nav_type] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[sub_title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[remark] [nvarchar](500) NULL,
	[parent_id] [int] NULL,
	[class_list] [nvarchar](500) NULL,
	[class_layer] [int] NULL,
	[channel_id] [int] NULL,
	[action_type] [nvarchar](500) NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_NAVIGATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'nav_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'sub_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否隐藏0显示1隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属父导航ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单ID列表(逗号分隔开)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'class_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'class_layer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限资源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统导航菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation'
GO
SET IDENTITY_INSERT [dbo].[dt_navigation] ON
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (1, N'System', N'sys_contents', N'内容管理', N'内容', N'', 99, 0, N'', 0, N',1,', 1, 0, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (2, N'System', N'sys_users', N'会员管理', N'会员', N'', 100, 0, N'系统默认导航，不可更改导航ID', 0, N',2,', 1, 0, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (3, N'System', N'sys_orders', N'订单管理', N'订单', N'', 101, 0, N'系统默认导航，不可修改导航ID', 0, N',3,', 1, 0, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (4, N'System', N'sys_design', N'界面管理', N'界面', N'', 102, 0, N'系统默认导航，不可更改导航ID', 0, N',4,', 1, 0, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (5, N'System', N'sys_controller', N'控制面板', N'控制面板', N'', 103, 0, N'系统默认导航，不可修改导航ID', 0, N',5,', 1, 0, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (6, N'System', N'sys_plugins', N'插件管理', N'插件管理', N'', 999, 0, N'系统默认导航，不可修改导航ID', 1, N',1,6,', 2, 0, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (7, N'System', N'user_manage', N'会员管理', N'', N'', 99, 0, N'', 2, N',2,7,', 2, 0, N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (8, N'System', N'user_log', N'会员日志', N'', N'', 100, 0, N'', 2, N',2,8,', 2, 0, N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (9, N'System', N'user_settings', N'会员设置', N'', N'', 101, 0, N'', 2, N',2,9,', 2, 0, N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (10, N'System', N'order_manage', N'订单管理', N'', N'', 99, 0, N'', 3, N',3,10,', 2, 0, N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (11, N'System', N'order_settings', N'订单设置', N'', N'', 100, 0, N'', 3, N',3,11,', 2, 0, N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (12, N'System', N'app_manage', N'应用管理', N'', N'', 99, 0, N'', 4, N',4,12,', 2, 0, N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (13, N'System', N'site_manage', N'系统管理', N'', N'', 99, 0, N'', 5, N',5,13,', 2, 0, N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (14, N'System', N'sys_manager', N'系统用户', N'', N'', 101, 0, N'', 5, N',5,14,', 2, 0, N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (15, N'System', N'user_audit', N'审核会员', N'', N'users/user_audit.aspx', 99, 0, N'', 7, N',2,7,15,', 3, 0, N'Show,View,Audit', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (16, N'System', N'user_list', N'所有会员', N'', N'users/user_list.aspx', 100, 0, N'', 7, N',2,7,16,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (17, N'System', N'user_group', N'会员组别', N'', N'users/group_list.aspx', 101, 0, N'', 7, N',2,7,17,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (18, N'System', N'user_sms', N'发送短信', N'', N'users/user_sms.aspx', 99, 0, N'', 8, N',2,8,18,', 3, 0, N'Show,View,Add', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (19, N'System', N'user_message', N'站内消息', N'', N'users/message_list.aspx', 100, 0, N'', 8, N',2,8,19,', 3, 0, N'Show,View,Add,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (20, N'System', N'user_point_log', N'积分记录', N'', N'users/point_log.aspx', 101, 0, N'', 8, N',2,8,20,', 3, 0, N'Show,View,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (21, N'System', N'user_amount_log', N'消费记录', N'', N'users/amount_log.aspx', 102, 0, N'', 8, N',2,8,21,', 3, 0, N'Show,View,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (22, N'System', N'user_config', N'参数设置', N'', N'users/user_config.aspx', 99, 0, N'', 9, N',2,9,22,', 3, 0, N'Show,View,Edit', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (23, N'System', N'user_sms_template', N'短信模板', N'', N'users/sms_template_list.aspx', 100, 0, N'', 9, N',2,9,23,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (24, N'System', N'user_mail_template', N'邮件模板', N'', N'users/mail_template_list.aspx', 101, 0, N'', 9, N',2,9,24,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (25, N'System', N'user_oauth', N'OAuth设置', N'', N'users/oauth_app_list.aspx', 102, 0, N'', 9, N',2,9,25,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (26, N'System', N'order_confirm', N'待确认订单', N'', N'order/order_confirm.aspx', 99, 0, N'', 10, N',3,10,26,', 3, 0, N'Show,View,Confirm', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (27, N'System', N'order_list', N'全部订单', N'', N'order/order_list.aspx', 100, 0, N'', 10, N',3,10,27,', 3, 0, N'Show,View,Add,Edit,Delete,Confirm,Cancel,Invalid', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (28, N'System', N'order_config', N'订单参数设置', N'', N'order/order_config.aspx', 99, 0, N'', 11, N',3,11,28,', 3, 0, N'Show,View,Edit', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (29, N'System', N'order_payment', N'支付方式设置', N'', N'order/payment_list.aspx', 100, 0, N'', 11, N',3,11,29,', 3, 0, N'Show,View,Edit', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (30, N'System', N'order_express', N'配送方式设置', N'', N'order/express_list.aspx', 101, 0, N'', 11, N',3,11,30,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (31, N'System', N'app_templet_list', N'网站模板管理', N'', N'settings/templet_list.aspx', 99, 0, N'', 12, N',4,12,31,', 3, 0, N'Show,View,Add,Edit,Delete,Build', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (32, N'System', N'app_plugin_list', N'插件安装配置', N'', N'settings/plugin_list.aspx', 100, 0, N'', 12, N',4,12,32,', 3, 0, N'Show,View,Build,Instal,Unload', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (33, N'System', N'app_builder_html', N'生成静态页面', N'', N'settings/builder_html.aspx', 101, 0, N'', 12, N',4,12,33,', 3, 0, N'Show,View,Build', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (34, N'System', N'app_navigation_list', N'后台导航管理', N'', N'settings/nav_list.aspx', 102, 0, N'', 12, N',4,12,34,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (35, N'System', N'site_config', N'系统设置', N'', N'settings/sys_config.aspx', 99, 0, N'', 13, N',5,13,35,', 3, 0, N'Show,View,Edit', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (36, N'System', N'site_url_rewrite', N'URL配置', N'', N'settings/url_rewrite_list.aspx', 100, 0, N'', 13, N',5,13,36,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (37, N'System', N'site_channel_list', N'频道管理', N'', N'channel/channel_list.aspx', 101, 0, N'', 13, N',5,13,37,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (38, N'System', N'site_channel_category', N'频道分类', N'', N'channel/category_list.aspx', 102, 0, N'', 13, N',5,13,38,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (39, N'System', N'site_channel_field', N'扩展字段', N'', N'channel/attribute_field_list.aspx', 103, 0, N'', 13, N',5,13,39,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (40, N'System', N'manager_list', N'管理员管理', N'', N'manager/manager_list.aspx', 99, 0, N'', 14, N',5,14,40,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (41, N'System', N'manager_role', N'角色管理', N'', N'manager/role_list.aspx', 100, 0, N'', 14, N',5,14,41,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (42, N'System', N'manager_log', N'管理日志', N'', N'manager/manager_log.aspx', 101, 0, N'', 14, N',5,14,42,', 3, 0, N'Show,View,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (43, N'System', N'channel_main', N'默认站点', N'', N'', 99, 0, N'', 1, N',1,43,', 2, 0, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (44, N'System', N'channel_news', N'公司动态', N'', N'', 99, 0, N'', 43, N',1,43,44,', 3, 1, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (45, N'System', N'channel_news_list', N'内容管理', N'', N'article/article_list.aspx', 99, 0, N'', 44, N',1,43,44,45,', 4, 1, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (46, N'System', N'channel_news_category', N'栏目类别', N'', N'article/category_list.aspx', 100, 0, N'', 44, N',1,43,44,46,', 4, 1, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (47, N'System', N'channel_news_comment', N'评论管理', N'', N'article/comment_list.aspx', 101, 0, N'', 44, N',1,43,44,47,', 4, 1, N'Show,View,Delete,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (52, N'System', N'channel_product', N'产品世界', N'', N'', 101, 0, N'', 43, N',1,43,52,', 3, 3, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (53, N'System', N'channel_photo_list', N'内容管理', N'', N'article/article_list.aspx', 99, 0, N'', 52, N',1,43,52,53,', 4, 3, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (54, N'System', N'channel_photo_category', N'栏目类别', N'', N'article/category_list.aspx', 100, 0, N'', 52, N',1,43,52,54,', 4, 3, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (55, N'System', N'channel_photo_comment', N'评论管理', N'', N'article/comment_list.aspx', 101, 0, N'', 52, N',1,43,52,55,', 4, 3, N'Show,View,Delete,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (60, N'System', N'channel_content', N'公司简介', N'', N'', 103, 0, N'', 43, N',1,43,60,', 3, 5, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (61, N'System', N'channel_content_list', N'内容管理', N'', N'article/article_list.aspx', 99, 0, N'', 60, N',1,43,60,61,', 4, 5, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (62, N'System', N'channel_content_category', N'栏目类别', N'', N'article/category_list.aspx', 100, 0, N'', 60, N',1,43,60,62,', 4, 5, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (63, N'System', N'channel_content_comment', N'评论管理', N'', N'article/comment_list.aspx', 101, 0, N'', 60, N',1,43,60,63,', 4, 5, N'Show,View,Delete,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (64, N'System', N'plugin_link', N'链接管理', N'', N'/plugins/link/admin/index.aspx', 99, 0, N'', 6, N',1,6,64,', 3, 0, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (65, N'System', N'plugin_feedback', N'留言管理', N'', N'/plugins/feedback/admin/index.aspx', 99, 0, N'', 6, N',1,6,65,', 3, 0, N'Show,View,Delete,Audit,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (70, N'System', N'channel_lianxiwomen', N'联系我们', N'', N'', 99, 0, N'', 43, N',1,43,70,', 3, 8, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (71, N'System', N'channel_lianxiwomen_list', N'内容管理', N'', N'article/article_list.aspx', 99, 0, N'', 70, N',1,43,70,71,', 4, 8, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (72, N'System', N'channel_lianxiwomen_category', N'栏目类别', N'', N'article/category_list.aspx', 100, 0, N'', 70, N',1,43,70,72,', 4, 8, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (73, N'System', N'channel_lianxiwomen_comment', N'评论管理', N'', N'article/comment_list.aspx', 101, 0, N'', 70, N',1,43,70,73,', 4, 8, N'Show,View,Delete,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (74, N'System', N'channel_waimao', N'外贸', N'', N'', 99, 0, N'', 43, N',1,43,74,', 3, 9, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (75, N'System', N'channel_waimao_list', N'内容管理', N'', N'article/article_list.aspx', 99, 0, N'', 74, N',1,43,74,75,', 4, 9, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (76, N'System', N'channel_waimao_category', N'栏目类别', N'', N'article/category_list.aspx', 100, 0, N'', 74, N',1,43,74,76,', 4, 9, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (77, N'System', N'channel_waimao_comment', N'评论管理', N'', N'article/comment_list.aspx', 101, 0, N'', 74, N',1,43,74,77,', 4, 9, N'Show,View,Delete,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (78, N'System', N'channel_gongsijianjieyingwen', N'公司简介英文', N'', N'', 99, 0, N'', 43, N',1,43,78,', 3, 10, N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (79, N'System', N'channel_gongsijianjieyingwen_list', N'内容管理', N'', N'article/article_list.aspx', 99, 0, N'', 78, N',1,43,78,79,', 4, 10, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (80, N'System', N'channel_gongsijianjieyingwen_category', N'栏目类别', N'', N'article/category_list.aspx', 100, 0, N'', 78, N',1,43,78,80,', 4, 10, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (81, N'System', N'channel_gongsijianjieyingwen_comment', N'评论管理', N'', N'article/comment_list.aspx', 101, 0, N'', 78, N',1,43,78,81,', 4, 10, N'Show,View,Delete,Reply', 1)
SET IDENTITY_INSERT [dbo].[dt_navigation] OFF
/****** Object:  Table [dbo].[dt_mail_template]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_mail_template](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[maill_title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_MAIL_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'maill_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template'
GO
SET IDENTITY_INSERT [dbo].[dt_mail_template] ON
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (1, N'会员注册链接邮件', N'registerlink', N'新用户注册链接(请勿回复此邮件)', N'<p>
	欢迎您成为{webname}会员用户，请点击如下的网址继续注册：
</p>
<p>
	<a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行注册；如果您从未注册过本站会员，请忽略本邮件；此邮件为系统自动发出，请勿回复。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (2, N'注册激活账户邮件', N'regverify', N'激活注册账户(请勿回复此邮件)', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp; 欢迎您成为{webname}会员用户，请点击如下的网址进行激活您的会员账户：
</p>
<p>
	&nbsp;&nbsp;&nbsp; <a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行注册；如果您从未注册过本站会员，请忽略本邮件；此邮件为系统自动发出，请勿回复。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (3, N'用户取回密码', N'getpassword', N'找回密码提示(请勿回复此邮件)', N'<strong>{username}，您好：</strong><br />
<p>
	您在<span style="color:#FF0000;">{webname}</span>点击了“忘记密码”找回申请，故系统自动为您发送了这封邮件。您可以点击以下链接修改您的密码：<br />
<a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行修改。如果您不需要修改密码，或者您从未点击过“忘记密码”按钮，请忽略本邮件。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (4, N'欢迎新用户邮件', N'welcomemsg', N'欢迎新用户(请勿回复此邮件)', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp; 您已成功注册并正式成为{webname}会员用户，请您注意保管好个人账户信息，防止丢失或泄漏。
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (5, N'订单确认通知', N'order_confirm', N'订单确认通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单已确认，订单号为：{orderno}，共计{amount}元，我们会尽快安排发货，请您耐心等待，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (6, N'订单发货通知', N'order_express', N'订单发货通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单已经发货，订单号为：{orderno}，共计{amount}元，请您注意查收，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (7, N'订单完成通知', N'order_complete', N'订单完成通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单交易完成，订单号为：{orderno}，共计{amount}元，期待您下次光临，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
SET IDENTITY_INSERT [dbo].[dt_mail_template] OFF
/****** Object:  Table [dbo].[dt_link]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_link](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[user_name] [nvarchar](50) NULL,
	[user_tel] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[site_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[is_image] [int] NOT NULL,
	[sort_id] [int] NOT NULL,
	[is_red] [tinyint] NOT NULL,
	[is_lock] [tinyint] NOT NULL,
	[add_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dt_link] ON
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (1, N'搜狐IT', N'', N'', N'', N'http://it.sohu.com', N'', 0, 99, 1, 0, CAST(0x0000A11001162A28 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (2, N'百度贴吧', N'', N'', N'', N'http://tieba.baidu.com', N'', 0, 99, 1, 0, CAST(0x0000A110011649CC AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (3, N'中华网科技', N'', N'', N'', N'http://tech.china.com', N'', 0, 99, 1, 0, CAST(0x0000A11001166268 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (4, N'鞭牛士', N'', N'', N'', N'http://www.bianews.com', N'', 0, 99, 1, 0, CAST(0x0000A11001168338 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (5, N'中国IT实验室', N'', N'', N'', N'http://www.chinaitlab.com', N'', 0, 99, 1, 0, CAST(0x0000A1100116A408 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (6, N'科技讯', N'', N'', N'', N'http://www.kejixun.com', N'', 0, 99, 1, 0, CAST(0x0000A1100116B920 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (7, N'牛华网', N'', N'', N'', N'http://www.newhua.com', N'', 0, 99, 1, 0, CAST(0x0000A1100116D66C AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (8, N'淘宝数码', N'', N'', N'', N'http://it.taobao.com', N'', 0, 99, 1, 0, CAST(0x0000A1100116F4E4 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (9, N'手机之家', N'', N'', N'', N'http://www.imobile.com.cn', N'', 0, 99, 1, 0, CAST(0x0000A11001170B28 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (10, N'Discuz社区', N'', N'', N'', N'http://www.discuz.net', N'', 0, 99, 1, 0, CAST(0x0000A11001172F7C AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (11, N'IT之家', N'', N'', N'', N'http://www.ithome.com', N'', 0, 99, 1, 0, CAST(0x0000A110011752A4 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (12, N'移动站长', N'', N'', N'', N'www.mymzz.com', N'', 0, 99, 1, 0, CAST(0x0000A11001176FF0 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (13, N'ckplayer视频播放器', N'', N'', N'', N'http://www.ckplayer.com', N'', 0, 99, 1, 0, CAST(0x0000A1100117C900 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (14, N'雨林木风', N'', N'', N'', N'http://www.ylmf.net', N'', 0, 99, 1, 0, CAST(0x0000A1100117EFAC AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (15, N'麻省理工科技创业', N'', N'', N'', N'http://www.mittrchinese.com', N'', 0, 99, 1, 0, CAST(0x0000A1100118107C AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (16, N'计世网', N'', N'', N'', N'http://www.ccw.com.cn', N'', 0, 99, 1, 0, CAST(0x0000A11001182594 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (17, N'IT茶馆', N'', N'', N'', N'http://www.itchaguan.com', N'', 0, 99, 1, 0, CAST(0x0000A11001184D6C AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (18, N'酷6科技', N'', N'', N'', N'http://tech.ku6.com', N'', 0, 99, 1, 0, CAST(0x0000A110011863B0 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (19, N'雷锋网', N'', N'', N'', N'http://www.leiphone.com', N'', 0, 99, 1, 0, CAST(0x0000A110011879F4 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (20, N'电玩巴士', N'', N'', N'', N'http://www.tgbus.com', N'', 0, 99, 1, 0, CAST(0x0000A11001189038 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (21, N'站长网', N'', N'', N'', N'http://www.admin5.com', N'', 0, 99, 1, 0, CAST(0x0000A1100118B5B8 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (22, N'站长之家', N'', N'', N'', N'http://www.chinaz.com', N'', 0, 99, 1, 0, CAST(0x0000A1100118CBFC AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (23, N'驱动之家', N'', N'', N'', N'http://www.mydrivers.com', N'', 0, 99, 1, 0, CAST(0x0000A1100118E114 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (24, N'驱动人生', N'', N'', N'', N'http://www.160.com', N'', 0, 99, 1, 0, CAST(0x0000A1100118F500 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (25, N'铁血军事', N'', N'', N'', N'http://www.tiexue.net', N'', 0, 99, 1, 0, CAST(0x0000A11001190A18 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (26, N'动软卓越', N'', N'', N'', N'http://www.maticsoft.com', N'http://www.maticsoft.com/images/logo/logo12.gif', 1, 99, 1, 0, CAST(0x0000A11001194834 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (27, N'站长中国', N'', N'', N'', N'http://www.chinaz.com', N'http://www.chinaz.com/images/chinaz.gif', 1, 99, 1, 0, CAST(0x0000A110011982CC AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (28, N'51aspx', N'', N'', N'', N'http://www.51aspx.com', N'http://www.51aspx.com/logo_88x31.gif', 1, 99, 1, 0, CAST(0x0000A1100119A144 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (29, N'UI制造者', N'', N'', N'', N'http://www.uimaker.com', N'http://www.uimaker.com/templets/uimaker/images/uimakerlogo.gif', 1, 99, 1, 0, CAST(0x0000A1100119D27C AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (30, N'财付通', N'', N'', N'', N'http://www.tenpay.com', N'http://www.it134.cn/it134_old2/UpLoadFiles/image/links/2010071420394503.jpg', 1, 99, 1, 0, CAST(0x0000A110011A6174 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (31, N'支付宝', N'', N'', N'', N'http://www.alipay.com', N'http://www.dtcms.net/it134_old2/UpLoadFiles/20110509/2011050915104673.jpg', 1, 99, 1, 0, CAST(0x0000A110011A99B4 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (32, N'超酷网页视频播放器', N'', N'', N'', N'http://www.ckplayer.com', N'http://www.ckplayer.com/images/logo_88-31.jpg', 1, 99, 1, 0, CAST(0x0000A110011ACE70 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (33, N'读科技', N'', N'', N'', N'http://www.dukeji.com', N'http://www.dukeji.com/Content/themes/base/CMS/images/logo.jpg', 1, 99, 1, 0, CAST(0x0000A110011B6B78 AS DateTime))
INSERT [dbo].[dt_link] ([id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (34, N'jquery', N'', N'', N'', N'http://www.jquery.com', N'http://www.it134.cn/it134_old2/UpLoadFiles/image/links/jquery.gif', 1, 99, 1, 0, CAST(0x0000A110011DAD34 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_link] OFF
/****** Object:  Table [dbo].[dt_feedback]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[user_name] [nvarchar](50) NULL,
	[user_tel] [nvarchar](30) NULL,
	[user_qq] [nvarchar](30) NULL,
	[user_email] [nvarchar](100) NULL,
	[add_time] [datetime] NOT NULL,
	[reply_content] [ntext] NULL,
	[reply_time] [datetime] NULL,
	[is_lock] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dt_feedback] ON
INSERT [dbo].[dt_feedback] ([id], [title], [content], [user_name], [user_tel], [user_qq], [user_email], [add_time], [reply_content], [reply_time], [is_lock]) VALUES (1, N'第一条留言非我莫属啦！', N'看来第一条留言非我莫属啦！<br />沙发！！！', N'一些事情', N'13800138000', N'932235529', N'joxie@qq.com', CAST(0x0000A11001201B78 AS DateTime), N'', NULL, 0)
INSERT [dbo].[dt_feedback] ([id], [title], [content], [user_name], [user_tel], [user_qq], [user_email], [add_time], [reply_content], [reply_time], [is_lock]) VALUES (2, N'向前排靠齐', N'能有些表情多好。', N'test', N'', N'', N'', CAST(0x0000A11100816B40 AS DateTime), N'', NULL, 1)
SET IDENTITY_INSERT [dbo].[dt_feedback] OFF
/****** Object:  Table [dbo].[dt_express]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_express](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[express_code] [nvarchar](100) NULL,
	[express_fee] [decimal](9, 2) NULL,
	[website] [nvarchar](255) NULL,
	[remark] [ntext] NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_DT_EXPRESS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'express_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配送费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'express_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'website'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否不显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流快递' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express'
GO
SET IDENTITY_INSERT [dbo].[dt_express] ON
INSERT [dbo].[dt_express] ([id], [title], [express_code], [express_fee], [website], [remark], [sort_id], [is_lock]) VALUES (1, N'顺丰快递', N'shunfeng', CAST(20.00 AS Decimal(9, 2)), N'http://www.sf-express.com', N'顺丰快递<br />换行啦！', 99, 0)
INSERT [dbo].[dt_express] ([id], [title], [express_code], [express_fee], [website], [remark], [sort_id], [is_lock]) VALUES (2, N'韵达快递', N'yunda', CAST(14.00 AS Decimal(9, 2)), N'http://www.yundaex.com', N'韵达快递', 100, 0)
SET IDENTITY_INSERT [dbo].[dt_express] OFF
/****** Object:  Table [dbo].[dt_channel_category]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[build_path] [nvarchar](100) NULL,
	[templet_path] [nvarchar](100) NULL,
	[domain] [nvarchar](255) NULL,
	[is_default] [tinyint] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_DT_CHANNEL_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成文件夹名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'build_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板文件夹名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'templet_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'绑定域名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道分类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category'
GO
SET IDENTITY_INSERT [dbo].[dt_channel_category] ON
INSERT [dbo].[dt_channel_category] ([id], [title], [build_path], [templet_path], [domain], [is_default], [sort_id]) VALUES (1, N'默认站点', N'main', N'twsy', N'', 1, 99)
SET IDENTITY_INSERT [dbo].[dt_channel_category] OFF
/****** Object:  Table [dbo].[dt_manager_role]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](100) NULL,
	[role_type] [tinyint] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_MANAGER_ROLE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'role_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'role_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否系统默认0否1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role'
GO
SET IDENTITY_INSERT [dbo].[dt_manager_role] ON
INSERT [dbo].[dt_manager_role] ([id], [role_name], [role_type], [is_sys]) VALUES (1, N'超级管理组', 1, 1)
INSERT [dbo].[dt_manager_role] ([id], [role_name], [role_type], [is_sys]) VALUES (2, N'系统管理组', 2, 0)
SET IDENTITY_INSERT [dbo].[dt_manager_role] OFF
/****** Object:  Table [dbo].[dt_manager_log]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[action_type] [nvarchar](100) NULL,
	[remark] [nvarchar](255) NULL,
	[user_ip] [nvarchar](30) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_MANAGER_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log'
GO
SET IDENTITY_INSERT [dbo].[dt_manager_log] ON
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (1, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A46501036A8D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (2, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A466011DB2EC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (3, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A466016B8475 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (4, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A466016C7B43 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (5, 1, N'admin', N'Delete', N'删除URL配置信息', N'192.168.0.101', CAST(0x0000A466016D4561 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (6, 1, N'admin', N'Delete', N'删除频道成功0条，失败5条', N'192.168.0.101', CAST(0x0000A466016D56D6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (7, 1, N'admin', N'Delete', N'删除频道成功0条，失败5条', N'192.168.0.101', CAST(0x0000A466016D5F5D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (8, 1, N'admin', N'Delete', N'删除URL配置信息', N'192.168.0.101', CAST(0x0000A466016E7DDF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (9, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46601700C5F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (10, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A4660173E80A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (11, 1, N'admin', N'Add', N'添加URL配置信息:index', N'192.168.0.101', CAST(0x0000A46601747EA0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (12, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4660174C61B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (13, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46601765982 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (14, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4660176D6AC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (15, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4660178117E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (16, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467000968A1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (17, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700099743 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (18, 1, N'admin', N'Add', N'添加频道公司简介', N'192.168.0.101', CAST(0x0000A467000A9D0D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (19, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A467000B4449 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (20, 1, N'admin', N'Add', N'添加URL配置信息:introduction_show', N'192.168.0.101', CAST(0x0000A467000C6AEF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (21, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467000CB5CF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (22, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A467000E00A6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (23, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467000E0513 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (24, 1, N'admin', N'Edit', N'修改URL配置信息:introduction_show', N'192.168.0.101', CAST(0x0000A467000E2DB8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (25, 1, N'admin', N'Edit', N'修改URL配置信息:introduction_show', N'192.168.0.101', CAST(0x0000A467000EA764 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (26, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467000EF89E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (27, 1, N'admin', N'Edit', N'修改URL配置信息:introduction_show', N'192.168.0.101', CAST(0x0000A467000F237B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (28, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467000F821A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (29, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467000FE923 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (30, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670010F48B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (31, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700125617 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (32, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700136248 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (33, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670013AC62 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (34, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670013CCDD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (35, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670015D702 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (36, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700162C81 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (37, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A46700E9C938 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (38, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700E9D0A8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (39, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700EA4E49 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (40, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700EA73EA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (41, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700EA85ED AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (42, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700EAA169 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (43, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700EB5983 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (44, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700EB874F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (45, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700EBB967 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (46, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700EC0D38 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (47, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700ECF5FC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (48, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700ED0BC2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (49, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700ED9F60 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (50, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700EDEB77 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (51, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700EE566A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (52, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700EFD19E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (53, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700F31E07 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (54, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700F32ED5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (55, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700F342A9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (56, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700F3798D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (57, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700F3A0C2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (58, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700F3CBD2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (59, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700F3E75F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (60, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700F43149 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (61, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700F4818C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (62, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700F5736E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (63, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700F5E589 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (64, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700F6155B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (65, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46700F6680B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (66, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670119E291 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (67, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A467011A9546 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (68, 1, N'admin', N'Edit', N'修改频道公司动态', N'192.168.0.101', CAST(0x0000A467012535DA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (69, 1, N'admin', N'Add', N'添加URL配置信息:news_list', N'192.168.0.101', CAST(0x0000A4670126B056 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (70, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670126C834 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (71, 1, N'admin', N'Edit', N'修改URL配置信息:news_list', N'192.168.0.101', CAST(0x0000A4670126FBAE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (72, 1, N'admin', N'Edit', N'修改URL配置信息:news_list', N'192.168.0.101', CAST(0x0000A46701272B51 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (73, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670127BB4A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (74, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701280282 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (75, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467012851D9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (76, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670128A67A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (77, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467012915B2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (78, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701293D50 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (79, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701299693 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (80, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467012BDE3F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (81, 1, N'admin', N'Edit', N'删除news频道栏目分类数据', N'192.168.0.101', CAST(0x0000A467012CE58B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (82, 1, N'admin', N'Edit', N'删除news频道内容成功10条，失败0条', N'192.168.0.101', CAST(0x0000A467012D11BD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (83, 1, N'admin', N'Edit', N'删除news频道内容成功10条，失败0条', N'192.168.0.101', CAST(0x0000A467012D1A95 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (84, 1, N'admin', N'Edit', N'删除news频道内容成功10条，失败0条', N'192.168.0.101', CAST(0x0000A467012D2950 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (85, 1, N'admin', N'Add', N'添加news频道栏目分类:公司动态', N'192.168.0.101', CAST(0x0000A467012DA528 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (86, 1, N'admin', N'Add', N'添加news频道内容:有了塑料消泡', N'192.168.0.101', CAST(0x0000A467012E6C15 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (87, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467013045E0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (88, 1, N'admin', N'Add', N'添加news频道内容:历史性时刻', N'192.168.0.101', CAST(0x0000A46701314FDA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (89, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670131732F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (90, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701318F4F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (91, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670131DFFC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (92, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701323D21 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (93, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701324BDB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (94, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467013282BD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (95, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701332F97 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (96, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701337C53 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (97, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670133B6C2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (98, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467013535A6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (99, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670135C403 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (100, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670136116B AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (101, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701361F4B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (102, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467013687A2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (103, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670136AA3F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (104, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670136C1CF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (105, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670136D4E0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (106, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467013712BB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (107, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701372373 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (108, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670137510B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (109, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670137741A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (110, 1, N'admin', N'Add', N'添加news频道内容:习近平:希望斯里兰卡保护好中国企业合法权益', N'192.168.0.101', CAST(0x0000A467013E4542 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (111, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467013F0D08 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (112, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701409524 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (113, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670141307D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (114, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701419633 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (115, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701421FF7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (116, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701440A37 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (117, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701445A7B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (118, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670145C7A6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (119, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670145E600 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (120, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670149400B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (121, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467014964BF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (122, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701499FB0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (123, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670149BC52 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (124, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467014A331E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (125, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467014A7D5B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (126, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467014AF419 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (127, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467014B9F04 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (128, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467014CA242 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (129, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467014D066D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (130, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467014DE672 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (131, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A467015A22E1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (132, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467015B8456 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (133, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467015D7D05 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (134, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467015DC617 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (135, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467015DD601 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (136, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467015DF787 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (137, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701604036 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (138, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701607D14 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (139, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670160D645 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (140, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701612E2F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (141, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670161BB4B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (142, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701628A78 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (143, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670162C518 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (144, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670162E44E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (145, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670163963B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (146, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670163AC39 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (147, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670164213E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (148, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A467016573EA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (149, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670166D232 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (150, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701674A6B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (151, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467016757B8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (152, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670167A7E2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (153, 1, N'admin', N'Edit', N'修改频道公司动态', N'192.168.0.101', CAST(0x0000A46701694AF8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (154, 1, N'admin', N'Edit', N'修改URL配置信息:news_list', N'192.168.0.101', CAST(0x0000A4670169E89F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (155, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670169F495 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (156, 1, N'admin', N'Edit', N'修改频道公司动态', N'192.168.0.101', CAST(0x0000A467016AA81F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (157, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467016B4196 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (158, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467016BBED1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (159, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467016D3FCA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (160, 1, N'admin', N'Edit', N'修改频道公司动态', N'192.168.0.101', CAST(0x0000A467016D59D7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (161, 1, N'admin', N'Add', N'添加intro频道栏目分类:公司简介', N'192.168.0.101', CAST(0x0000A467016FC0D0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (162, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701700478 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (163, 1, N'admin', N'Add', N'添加intro频道内容:天王塑业有限公司', N'192.168.0.101', CAST(0x0000A4670170C84F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (164, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670170F6F5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (165, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701717BD9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (166, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701719132 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (167, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670171B89C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (168, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670171FCBE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (169, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670172A404 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (170, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467017371B3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (171, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467017382AC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (172, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701742A5E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (173, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701744452 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (174, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701762F91 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (175, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670176D966 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (176, 1, N'admin', N'Edit', N'修改intro频道内容:天王塑业有限公司', N'192.168.0.101', CAST(0x0000A46701781974 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (177, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701786A7D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (178, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467017A70B9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (179, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467017AAD59 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (180, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467017AC179 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (181, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467017AD52B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (182, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467017AF880 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (183, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467017B0491 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (184, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467017B3EF1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (185, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467017BA8CE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (186, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467017BE573 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (187, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467017D868A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (188, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467017FC1C6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (189, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701820A42 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (190, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A467018295A7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (191, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701849FF6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (192, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46701854757 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (193, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4670185E5D6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (194, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A46800D0B2AD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (195, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680107EDD6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (196, 1, N'admin', N'Edit', N'修改URL配置信息:introduction_show', N'192.168.0.101', CAST(0x0000A4680109CBB2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (197, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468010A629C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (198, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468010F1A9D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (199, 1, N'admin', N'Add', N'添加URL配置信息:content', N'192.168.0.101', CAST(0x0000A46801110A72 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (200, 1, N'admin', N'Edit', N'修改URL配置信息:content', N'192.168.0.101', CAST(0x0000A468011168D3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (201, 1, N'admin', N'Edit', N'修改URL配置信息:content', N'192.168.0.101', CAST(0x0000A46801177216 AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (202, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680117D9BA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (203, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46801190531 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (204, 1, N'admin', N'Delete', N'删除频道成功0条，失败1条', N'192.168.0.101', CAST(0x0000A468011A69F0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (205, 1, N'admin', N'Edit', N'修改频道公司简介', N'192.168.0.101', CAST(0x0000A468011A7751 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (206, 1, N'admin', N'Edit', N'修改content频道内容:关于我们', N'192.168.0.101', CAST(0x0000A468011AE9F0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (207, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46801239813 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (208, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468012490DF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (209, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680125360B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (210, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46801261CA4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (211, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46801265A05 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (212, 1, N'admin', N'Delete', N'删除频道成功0条，失败1条', N'192.168.0.101', CAST(0x0000A468012E9289 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (213, 1, N'admin', N'Edit', N'删除news频道内容成功3条，失败0条', N'192.168.0.101', CAST(0x0000A468012EAFF8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (214, 1, N'admin', N'Delete', N'删除频道成功0条，失败1条', N'192.168.0.101', CAST(0x0000A468012EB893 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (215, 1, N'admin', N'Edit', N'删除intro频道内容成功1条，失败0条', N'192.168.0.101', CAST(0x0000A468012ED7A9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (216, 1, N'admin', N'Delete', N'删除频道成功1条，失败0条', N'192.168.0.101', CAST(0x0000A468012EE221 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (217, 1, N'admin', N'Add', N'添加URL配置信息:news_show', N'192.168.0.101', CAST(0x0000A468012F672A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (218, 1, N'admin', N'Add', N'添加news频道内容:技术宅拯救世界：用纸糊一辆自行车', N'192.168.0.101', CAST(0x0000A46801301172 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (219, 1, N'admin', N'Add', N'添加news频道内容:Surface英国/加拿大也火爆 但微软喜忧参半', N'192.168.0.101', CAST(0x0000A46801304300 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (220, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680130BB05 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (221, 1, N'admin', N'Edit', N'修改URL配置信息:news_show', N'192.168.0.101', CAST(0x0000A4680131978E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (222, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680131EB6F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (223, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680132AB6A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (224, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46801330304 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (225, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468013338ED AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (226, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46801334785 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (227, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46801337C04 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (228, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680133FC6E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (229, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680134AA77 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (230, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680134FF33 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (231, 1, N'admin', N'Edit', N'修改news频道内容:Surface英国/加拿大也火爆 但微软喜忧参半', N'192.168.0.101', CAST(0x0000A46801370F24 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (232, 1, N'admin', N'Edit', N'修改news频道内容:Surface英国/加拿大也火爆 但微软喜忧参半', N'192.168.0.101', CAST(0x0000A46801375707 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (233, 1, N'admin', N'Edit', N'修改news频道内容:Surface英国/加拿大也火爆 但微软喜忧参半', N'192.168.0.101', CAST(0x0000A4680137B501 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (234, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468013977FB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (235, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46801398D92 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (236, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680143E6A1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (237, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46801440490 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (238, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46801442B6B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (239, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46801452413 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (240, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46801456DE9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (241, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46801458DCB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (242, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680145BA7C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (243, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680145FA55 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (244, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46801461145 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (245, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46801462AE4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (246, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46801467447 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (247, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014697F6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (248, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680146B394 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (249, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680146C9B2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (250, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014701CC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (251, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014738B8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (252, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680147A239 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (253, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680147D9D5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (254, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680148F8B1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (255, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46801492BFB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (256, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014950C7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (257, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680149A2CE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (258, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680149CEAF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (259, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4680149FF3E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (260, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014A28EE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (261, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014ACC80 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (262, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014AF2E8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (263, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014B3E39 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (264, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014BA235 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (265, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014BD103 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (266, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014C07BD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (267, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014C1915 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (268, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014C4BEE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (269, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014C9CCC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (270, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014CD710 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (271, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014D1799 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (272, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014D2FA0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (273, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014D4323 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (274, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A468014FB335 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (275, 1, N'admin', N'Edit', N'修改频道产品世界', N'192.168.0.101', CAST(0x0000A46801580B18 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (276, 1, N'admin', N'Add', N'添加URL配置信息:product_list', N'192.168.0.101', CAST(0x0000A4680158E8AE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (277, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A46900C8F693 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (278, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900CADFD4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (279, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900CB9771 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (280, 1, N'admin', N'Edit', N'修改product频道栏目分类:塑料透明母料', N'192.168.0.101', CAST(0x0000A46900CC1B55 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (281, 1, N'admin', N'Edit', N'修改product频道栏目分类:塑料透明填充母料', N'192.168.0.101', CAST(0x0000A46900CC3BA9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (282, 1, N'admin', N'Edit', N'修改product频道栏目分类:塑料消泡料', N'192.168.0.101', CAST(0x0000A46900CC5A2B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (283, 1, N'admin', N'Edit', N'修改product频道栏目分类:塑料降解母料', N'192.168.0.101', CAST(0x0000A46900CC7820 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (284, 1, N'admin', N'Edit', N'修改product频道栏目分类:塑料填充母料', N'192.168.0.101', CAST(0x0000A46900CC94E8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (285, 1, N'admin', N'Add', N'添加product频道栏目分类:塑料色母料', N'192.168.0.101', CAST(0x0000A46900CCAE88 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (286, 1, N'admin', N'Add', N'添加product频道栏目分类:塑料改性母料', N'192.168.0.101', CAST(0x0000A46900CCC3E5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (287, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900CD1B24 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (288, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900CD56F9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (289, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900CD7061 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (290, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900CDA31F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (291, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900CE8D2C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (292, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900CEA3CF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (293, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900D034FA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (294, 1, N'admin', N'Edit', N'修改product频道内容:少女物语--梦瑶.', N'192.168.0.101', CAST(0x0000A46900D064A5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (295, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900D0E44B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (296, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900D15E18 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (297, 1, N'admin', N'Add', N'添加URL配置信息:product_list_show', N'192.168.0.101', CAST(0x0000A46900D45CC1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (298, 1, N'admin', N'Edit', N'修改URL配置信息:product_list_show', N'192.168.0.101', CAST(0x0000A46900D4EDD5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (299, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900D61C36 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (300, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900D6F40D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (301, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900D701D5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (302, 1, N'admin', N'Edit', N'修改URL配置信息:product_list', N'192.168.0.101', CAST(0x0000A46900D71BC5 AS DateTime))
GO
print 'Processed 300 total records'
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (303, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900D903B7 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (304, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900D91189 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (305, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900D9460E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (306, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900D9CBF0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (307, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900DA0FB5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (308, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900DA38DA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (309, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900DB8C66 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (310, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900DB99EF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (311, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900DD73E9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (312, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900DD935A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (313, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900DDE6CF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (314, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900DE8977 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (315, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900DED460 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (316, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900DF0C0F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (317, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900DF392B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (318, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900DF9610 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (319, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900DFAC63 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (320, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900DFBABE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (321, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900DFD90A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (322, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900E006CB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (323, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900E0254F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (324, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900E03BE6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (325, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900E4A186 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (326, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900E4D141 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (327, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900E4DD1B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (328, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900E4EB48 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (329, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900E4F779 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (330, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900E50E7B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (331, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900E55105 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (332, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900E6221F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (333, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900E65427 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (334, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900E8F09C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (335, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900EA067A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (336, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900EAC1F0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (337, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900EB0C1F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (338, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900EC5718 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (339, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900ECE58A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (340, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900ED5BB2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (341, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900ED7974 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (342, 1, N'admin', N'Edit', N'修改频道产品世界', N'192.168.0.101', CAST(0x0000A46900F09177 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (343, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900F0CA87 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (344, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900F10EDE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (345, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900F17B67 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (346, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900F1964D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (347, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900F1AE9D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (348, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900F1D3BE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (349, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900F206EE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (350, 1, N'admin', N'Add', N'添加URL配置信息:product_show', N'192.168.0.101', CAST(0x0000A46900F31E9E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (351, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900F347EE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (352, 1, N'admin', N'Edit', N'修改product频道内容:就是，爱这阳光明媚的模样。', N'192.168.0.101', CAST(0x0000A46900F3D723 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (353, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900F40DD8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (354, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900F47B7A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (355, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900F4C910 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (356, 1, N'admin', N'Add', N'添加频道联系我们', N'192.168.0.101', CAST(0x0000A46900F67AB2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (357, 1, N'admin', N'Add', N'添加URL配置信息:contact', N'192.168.0.101', CAST(0x0000A46900F71216 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (358, 1, N'admin', N'Add', N'添加lianxiwomen频道栏目分类:联系我们', N'192.168.0.101', CAST(0x0000A46900F750F4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (359, 1, N'admin', N'Add', N'添加lianxiwomen频道内容:联系我们', N'192.168.0.101', CAST(0x0000A46900F785F5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (360, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900F7D8DB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (361, 1, N'admin', N'Add', N'添加频道外贸', N'192.168.0.101', CAST(0x0000A46900F94164 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (362, 1, N'admin', N'Add', N'添加URL配置信息:trade_list', N'192.168.0.101', CAST(0x0000A46900F9E5ED AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (363, 1, N'admin', N'Add', N'添加URL配置信息:trade_show', N'192.168.0.101', CAST(0x0000A46900FA4055 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (364, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900FA9603 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (365, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900FB0CD0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (366, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900FB5C83 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (367, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900FCB262 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (368, 1, N'admin', N'Add', N'添加waimao频道栏目分类:外贸', N'192.168.0.101', CAST(0x0000A46900FCDC59 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (369, 1, N'admin', N'Add', N'添加waimao频道内容:产品色母料', N'192.168.0.101', CAST(0x0000A46900FD1405 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (370, 1, N'admin', N'Edit', N'修改waimao频道内容:产品色母料', N'192.168.0.101', CAST(0x0000A46900FD5BB6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (371, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46900FD9EB4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (372, 1, N'admin', N'Edit', N'修改频道外贸', N'192.168.0.101', CAST(0x0000A46900FDE3EF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (373, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4690121E8CD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (374, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A469012228B9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (375, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A469012300A2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (376, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46901231986 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (377, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A469012349E6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (378, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46901235EF2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (379, 1, N'admin', N'Add', N'添加waimao频道内容:eerr', N'192.168.0.101', CAST(0x0000A46901240110 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (380, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4690124760A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (381, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4690124C353 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (382, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A469012647BC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (383, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46901296AA4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (384, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46901297970 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (385, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46901299C9C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (386, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4690129E8E3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (387, 1, N'admin', N'Edit', N'修改news频道内容:Surface英国/加拿大也火爆 但微软喜忧参半', N'192.168.0.101', CAST(0x0000A469012AAE51 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (388, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A469012ABD3F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (389, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A469012AECCD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (390, 1, N'admin', N'Edit', N'修改news频道内容:技术宅拯救世界：用纸糊一辆自行车', N'192.168.0.101', CAST(0x0000A469012B06D4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (391, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A469012B2661 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (392, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A469012B42A3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (393, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A469012B867D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (394, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A469012C18B3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (395, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A469012C790C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (396, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46901305C12 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (397, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46901306A50 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (398, 1, N'admin', N'Edit', N'修改URL配置信息:trade_show', N'192.168.0.101', CAST(0x0000A46901323BD9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (399, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A469016596CB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (400, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A4690171B9DD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (401, 1, N'admin', N'Edit', N'修改模板文件:news_list.html', N'192.168.0.101', CAST(0x0000A4690171FA8F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (402, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46901720028 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (403, 1, N'admin', N'Edit', N'修改模板文件:news_show.html', N'192.168.0.101', CAST(0x0000A469017220FE AS DateTime))
GO
print 'Processed 400 total records'
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (404, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46901722501 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (405, 1, N'admin', N'Edit', N'修改模板文件:news_show.html', N'192.168.0.101', CAST(0x0000A46901732A9D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (406, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46901733C35 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (407, 1, N'admin', N'Edit', N'修改模板文件:news_show.html', N'192.168.0.101', CAST(0x0000A46901737C78 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (408, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A469017380CA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (409, 1, N'admin', N'Edit', N'修改模板文件:news_show.html', N'192.168.0.101', CAST(0x0000A4690173EA75 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (410, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4690173EF73 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (411, 1, N'admin', N'Edit', N'修改模板文件:product_list.html', N'192.168.0.101', CAST(0x0000A469017535AB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (412, 1, N'admin', N'Edit', N'修改模板文件:product_list_show.html', N'192.168.0.101', CAST(0x0000A4690175458C AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (413, 1, N'admin', N'Edit', N'修改模板文件:product_show.html', N'192.168.0.101', CAST(0x0000A4690175538F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (414, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4690175585B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (415, 1, N'admin', N'Edit', N'修改模板文件:product_show.html', N'192.168.0.101', CAST(0x0000A4690175966E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (416, 1, N'admin', N'Edit', N'修改模板文件:product_show.html', N'192.168.0.101', CAST(0x0000A4690175AC82 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (417, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A4690175B0CB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (418, 1, N'admin', N'Edit', N'修改模板文件:trade_list.html', N'192.168.0.101', CAST(0x0000A4690175D332 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (419, 1, N'admin', N'Edit', N'修改模板文件:trade_show.html', N'192.168.0.101', CAST(0x0000A4690175E2A8 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (420, 1, N'admin', N'Edit', N'修改模板文件:trade_show.html', N'192.168.0.101', CAST(0x0000A4690175F68A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (421, 1, N'admin', N'Edit', N'修改模板文件:trade_show.html', N'192.168.0.101', CAST(0x0000A4690176084D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (422, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A469017614FE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (423, 1, N'admin', N'Edit', N'修改模板文件:contact.html', N'192.168.0.101', CAST(0x0000A46901763B11 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (424, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46901763F36 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (425, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A46A000FF05D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (426, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A0012249D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (427, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A001279BA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (428, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A00130EBF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (429, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A46A00A4EDE5 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (430, 1, N'admin', N'Add', N'添加URL配置信息:zhizhi', N'192.168.0.101', CAST(0x0000A46A00A58D54 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (431, 1, N'admin', N'Edit', N'修改content频道内容:公司简介', N'192.168.0.101', CAST(0x0000A46A00A5B228 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (432, 1, N'admin', N'Edit', N'修改content频道内容:联系我们', N'192.168.0.101', CAST(0x0000A46A00A5C281 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (433, 1, N'admin', N'Edit', N'修改content频道内容:企业资质', N'192.168.0.101', CAST(0x0000A46A00A5E976 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (434, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A00A60319 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (435, 1, N'admin', N'Edit', N'修改content频道内容:企业资质', N'192.168.0.101', CAST(0x0000A46A00A62625 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (436, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A00A63AA3 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (437, 1, N'admin', N'Edit', N'修改URL配置信息:zhizhi', N'192.168.0.101', CAST(0x0000A46A00A69073 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (438, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A00A6CE6E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (439, 1, N'admin', N'Edit', N'修改content频道内容:企业资质', N'192.168.0.101', CAST(0x0000A46A00A828BF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (440, 1, N'admin', N'Edit', N'修改模板文件:introduction.html', N'192.168.0.101', CAST(0x0000A46A00A887AB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (441, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A00A88EE6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (442, 1, N'admin', N'Edit', N'修改模板文件:introduction.html', N'192.168.0.101', CAST(0x0000A46A00A94608 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (443, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A00A94B1B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (444, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A46A015C5BD0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (445, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A015C6627 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (446, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A015CE1E4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (447, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A015D0655 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (448, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A015D1F20 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (449, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A015D48BE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (450, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A015E019B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (451, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A015E754D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (452, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A015EB7FB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (453, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A015EE7F6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (454, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A0160DC26 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (455, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A0161DDA1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (456, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A0162252A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (457, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A01626871 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (458, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A0162E342 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (459, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A01634B86 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (460, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A01637061 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (461, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A0163E549 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (462, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A01642359 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (463, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46A0165DEAF AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (464, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A46B017DF92B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (465, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A46B0184F3D4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (466, 1, N'admin', N'Add', N'添加频道公司简介英文', N'192.168.0.101', CAST(0x0000A46B01875F22 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (467, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A46B0187F01D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (468, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A46B018824B4 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (469, 1, N'admin', N'Add', N'添加URL配置信息:contactEn', N'192.168.0.101', CAST(0x0000A46B01888A2A AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (470, 1, N'admin', N'Add', N'添加gongsijianjieyingwen频道栏目分类:公司简介英文', N'192.168.0.101', CAST(0x0000A46B0188F35B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (471, 1, N'admin', N'Add', N'添加gongsijianjieyingwen频道内容:公司简介英文', N'192.168.0.101', CAST(0x0000A46B01896E0E AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (472, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46B01899DDC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (473, 1, N'admin', N'Edit', N'修改URL配置信息:contactEn', N'192.168.0.101', CAST(0x0000A46B018A3DBD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (474, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46B018A6135 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (475, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46B018AAE08 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (476, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46B018B43BD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (477, 1, N'admin', N'Delete', N'删除URL配置信息', N'192.168.0.101', CAST(0x0000A46C00009512 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (478, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00009DCC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (479, 1, N'admin', N'Login', N'用户登录', N'192.168.0.101', CAST(0x0000A46C00B0C999 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (480, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00B0CED2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (481, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00B121A0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (482, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00B140B1 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (483, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00B1785F AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (484, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00B19A74 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (485, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00B1E705 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (486, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00B28732 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (487, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00B3329D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (488, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00B362AD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (489, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00B40DBC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (490, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00B7BF74 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (491, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00B7D974 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (492, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00B80892 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (493, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00B83BEC AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (494, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00B8656D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (495, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00B96AEA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (496, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00BA5925 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (497, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00BAB1F6 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (498, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00BB7E82 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (499, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00BB9151 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (500, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00BBD8DA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (501, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00BC1683 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (502, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00BC228B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (503, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00BC2F4B AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (504, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00BC6284 AS DateTime))
GO
print 'Processed 500 total records'
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (505, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00BC8A27 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (506, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00C58683 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (507, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00CCBEF2 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (508, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00CD0A60 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (509, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00CD64FD AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (510, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00CDB766 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (511, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00CDF3FE AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (512, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00CE83B0 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (513, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00CF404D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (514, 1, N'admin', N'Edit', N'删除goods频道内容成功10条，失败0条', N'192.168.0.101', CAST(0x0000A46C00D0CD2D AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (515, 1, N'admin', N'Edit', N'删除goods频道内容成功10条，失败0条', N'192.168.0.101', CAST(0x0000A46C00D0D255 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (516, 1, N'admin', N'Edit', N'删除goods频道内容成功6条，失败0条', N'192.168.0.101', CAST(0x0000A46C00D0D582 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (517, 1, N'admin', N'Edit', N'删除down频道内容成功5条，失败0条', N'192.168.0.101', CAST(0x0000A46C00D0EAFA AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (518, 1, N'admin', N'Delete', N'删除频道成功2条，失败0条', N'192.168.0.101', CAST(0x0000A46C00D0FBAB AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (519, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00D119D9 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (520, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00D14F84 AS DateTime))
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (521, 1, N'admin', N'Build', N'生成模板:twsy', N'192.168.0.101', CAST(0x0000A46C00D1AF10 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_manager_log] OFF
/****** Object:  Table [dbo].[dt_user_amount_log]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_amount_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[type] [nvarchar](50) NULL,
	[order_no] [nvarchar](100) NULL,
	[trade_no] [nvarchar](100) NULL,
	[payment_id] [int] NULL,
	[value] [decimal](9, 2) NULL,
	[remark] [nvarchar](500) NULL,
	[status] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[complete_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_AMOUNT_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'order_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易号但保支付用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'trade_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'payment_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增减值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'complete_time'
GO
/****** Object:  Table [dbo].[dt_sms_template]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_sms_template](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[content] [ntext] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_SMS_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机短信模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template'
GO
SET IDENTITY_INSERT [dbo].[dt_sms_template] ON
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (1, N'会员验证码短信', N'usercode', N'您的验证码为：{code}，{valid}分钟内有效。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (2, N'欢迎新用户短信', N'welcomemsg', N'欢迎成为{webname}会员，你的用户名为：{username}，注意保管好您的账户信息。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (3, N'订单确认通知', N'order_confirm', N'尊敬的{username}，您在{webname}的订单已确认，订单号为：{orderno}，共计{amount}元，我们会尽快安排发货。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (4, N'订单发货通知', N'order_express', N'尊敬的{username}，您在{webname}的订单已发货，订单号为：{orderno}，请注意查收。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (5, N'订单完成通知', N'order_complete', N'尊敬的{username}，您在{webname}的一笔订单交易完成，订单号为：{orderno}，期待下次光临，祝您购物愉快。', 1)
SET IDENTITY_INSERT [dbo].[dt_sms_template] OFF
/****** Object:  Table [dbo].[dt_payment]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[remark] [nvarchar](500) NULL,
	[type] [tinyint] NULL,
	[poundage_type] [tinyint] NULL,
	[poundage_amount] [decimal](9, 2) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[api_path] [nvarchar](100) NULL,
 CONSTRAINT [PK_DT_PAYMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付类型1线上2线下' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手续费类型1百分比2固定金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'poundage_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手续费金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'poundage_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'API目录名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'api_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment'
GO
SET IDENTITY_INSERT [dbo].[dt_payment] ON
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_lock], [api_path]) VALUES (1, N'货到付款', N'', N'收到商品后进行支付，支持现金和刷卡服务。', 2, 2, CAST(0.00 AS Decimal(9, 2)), 99, 0, N'')
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_lock], [api_path]) VALUES (2, N'账户余额', N'', N'账户余额是客户在您网站上的账户虚拟资金', 1, 2, CAST(0.00 AS Decimal(9, 2)), 100, 0, N'balance')
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_lock], [api_path]) VALUES (3, N'支付宝', N'', N'付款后立即到账，无预付/年费，单笔费率阶梯最低0.7%，无流量限制。<a href="https://www.alipay.com/himalayas/practicality_customer.htm?customer_external_id=C433530444855584111X&market_type=from_agent_contract&pro_codes=61F99645EC0DC4380ADE569DD132AD7A" target="_blank">立即申请</a>', 1, 2, CAST(0.00 AS Decimal(9, 2)), 101, 0, N'alipay')
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_lock], [api_path]) VALUES (4, N'财付通', N'', N'费率最低至<span style="color:#FF0000;font-weight: bold;">0.61%</span>，并赠送价值千元企业QQ。<a href="http://union.tenpay.com/mch/mch_register.shtml?sp_suggestuser=1202822001" target="_blank">中小商家签约入口</a>', 1, 2, CAST(0.00 AS Decimal(9, 2)), 102, 0, N'tenpay')
SET IDENTITY_INSERT [dbo].[dt_payment] OFF
/****** Object:  Table [dbo].[dt_orders]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_no] [nvarchar](100) NULL,
	[trade_no] [nvarchar](100) NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[payment_id] [int] NULL,
	[payment_fee] [decimal](9, 2) NULL,
	[payment_status] [tinyint] NULL,
	[payment_time] [datetime] NULL,
	[express_id] [int] NULL,
	[express_no] [nvarchar](100) NULL,
	[express_fee] [decimal](9, 2) NULL,
	[express_status] [tinyint] NULL,
	[express_time] [datetime] NULL,
	[accept_name] [nvarchar](50) NULL,
	[post_code] [nvarchar](20) NULL,
	[telphone] [nvarchar](30) NULL,
	[mobile] [nvarchar](20) NULL,
	[area] [nvarchar](100) NULL,
	[address] [nvarchar](500) NULL,
	[message] [nvarchar](500) NULL,
	[remark] [nvarchar](500) NULL,
	[payable_amount] [decimal](9, 2) NULL,
	[real_amount] [decimal](9, 2) NULL,
	[order_amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[status] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[confirm_time] [datetime] NULL,
	[complete_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ORDERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'order_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易号担保支付用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'trade_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付手续费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付状态1未支付2已支付' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货状态1未发货2已发货' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'accept_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'post_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属省市区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单留言' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应付商品总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payable_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实付商品总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'real_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'order_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分,正数赠送|负数消费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单状态1生成订单,2确认订单,3完成订单,4取消订单,5作废订单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下单时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'confirm_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'complete_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders'
GO
/****** Object:  Table [dbo].[dt_article_attribute_field]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_attribute_field](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[title] [nvarchar](100) NULL,
	[control_type] [nvarchar](50) NULL,
	[data_type] [nvarchar](50) NULL,
	[data_length] [int] NULL,
	[data_place] [tinyint] NULL,
	[item_option] [ntext] NULL,
	[default_value] [ntext] NULL,
	[is_required] [tinyint] NULL,
	[is_password] [tinyint] NULL,
	[is_html] [tinyint] NULL,
	[editor_type] [tinyint] NULL,
	[valid_tip_msg] [nvarchar](255) NULL,
	[valid_error_msg] [nvarchar](255) NULL,
	[valid_pattern] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTRIBUTE_FIELD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'control_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_length'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小数点位数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_place'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'item_option'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'default_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否必填0非必填1必填' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_required'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否密码框' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许HTML' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_html'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑器类型0标准型1简洁型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'editor_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证提示信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_tip_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证失败提示信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_error_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证正则表达式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_pattern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field'
GO
SET IDENTITY_INSERT [dbo].[dt_article_attribute_field] ON
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (1, N'sub_title', N'副标题', N'single-text', N'nvarchar(255)', 255, 0, N'', N'', 0, 0, 0, 0, N'可为空，最多255个字符', N'', N's0-255', 99, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (2, N'source', N'信息来源', N'single-text', N'nvarchar(50)', 50, 0, N'', N'本站', 0, 0, 0, 0, N'非必填，最多50个字符', N'', N's0-50', 100, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (3, N'author', N'文章作者', N'single-text', N'nvarchar(50)', 50, 0, N'', N'', 0, 0, 0, 0, N'非必填，最多50个字符', N'', N's0-50', 101, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (4, N'goods_no', N'商品货号', N'single-text', N'nvarchar(100)', 100, 0, N'', N'', 0, 0, 0, 0, N'允许字母、下划线，100个字符内', N'', N's0-100', 103, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (5, N'stock_quantity', N'库存数量', N'number', N'int', 0, 0, N'', N'0', 1, 0, 0, 0, N'库存数量为0时显示缺货状态', N'', N'n', 104, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (6, N'market_price', N'市场价格', N'number', N'decimal(9,2)', 0, 2, N'', N'0', 0, 0, 0, 0, N'市场的参与价格，不参与计算', N'', N'/^(([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?$/', 105, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (7, N'sell_price', N'销售价格', N'number', N'decimal(9,2)', 0, 2, N'', N'0', 1, 0, 0, 0, N'*出售的实际交易价格', N'', N'/^(([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?$/', 106, 1)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (8, N'point', N'交易积分', N'number', N'int', 0, 0, N'', N'0', 0, 0, 0, 0, N'*正为返还，负为消费积分', N'', N'n', 107, 1)
SET IDENTITY_INSERT [dbo].[dt_article_attribute_field] OFF
/****** Object:  Table [dbo].[dt_article_attach]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_attach](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[file_name] [nvarchar](100) NULL,
	[file_path] [nvarchar](255) NULL,
	[file_size] [int] NULL,
	[file_ext] [nvarchar](20) NULL,
	[down_num] [int] NULL,
	[point] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTACH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件大小(字节)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件扩展名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_ext'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'down_num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分(正赠送负消费)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach'
GO
/****** Object:  Table [dbo].[dt_article_albums]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_albums](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[thumb_path] [nvarchar](255) NULL,
	[original_path] [nvarchar](255) NULL,
	[remark] [nvarchar](500) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ALBUMS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缩略图地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'thumb_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原图地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'original_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片相册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums'
GO
SET IDENTITY_INSERT [dbo].[dt_article_albums] ON
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (82, 39, N'/upload/201210/20/small_201210201104382108.jpg', N'/upload/201210/20/201210201104382108.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (83, 39, N'/upload/201210/20/small_201210201104430838.jpg', N'/upload/201210/20/201210201104430838.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (84, 39, N'/upload/201210/20/small_201210201104462700.jpg', N'/upload/201210/20/201210201104462700.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (85, 39, N'/upload/201210/20/small_201210201104493468.jpg', N'/upload/201210/20/201210201104493468.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (86, 39, N'/upload/201210/20/small_201210201104564376.jpg', N'/upload/201210/20/201210201104564376.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (87, 39, N'/upload/201210/20/small_201210201104599518.jpg', N'/upload/201210/20/201210201104599518.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (88, 39, N'/upload/201210/20/small_201210201105136649.jpg', N'/upload/201210/20/201210201105136649.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (89, 39, N'/upload/201210/20/small_201210201105178350.jpg', N'/upload/201210/20/201210201105178350.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (90, 39, N'/upload/201210/20/small_201210201105199904.jpg', N'/upload/201210/20/201210201105199904.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (95, 43, N'/upload/201210/20/small_201210201109244855.jpg', N'/upload/201210/20/201210201109244855.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (96, 43, N'/upload/201210/20/small_201210201109264066.jpg', N'/upload/201210/20/201210201109264066.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (97, 43, N'/upload/201210/20/small_201210201109304206.jpg', N'/upload/201210/20/201210201109304206.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (98, 44, N'/upload/201210/20/small_201210201121224163.jpg', N'/upload/201210/20/201210201121224163.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (99, 44, N'/upload/201210/20/small_201210201121239314.jpg', N'/upload/201210/20/201210201121239314.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (100, 44, N'/upload/201210/20/small_201210201121253527.jpg', N'/upload/201210/20/201210201121253527.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (101, 44, N'/upload/201210/20/small_201210201121286484.jpg', N'/upload/201210/20/201210201121286484.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (102, 44, N'/upload/201210/20/small_201210201121343183.jpg', N'/upload/201210/20/201210201121343183.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (103, 45, N'/upload/201210/20/small_201210201122436999.jpg', N'/upload/201210/20/201210201122436999.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (104, 45, N'/upload/201210/20/small_201210201122488699.jpg', N'/upload/201210/20/201210201122488699.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (105, 45, N'/upload/201210/20/small_201210201122514784.jpg', N'/upload/201210/20/201210201122514784.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (106, 45, N'/upload/201210/20/small_201210201122537276.jpg', N'/upload/201210/20/201210201122537276.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (107, 45, N'/upload/201210/20/small_201210201123018653.jpg', N'/upload/201210/20/201210201123018653.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (108, 45, N'/upload/201210/20/small_201210201123061451.jpg', N'/upload/201210/20/201210201123061451.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (109, 45, N'/upload/201210/20/small_201210201123078320.jpg', N'/upload/201210/20/201210201123078320.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (110, 45, N'/upload/201210/20/small_201210201123098000.jpg', N'/upload/201210/20/201210201123098000.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (111, 46, N'/upload/201210/20/small_201210201128412942.jpg', N'/upload/201210/20/201210201128412942.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (112, 46, N'/upload/201210/20/small_201210201128422470.jpg', N'/upload/201210/20/201210201128422470.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (113, 46, N'/upload/201210/20/small_201210201128431061.jpg', N'/upload/201210/20/201210201128431061.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (114, 46, N'/upload/201210/20/small_201210201128439183.jpg', N'/upload/201210/20/201210201128439183.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (115, 46, N'/upload/201210/20/small_201210201128460426.jpg', N'/upload/201210/20/201210201128460426.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (116, 46, N'/upload/201210/20/small_201210201128476982.jpg', N'/upload/201210/20/201210201128476982.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (117, 46, N'/upload/201210/20/small_201210201128494476.jpg', N'/upload/201210/20/201210201128494476.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (118, 46, N'/upload/201210/20/small_201210201128523373.jpg', N'/upload/201210/20/201210201128523373.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (119, 46, N'/upload/201210/20/small_201210201128554143.jpg', N'/upload/201210/20/201210201128554143.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (120, 47, N'/upload/201210/20/small_201210201134400466.jpg', N'/upload/201210/20/201210201134400466.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (121, 47, N'/upload/201210/20/small_201210201134419834.jpg', N'/upload/201210/20/201210201134419834.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (122, 47, N'/upload/201210/20/small_201210201134437953.jpg', N'/upload/201210/20/201210201134437953.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (123, 47, N'/upload/201210/20/small_201210201134447481.jpg', N'/upload/201210/20/201210201134447481.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (124, 47, N'/upload/201210/20/small_201210201134466225.jpg', N'/upload/201210/20/201210201134466225.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (125, 47, N'/upload/201210/20/small_201210201134487311.jpg', N'/upload/201210/20/201210201134487311.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (126, 47, N'/upload/201210/20/small_201210201134506367.jpg', N'/upload/201210/20/201210201134506367.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (127, 47, N'/upload/201210/20/small_201210201134521049.jpg', N'/upload/201210/20/201210201134521049.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (128, 48, N'/upload/201210/20/small_201210201137062000.jpg', N'/upload/201210/20/201210201137062000.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (129, 48, N'/upload/201210/20/small_201210201137115107.jpg', N'/upload/201210/20/201210201137115107.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (130, 48, N'/upload/201210/20/small_201210201137178680.jpg', N'/upload/201210/20/201210201137178680.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (131, 48, N'/upload/201210/20/small_201210201137191644.jpg', N'/upload/201210/20/201210201137191644.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (132, 48, N'/upload/201210/20/small_201210201137233817.jpg', N'/upload/201210/20/201210201137233817.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (133, 48, N'/upload/201210/20/small_201210201137258028.jpg', N'/upload/201210/20/201210201137258028.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (134, 49, N'/upload/201210/20/small_201210201143259178.jpg', N'/upload/201210/20/201210201143259178.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (135, 49, N'/upload/201210/20/small_201210201143274486.jpg', N'/upload/201210/20/201210201143274486.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (136, 49, N'/upload/201210/20/small_201210201143287450.jpg', N'/upload/201210/20/201210201143287450.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (137, 49, N'/upload/201210/20/small_201210201143321658.jpg', N'/upload/201210/20/201210201143321658.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (138, 49, N'/upload/201210/20/small_201210201143335560.jpg', N'/upload/201210/20/201210201143335560.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (139, 49, N'/upload/201210/20/small_201210201143363676.jpg', N'/upload/201210/20/201210201143363676.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (140, 49, N'/upload/201210/20/small_201210201143385075.jpg', N'/upload/201210/20/201210201143385075.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (141, 49, N'/upload/201210/20/small_201210201143423969.jpg', N'/upload/201210/20/201210201143423969.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (142, 49, N'/upload/201210/20/small_201210201143436934.jpg', N'/upload/201210/20/201210201143436934.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (143, 49, N'/upload/201210/20/small_201210201143464268.jpg', N'/upload/201210/20/201210201143464268.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (144, 49, N'/upload/201210/20/small_201210201143503787.jpg', N'/upload/201210/20/201210201143503787.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (145, 49, N'/upload/201210/20/small_201210201143515033.jpg', N'/upload/201210/20/201210201143515033.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (146, 49, N'/upload/201210/20/small_201210201143533777.jpg', N'/upload/201210/20/201210201143533777.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (147, 49, N'/upload/201210/20/small_201210201143572827.jpg', N'/upload/201210/20/201210201143572827.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (148, 49, N'/upload/201210/20/small_201210201143589071.jpg', N'/upload/201210/20/201210201143589071.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (149, 49, N'/upload/201210/20/small_201210201144005629.jpg', N'/upload/201210/20/201210201144005629.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (150, 49, N'/upload/201210/20/small_201210201144018906.jpg', N'/upload/201210/20/201210201144018906.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (151, 49, N'/upload/201210/20/small_201210201144052176.jpg', N'/upload/201210/20/201210201144052176.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (152, 49, N'/upload/201210/20/small_201210201144067328.jpg', N'/upload/201210/20/201210201144067328.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (153, 49, N'/upload/201210/20/small_201210201144085759.jpg', N'/upload/201210/20/201210201144085759.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (154, 49, N'/upload/201210/20/small_201210201144108564.jpg', N'/upload/201210/20/201210201144108564.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (155, 49, N'/upload/201210/20/small_201210201144119186.jpg', N'/upload/201210/20/201210201144119186.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (156, 49, N'/upload/201210/20/small_201210201144139492.jpg', N'/upload/201210/20/201210201144139492.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (157, 49, N'/upload/201210/20/small_201210201144150582.jpg', N'/upload/201210/20/201210201144150582.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (158, 49, N'/upload/201210/20/small_201210201144161829.jpg', N'/upload/201210/20/201210201144161829.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (159, 49, N'/upload/201210/20/small_201210201144170888.jpg', N'/upload/201210/20/201210201144170888.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (160, 49, N'/upload/201210/20/small_201210201144184634.jpg', N'/upload/201210/20/201210201144184634.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (161, 49, N'/upload/201210/20/small_201210201144193381.jpg', N'/upload/201210/20/201210201144193381.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (162, 49, N'/upload/201210/20/small_201210201144203690.jpg', N'/upload/201210/20/201210201144203690.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (163, 49, N'/upload/201210/20/small_201210201144215249.jpg', N'/upload/201210/20/201210201144215249.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (164, 49, N'/upload/201210/20/small_201210201144230244.jpg', N'/upload/201210/20/201210201144230244.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (165, 50, N'/upload/201210/20/small_201210201146182533.jpg', N'/upload/201210/20/201210201146182533.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (166, 50, N'/upload/201210/20/small_201210201146224864.jpg', N'/upload/201210/20/201210201146224864.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (167, 50, N'/upload/201210/20/small_201210201146259384.jpg', N'/upload/201210/20/201210201146259384.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (168, 50, N'/upload/201210/20/small_201210201146275004.jpg', N'/upload/201210/20/201210201146275004.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (169, 50, N'/upload/201210/20/small_201210201146337641.jpg', N'/upload/201210/20/201210201146337641.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (170, 50, N'/upload/201210/20/small_201210201146375442.jpg', N'/upload/201210/20/201210201146375442.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (171, 50, N'/upload/201210/20/small_201210201146409337.jpg', N'/upload/201210/20/201210201146409337.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (172, 50, N'/upload/201210/20/small_201210201146469006.jpg', N'/upload/201210/20/201210201146469006.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (173, 50, N'/upload/201210/20/small_201210201146558822.jpg', N'/upload/201210/20/201210201146558822.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (174, 50, N'/upload/201210/20/small_201210201146589281.jpg', N'/upload/201210/20/201210201146589281.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (175, 50, N'/upload/201210/20/small_201210201147018491.jpg', N'/upload/201210/20/201210201147018491.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (176, 50, N'/upload/201210/20/small_201210201147034111.jpg', N'/upload/201210/20/201210201147034111.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (177, 50, N'/upload/201210/20/small_201210201147077535.jpg', N'/upload/201210/20/201210201147077535.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (178, 50, N'/upload/201210/20/small_201210201147098466.jpg', N'/upload/201210/20/201210201147098466.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (179, 50, N'/upload/201210/20/small_201210201147121740.jpg', N'/upload/201210/20/201210201147121740.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (180, 51, N'/upload/201210/20/small_201210201150403758.jpg', N'/upload/201210/20/201210201150403758.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (181, 51, N'/upload/201210/20/small_201210201150421877.jpg', N'/upload/201210/20/201210201150421877.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (182, 51, N'/upload/201210/20/small_201210201150434686.jpg', N'/upload/201210/20/201210201150434686.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (183, 51, N'/upload/201210/20/small_201210201150445464.jpg', N'/upload/201210/20/201210201150445464.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (184, 51, N'/upload/201210/20/small_201210201150454055.jpg', N'/upload/201210/20/201210201150454055.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (185, 51, N'/upload/201210/20/small_201210201150463427.jpg', N'/upload/201210/20/201210201150463427.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (186, 51, N'/upload/201210/20/small_201210201150480454.jpg', N'/upload/201210/20/201210201150480454.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (187, 52, N'/upload/201210/20/small_201210201153585515.jpg', N'/upload/201210/20/201210201153585515.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (188, 52, N'/upload/201210/20/small_201210201153596602.jpg', N'/upload/201210/20/201210201153596602.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (189, 52, N'/upload/201210/20/small_201210201154006751.jpg', N'/upload/201210/20/201210201154006751.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (190, 52, N'/upload/201210/20/small_201210201154016433.jpg', N'/upload/201210/20/201210201154016433.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (191, 52, N'/upload/201210/20/small_201210201154026270.jpg', N'/upload/201210/20/201210201154026270.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (192, 52, N'/upload/201210/20/small_201210201154043603.jpg', N'/upload/201210/20/201210201154043603.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (193, 52, N'/upload/201210/20/small_201210201154055939.jpg', N'/upload/201210/20/201210201154055939.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (194, 53, N'/upload/201210/20/small_201210201156192282.jpg', N'/upload/201210/20/201210201156192282.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (195, 53, N'/upload/201210/20/small_201210201156202900.jpg', N'/upload/201210/20/201210201156202900.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (196, 53, N'/upload/201210/20/small_201210201156211645.jpg', N'/upload/201210/20/201210201156211645.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (197, 53, N'/upload/201210/20/small_201210201156225543.jpg', N'/upload/201210/20/201210201156225543.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (198, 53, N'/upload/201210/20/small_201210201156234443.jpg', N'/upload/201210/20/201210201156234443.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (199, 53, N'/upload/201210/20/small_201210201156241783.jpg', N'/upload/201210/20/201210201156241783.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (200, 53, N'/upload/201210/20/small_201210201156257242.jpg', N'/upload/201210/20/201210201156257242.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (201, 53, N'/upload/201210/20/small_201210201156353744.jpg', N'/upload/201210/20/201210201156353744.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (202, 53, N'/upload/201210/20/small_201210201156368891.jpg', N'/upload/201210/20/201210201156368891.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (203, 53, N'/upload/201210/20/small_201210201156378104.jpg', N'/upload/201210/20/201210201156378104.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (204, 53, N'/upload/201210/20/small_201210201156387629.jpg', N'/upload/201210/20/201210201156387629.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (205, 53, N'/upload/201210/20/small_201210201156396062.jpg', N'/upload/201210/20/201210201156396062.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (206, 53, N'/upload/201210/20/small_201210201156406055.jpg', N'/upload/201210/20/201210201156406055.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (207, 53, N'/upload/201210/20/small_201210201156414332.jpg', N'/upload/201210/20/201210201156414332.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (208, 53, N'/upload/201210/20/small_201210201156426980.jpg', N'/upload/201210/20/201210201156426980.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (209, 54, N'/upload/201210/20/small_201210201200526551.jpg', N'/upload/201210/20/201210201200526551.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (210, 54, N'/upload/201210/20/small_201210201200554347.jpg', N'/upload/201210/20/201210201200554347.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (211, 54, N'/upload/201210/20/small_201210201200572461.jpg', N'/upload/201210/20/201210201200572461.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (212, 54, N'/upload/201210/20/small_201210201201053194.png', N'/upload/201210/20/201210201201053194.png', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (213, 54, N'/upload/201210/20/small_201210201201068654.jpg', N'/upload/201210/20/201210201201068654.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (214, 55, N'/upload/201210/20/small_201210201205466391.jpg', N'/upload/201210/20/201210201205466391.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (215, 56, N'/upload/201210/20/small_201210201207599384.jpg', N'/upload/201210/20/201210201207599384.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (216, 56, N'/upload/201210/20/small_201210201208026400.jpg', N'/upload/201210/20/201210201208026400.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (217, 57, N'/upload/201210/20/small_201210201209063079.jpg', N'/upload/201210/20/201210201209063079.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (218, 57, N'/upload/201210/20/small_201210201209458641.jpg', N'/upload/201210/20/201210201209458641.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (219, 57, N'/upload/201210/20/small_201210201209597940.jpg', N'/upload/201210/20/201210201209597940.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (220, 57, N'/upload/201210/20/small_201210201210107724.jpg', N'/upload/201210/20/201210201210107724.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (221, 57, N'/upload/201210/20/small_201210201210177686.jpg', N'/upload/201210/20/201210201210177686.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (222, 57, N'/upload/201210/20/small_201210201210336818.jpg', N'/upload/201210/20/201210201210336818.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (223, 57, N'/upload/201210/20/small_201210201210450507.jpg', N'/upload/201210/20/201210201210450507.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (226, 60, N'/upload/201210/20/small_201210201224112027.jpg', N'/upload/201210/20/201210201224112027.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (227, 60, N'/upload/201210/20/small_201210201224125771.jpg', N'/upload/201210/20/201210201224125771.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (228, 60, N'/upload/201210/20/small_201210201224139046.jpg', N'/upload/201210/20/201210201224139046.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (229, 60, N'/upload/201210/20/small_201210201224156694.jpg', N'/upload/201210/20/201210201224156694.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (259, 78, N'/upload/201210/20/small_201210202008489135.png', N'/upload/201210/20/201210202008489135.png', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (261, 78, N'/upload/201210/20/small_201210202008521629.jpg', N'/upload/201210/20/201210202008521629.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (262, 79, N'/upload/201210/20/small_201210202011372745.jpg', N'/upload/201210/20/201210202011372745.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (263, 79, N'/upload/201210/20/small_201210202011413206.jpg', N'/upload/201210/20/201210202011413206.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (264, 79, N'/upload/201210/20/small_201210202011460073.jpg', N'/upload/201210/20/201210202011460073.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (265, 80, N'/upload/201210/20/small_201210202017022010.jpg', N'/upload/201210/20/201210202017022010.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (266, 80, N'/upload/201210/20/small_201210202017031539.jpg', N'/upload/201210/20/201210202017031539.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (267, 80, N'/upload/201210/20/small_201210202017050130.jpg', N'/upload/201210/20/201210202017050130.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (268, 80, N'/upload/201210/20/small_201210202017064971.jpg', N'/upload/201210/20/201210202017064971.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (269, 81, N'/upload/201210/20/small_201210202019286434.jpg', N'/upload/201210/20/201210202019286434.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (270, 81, N'/upload/201210/20/small_201210202019304087.jpg', N'/upload/201210/20/201210202019304087.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (271, 81, N'/upload/201210/20/small_201210202019318615.jpg', N'/upload/201210/20/201210202019318615.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (272, 81, N'/upload/201210/20/small_201210202019336893.jpg', N'/upload/201210/20/201210202019336893.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (273, 81, N'/upload/201210/20/small_201210202019352828.jpg', N'/upload/201210/20/201210202019352828.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (274, 82, N'/upload/201210/20/small_201210202022443738.jpg', N'/upload/201210/20/201210202022443738.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (275, 82, N'/upload/201210/20/small_201210202022462329.jpg', N'/upload/201210/20/201210202022462329.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (276, 82, N'/upload/201210/20/small_201210202022480294.jpg', N'/upload/201210/20/201210202022480294.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (277, 82, N'/upload/201210/20/small_201210202022497635.jpg', N'/upload/201210/20/201210202022497635.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (278, 82, N'/upload/201210/20/small_201210202022516538.jpg', N'/upload/201210/20/201210202022516538.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (279, 82, N'/upload/201210/20/small_201210202022530910.jpg', N'/upload/201210/20/201210202022530910.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (280, 82, N'/upload/201210/20/small_201210202022548563.jpg', N'/upload/201210/20/201210202022548563.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (281, 82, N'/upload/201210/20/small_201210202022568716.jpg', N'/upload/201210/20/201210202022568716.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (282, 82, N'/upload/201210/20/small_201210202022583244.jpg', N'/upload/201210/20/201210202022583244.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (283, 82, N'/upload/201210/20/small_201210202022599179.jpg', N'/upload/201210/20/201210202022599179.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (284, 82, N'/upload/201210/20/small_201210202023017613.jpg', N'/upload/201210/20/201210202023017613.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (285, 82, N'/upload/201210/20/small_201210202023034798.jpg', N'/upload/201210/20/201210202023034798.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (286, 82, N'/upload/201210/20/small_201210202023050264.jpg', N'/upload/201210/20/201210202023050264.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (287, 82, N'/upload/201210/20/small_201210202023071822.jpg', N'/upload/201210/20/201210202023071822.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (288, 82, N'/upload/201210/20/small_201210202023086976.jpg', N'/upload/201210/20/201210202023086976.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (289, 82, N'/upload/201210/20/small_201210202023102754.jpg', N'/upload/201210/20/201210202023102754.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (290, 82, N'/upload/201210/20/small_201210202023118845.jpg', N'/upload/201210/20/201210202023118845.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (291, 82, N'/upload/201210/20/small_201210202023133999.jpg', N'/upload/201210/20/201210202023133999.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (292, 82, N'/upload/201210/20/small_201210202023156651.jpg', N'/upload/201210/20/201210202023156651.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (293, 82, N'/upload/201210/20/small_201210202023181334.jpg', N'/upload/201210/20/201210202023181334.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (294, 83, N'/upload/201210/20/small_201210202025549953.jpg', N'/upload/201210/20/201210202025549953.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (295, 83, N'/upload/201210/20/small_201210202025566044.jpg', N'/upload/201210/20/201210202025566044.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (296, 83, N'/upload/201210/20/small_201210202025578385.jpg', N'/upload/201210/20/201210202025578385.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (297, 83, N'/upload/201210/20/small_201210202025594945.jpg', N'/upload/201210/20/201210202025594945.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (298, 83, N'/upload/201210/20/small_201210202026047592.jpg', N'/upload/201210/20/201210202026047592.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (299, 83, N'/upload/201210/20/small_201210202026076336.jpg', N'/upload/201210/20/201210202026076336.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (300, 83, N'/upload/201210/20/small_201210202026088990.jpg', N'/upload/201210/20/201210202026088990.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (301, 83, N'/upload/201210/20/small_201210202026121016.jpg', N'/upload/201210/20/201210202026121016.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (302, 83, N'/upload/201210/20/small_201210202026136482.jpg', N'/upload/201210/20/201210202026136482.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (303, 83, N'/upload/201210/20/small_201210202026152729.jpg', N'/upload/201210/20/201210202026152729.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (304, 83, N'/upload/201210/20/small_201210202026169132.jpg', N'/upload/201210/20/201210202026169132.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (305, 84, N'/upload/201210/20/small_201210202029231294.jpg', N'/upload/201210/20/201210202029231294.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (306, 84, N'/upload/201210/20/small_201210202029278630.jpg', N'/upload/201210/20/201210202029278630.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (307, 84, N'/upload/201210/20/small_201210202029321435.jpg', N'/upload/201210/20/201210202029321435.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (308, 84, N'/upload/201210/20/small_201210202029363302.jpg', N'/upload/201210/20/201210202029363302.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (309, 84, N'/upload/201210/20/small_201210202029406263.jpg', N'/upload/201210/20/201210202029406263.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (310, 84, N'/upload/201210/20/small_201210202029425947.jpg', N'/upload/201210/20/201210202029425947.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (311, 84, N'/upload/201210/20/small_201210202029455629.jpg', N'/upload/201210/20/201210202029455629.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (312, 84, N'/upload/201210/20/small_201210202029477969.jpg', N'/upload/201210/20/201210202029477969.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (313, 84, N'/upload/201210/20/small_201210202029492185.jpg', N'/upload/201210/20/201210202029492185.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (314, 84, N'/upload/201210/20/small_201210202029541863.jpg', N'/upload/201210/20/201210202029541863.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (315, 84, N'/upload/201210/20/small_201210202029552486.jpg', N'/upload/201210/20/201210202029552486.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (316, 84, N'/upload/201210/20/small_201210202029597790.jpg', N'/upload/201210/20/201210202029597790.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (317, 85, N'/upload/201210/20/small_201210202032560904.jpg', N'/upload/201210/20/201210202032560904.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (318, 85, N'/upload/201210/20/small_201210202032574964.jpg', N'/upload/201210/20/201210202032574964.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (319, 85, N'/upload/201210/20/small_201210202032586837.jpg', N'/upload/201210/20/201210202032586837.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (320, 85, N'/upload/201210/20/small_201210202033003865.jpg', N'/upload/201210/20/201210202033003865.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (321, 86, N'/upload/201210/20/small_201210202034490538.jpg', N'/upload/201210/20/201210202034490538.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (322, 86, N'/upload/201210/20/small_201210202034500224.jpg', N'/upload/201210/20/201210202034500224.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (323, 86, N'/upload/201210/20/small_201210202034511003.jpg', N'/upload/201210/20/201210202034511003.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (324, 86, N'/upload/201210/20/small_201210202034519283.jpg', N'/upload/201210/20/201210202034519283.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (325, 86, N'/upload/201210/20/small_201210202034530062.jpg', N'/upload/201210/20/201210202034530062.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (326, 86, N'/upload/201210/20/small_201210202034541623.jpg', N'/upload/201210/20/201210202034541623.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (327, 86, N'/upload/201210/20/small_201210202034549590.jpg', N'/upload/201210/20/201210202034549590.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (328, 86, N'/upload/201210/20/small_201210202034560213.jpg', N'/upload/201210/20/201210202034560213.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (329, 87, N'/upload/201210/20/small_201210202038404022.jpg', N'/upload/201210/20/201210202038404022.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (330, 87, N'/upload/201210/20/small_201210202038418082.jpg', N'/upload/201210/20/201210202038418082.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (331, 87, N'/upload/201210/20/small_201210202038436829.jpg', N'/upload/201210/20/201210202038436829.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (332, 87, N'/upload/201210/20/small_201210202038456044.jpg', N'/upload/201210/20/201210202038456044.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (333, 88, N'/upload/201210/20/small_201210202042487638.jpg', N'/upload/201210/20/201210202042487638.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (334, 88, N'/upload/201210/20/small_201210202042513728.jpg', N'/upload/201210/20/201210202042513728.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (335, 88, N'/upload/201210/20/small_201210202042531693.jpg', N'/upload/201210/20/201210202042531693.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (336, 88, N'/upload/201210/20/small_201210202042555907.jpg', N'/upload/201210/20/201210202042555907.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (337, 88, N'/upload/201210/20/small_201210202042574342.jpg', N'/upload/201210/20/201210202042574342.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (338, 89, N'/upload/201210/20/small_201210202045294382.jpg', N'/upload/201210/20/201210202045294382.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (339, 89, N'/upload/201210/20/small_201210202045312972.jpg', N'/upload/201210/20/201210202045312972.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (340, 89, N'/upload/201210/20/small_201210202046252565.jpg', N'/upload/201210/20/201210202046252565.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (341, 89, N'/upload/201210/20/small_201210202046516424.jpg', N'/upload/201210/20/201210202046516424.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (342, 89, N'/upload/201210/20/small_201210202046555479.jpg', N'/upload/201210/20/201210202046555479.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (343, 90, N'/upload/201210/20/small_201210202050580682.jpg', N'/upload/201210/20/201210202050580682.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (344, 90, N'/upload/201210/20/small_201210202050593336.jpg', N'/upload/201210/20/201210202050593336.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (345, 90, N'/upload/201210/20/small_201210202051027705.jpg', N'/upload/201210/20/201210202051027705.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (346, 90, N'/upload/201210/20/small_201210202051054575.jpg', N'/upload/201210/20/201210202051054575.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (347, 91, N'/upload/201210/20/small_201210202053401186.jpg', N'/upload/201210/20/201210202053401186.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (348, 91, N'/upload/201210/20/small_201210202053439773.jpg', N'/upload/201210/20/201210202053439773.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (349, 91, N'/upload/201210/20/small_201210202053463363.jpg', N'/upload/201210/20/201210202053463363.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (350, 91, N'/upload/201210/20/small_201210202053486484.jpg', N'/upload/201210/20/201210202053486484.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (351, 92, N'/upload/201210/20/small_201210202055147277.jpg', N'/upload/201210/20/201210202055147277.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (352, 92, N'/upload/201210/20/small_201210202055186489.jpg', N'/upload/201210/20/201210202055186489.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (353, 92, N'/upload/201210/20/small_201210202055233668.jpg', N'/upload/201210/20/201210202055233668.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (354, 93, N'/upload/201210/20/small_201210202057530604.jpg', N'/upload/201210/20/201210202057530604.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (355, 93, N'/upload/201210/20/small_201210202057547476.jpg', N'/upload/201210/20/201210202057547476.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (356, 93, N'/upload/201210/20/small_201210202057577471.jpg', N'/upload/201210/20/201210202057577471.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (357, 93, N'/upload/201210/20/small_201210202058004185.jpg', N'/upload/201210/20/201210202058004185.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (358, 94, N'/upload/201210/20/small_201210202059284192.jpg', N'/upload/201210/20/201210202059284192.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (359, 94, N'/upload/201210/20/small_201210202059320905.jpg', N'/upload/201210/20/201210202059320905.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (360, 95, N'/upload/201210/20/small_201210202100341426.jpg', N'/upload/201210/20/201210202100341426.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (361, 95, N'/upload/201210/20/small_201210202100369234.jpg', N'/upload/201210/20/201210202100369234.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (362, 95, N'/upload/201210/20/small_201210202100393136.jpg', N'/upload/201210/20/201210202100393136.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (363, 95, N'/upload/201210/20/small_201210202100590760.jpg', N'/upload/201210/20/201210202100590760.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (364, 96, N'/upload/201210/20/small_201210202102149384.jpg', N'/upload/201210/20/201210202102149384.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (365, 96, N'/upload/201210/20/small_201210202102167818.jpg', N'/upload/201210/20/201210202102167818.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (366, 96, N'/upload/201210/20/small_201210202102187971.jpg', N'/upload/201210/20/201210202102187971.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (367, 96, N'/upload/201210/20/small_201210202102226714.jpg', N'/upload/201210/20/201210202102226714.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (368, 96, N'/upload/201210/20/small_201210202102268426.jpg', N'/upload/201210/20/201210202102268426.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (369, 96, N'/upload/201210/20/small_201210202102305920.jpg', N'/upload/201210/20/201210202102305920.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (370, 97, N'/upload/201210/20/small_201210202104380559.jpg', N'/upload/201210/20/201210202104380559.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (371, 97, N'/upload/201210/20/small_201210202104394619.jpg', N'/upload/201210/20/201210202104394619.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (372, 97, N'/upload/201210/20/small_201210202104408054.jpg', N'/upload/201210/20/201210202104408054.jpg', N'', CAST(0x0000A28A0107D96B AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_article_albums] OFF
/****** Object:  Table [dbo].[dt_article]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[call_index] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
	[zhaiyao] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[sort_id] [int] NULL,
	[click] [int] NULL,
	[status] [tinyint] NULL,
	[groupids_view] [nvarchar](255) NULL,
	[vote_id] [int] NULL,
	[is_msg] [tinyint] NULL,
	[is_top] [tinyint] NULL,
	[is_red] [tinyint] NULL,
	[is_hot] [tinyint] NULL,
	[is_slide] [tinyint] NULL,
	[is_sys] [tinyint] NULL,
	[user_name] [nvarchar](100) NULL,
	[add_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'category_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外部链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关健字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'seo_keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'zhaiyao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'click'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0正常1未审核2锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'groupids_view'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联投票ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'vote_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许评论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否置顶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_top'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推荐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_red'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否热门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_hot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否幻灯片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_slide'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否管理员发布0不是1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'update_time'
GO
SET IDENTITY_INSERT [dbo].[dt_article] ON
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (3, 5, 32, N'about', N'公司简介', N'', N'', N'', N'', N'', N'动力启航（www.dtcms.net）是一个以ASP.NET(C#)+jQuery技术为中心，面向软件开发者、程序爱好者、网页设计师，服务于个人、企业的网站，同时也是一个专门结合AJAX技术开发友好界面、倍受欢迎用户体验的BS模式软件系统，致力打造自己的品牌。DTcms是动力启航旗下一个开源软件产…', N'<p>
	&nbsp; &nbsp; 动力启航（www.dtcms.net）是一个以ASP.NET(C#)+jQuery技术为中心，面向软件开发者、程序爱好者、网页设计师，服务于个人、企业的网站，同时也是一个专门结合AJAX技术开发友好界面、倍受欢迎用户体验的BS模式软件系统，致力打造自己的品牌。
</p>
<p>
	DTcms是动力启航旗下一个开源软件产品，最早创建于2009年10月，其本质不以商业为目的，我们的宗旨是让更多的编程爱好者分享交流互联网开发技术。
</p>
<p>
	DTcms之所以开源，最大原因在于国内ASP.NET(c#)开源软件成品太少，相信刚接触编程开发者都跟我一样有很深的体会，书本上的知识很有限，学习的过程中都是一些比较简单的基础知识，偶然发现一个比较成熟的案例，要么就是不开源，要么就是收费。想学习研究却无从下手。在摸索的道路上我仅将自己摸索的一点知识和经验分享出来。
</p>
<p>
	站在巨人的肩膀上，会让你看得更远，走得更快，虽然我们现在不是巨人；编程也一样，在前者的摸索道路上，如果大家都将自己的编程思想和经验共享出来让后人去学习和纠正，那么或许他们就不必走那么多的弯路，互联网的发展是否会更快？
</p>
<p>
	基于以上的追求，限于国产开源界的目前现状，DTcms由此而诞生。
</p>', 99, 86, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0EF018205E0 AS DateTime), CAST(0x0000A46A00A5B204 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (4, 5, 32, N'zhizhi', N'企业资质', N'', N'', N'', N'', N'', N'动力启航 - 专注互联网开发最前端  官方网址：http://www.dtcms.net                 http://www.it134.cn 所在地区：中国广东省佛山市顺德区大良镇业务电话：+86 13695245546新浪微博：http://weibo.com/dtcms 技术Q群：17671249（1群已满）、65105443 (2群已满)、65105043 (…', N'<p>
	<strong>动力启航 - 专注互联网开发最前端 </strong> 
</p>
<p>
	<strong>官方网址：</strong><a href="http://www.dtcms.net" target="_blank">http://www.dtcms.net</a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://www.it134.cn" target="_blank">http://www.it134.cn</a> 
</p>
<p>
	<strong>所在地区：</strong>中国广东省佛山市顺德区大良镇
</p>
<p>
	<strong>业务电话：</strong>+86 13695245546
</p>
<p>
	<strong>新浪微博：</strong><a href="http://weibo.com/dtcms" target="_blank">http://weibo.com/dtcms</a> 
</p>
<p>
	<strong>技术Q群：</strong>17671249（1群已满）、65105443 (2群已满)、65105043 (3群已满)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;124834949 (4群)
</p>
<p>
	<strong>电子邮箱：</strong>info@it134.cn
</p>', 100, 248, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0EF01824078 AS DateTime), CAST(0x0000A46A00A82892 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (39, 3, 28, N'', N'短发美女', N'', N'/upload/201210/20/small_201210201104382108.jpg', N'', N'', N'', N'短发也有不一样的美', N'', 99, 18, 0, N'', 0, 0, 0, 0, 0, 1, 1, N'admin', CAST(0x0000A0F000B6CF11 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (43, 3, 29, N'', N'青春 是一本太仓促的书', N'', N'/upload/201210/20/small_201210201109244855.jpg', N'', N'', N'', N'所有的结局都已写好   所有的泪水也都已启程   却忽然忘了是怎么样的一个开始   在那个古老的不再回来的夏日', N'<p>
	<strong>所有的结局都已写好&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>所有的泪水也都已启程&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>却忽然忘了是怎么样的一个开始&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>在那个古老的不再回来的夏日&nbsp;</strong>
</p>
<p>
	<img alt="" src="/upload/201210/20/201210201110513729.jpg" />
</p>
<p>
	&nbsp;
</p>
<p>
	<strong>无论我如何的去追索&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>年轻的你只如云影掠过&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>而你微笑的面容极浅极淡&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>逐渐隐没在日落后的群岚&nbsp;</strong>
</p>
<p>
	<img alt="" src="/upload/201210/20/201210201111272182.jpg" />
</p>
<p>
	&nbsp;
</p>
<p>
	&nbsp;
</p>
<div>
	<strong><strong>逐翻开那发黄的扉页&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>命运将它装订的极为拙劣&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>含着泪 &nbsp;我一读再读&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>却不得不承认&nbsp;</strong><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
<strong>青春是一本太仓促的书&nbsp;</strong></strong>
</div>
<div>
	<img alt="" src="/upload/201210/20/201210201111542545.jpg" /><br style="line-height:21px;background-color:#ffffff;font-family:''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, Helvetica, sTHeiti;color:#454545;" />
</div>', 99, 12, 0, N'', 0, 0, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A0F000B8927F AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (44, 3, 26, N'', N'即使给我江山如画，也抵不过你笑靥如花···', N'', N'/upload/201210/20/small_201210201121224163.jpg', N'', N'', N'', N'即使给我江山如画，也抵不过你笑靥如花', N'即使给我江山如画，也抵不过你笑靥如花···', 99, 12, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F000BB3CEA AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (45, 3, 29, N'', N'姑姑是个美人，岁月你别伤害她', N'', N'/upload/201210/20/small_201210201122436999.jpg', N'', N'', N'', N'', N'', 99, 11, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F000BBA658 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (46, 3, 25, N'', N'#泰坦尼克号# 拍摄花絮', N'', N'/upload/201210/20/small_201210201128412942.jpg', N'', N'', N'', N'', N'', 99, 15, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F000BD414F AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (47, 3, 26, N'', N'那最美的油菜花上有我青春的泪.', N'', N'/upload/201210/20/small_201210201134400466.jpg', N'', N'', N'', N'', N'', 99, 6, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F000BEE0DB AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (48, 3, 25, N'', N'学生嫩模于欣鹭湿身性感照片', N'', N'/upload/201210/20/small_201210201137062000.jpg', N'', N'', N'', N'', N'', 99, 33, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F000BF9979 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (49, 3, 25, N'', N'杭州花貌', N'', N'/upload/201210/20/small_201210201143259178.jpg', N'', N'', N'', N'', N'', 99, 25, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A0F000C17C91 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (50, 3, 25, N'', N'印象杭州', N'', N'/upload/201210/20/201210202304102474.jpg', N'', N'', N'', N'十一长假去杭州玩了三天半，9月11号在携程上订了机票，9月13号在同程网上订了酒店——如家酒店（浙大玉泉校区对面），370元一晚。10月2号晚上9点20的飞机（不过晚点起飞了，9点40），6号下午3点返回。去时290元，回来680元。       到酒店已经是3号的0点30分了，早上六点…', N'<p align="left">
	&nbsp;&nbsp; &nbsp; 十一长假去杭州玩了三天半，9月11号在携程上订了机票，9月13号在同程网上订了酒店——如家酒店（浙大玉泉校区对面），370元一晚。10月2号晚上9点20的飞机（不过晚点起飞了，9点40），6号下午3点返回。去时290元，回来680元。
</p>
<p align="left">
	&nbsp; &nbsp; &nbsp; &nbsp;到酒店已经是3号的0点30分了，早上六点半醒了，到浙大路上的新丰小吃吃早饭，虾肉小笼包不错，就是有点咸。沿着小巷走到玉泉，本来想去岳庙的，碰到个老太太，她说早上去寺庙坟墓不好，推荐我们去龙井家园附近的翁家山，说可以去茶农家里买龙井茶，然后再去雷峰塔，刚好那天是阴历八月十八，下午在去六和塔看钱塘江大潮。
</p>
<p align="left">
	&nbsp; &nbsp; &nbsp; &nbsp;好吧，依照老人家的指引吧，先上27路车，人好多啊，还都是老头老太太，上车也没秩序，我们也不好意思跟他们挤。翁家山的茶农家都是杭州市规划的白墙黑瓦的江南风二层小楼，到茶农家里喝了明前茶和明后茶，味道真的差别很大，茶农说龙井分三种——狮峰龙井、西湖龙井、浙江龙井，狮峰龙井是白沙土种的，西湖龙井是红土地种的，浙江龙井市黑土地种的，她家种的是狮峰龙井，有股炒黄豆的味道。买了8两，500元。
</p>', 99, 55, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A0F000C2685C AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (51, 3, 25, N'', N'街头霸王', N'', N'/upload/201210/20/small_201210201150403758.jpg', N'', N'', N'', N'', N'', 99, 14, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F000C36586 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (52, 3, 29, N'', N'游戏中的美女，供你做壁纸', N'', N'/upload/201210/20/201210202300203204.jpg', N'', N'', N'', N'', N'', 99, 55, 0, N'', 0, 0, 1, 1, 0, 0, 1, N'admin', CAST(0x0000A0F000C43614 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (53, 3, 25, N'', N'韩国jiwon pang CG作品', N'', N'/upload/201210/20/small_201210201156192282.jpg', N'', N'', N'', N'', N'', 99, 47, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A0F000C4E166 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (54, 3, 29, N'', N'这虽是游戏，但可不是闹着玩的！', N'', N'/upload/201210/20/small_201210201200526551.jpg', N'', N'', N'', N'', N'', 99, 50, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A0F000C65AE6 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (55, 3, 25, N'', N'幻色的思念33', N'', N'/upload/201210/20/small_201210201205466391.jpg', N'', N'', N'', N'', N'', 99, 13, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F000C75BA5 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (56, 3, 25, N'', N'【新闻】梦圆《仙剑5前传》 龙溟凌波3D曝光', N'', N'/upload/201210/20/small_201210201207599384.jpg', N'', N'', N'', N'', N'', 99, 21, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F000C7F9D1 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (57, 3, 26, N'', N'嘿，做个轻松的人吧', N'', N'/upload/201210/20/small_201210201209063079.jpg', N'', N'', N'', N'', N'嘿，做个轻松的人吧', 99, 66, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A0F000C8C8C8 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (60, 3, 26, N'', N'只是想你了如此而已', N'', N'/upload/201210/20/small_201210201224112027.jpg', N'', N'', N'', N'', N'', 99, 8, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F000CC711C AS DateTime), CAST(0x0000A29000441D26 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (78, 3, 25, N'', N'三星I9300 GALAXY SIII', N'', N'/upload/201210/20/201210202242561250.jpg', N'', N'', N'', N'即便是市面上超级强大的拍照手机、或者是性能秒杀一切的四核心手机，其中最经常、最直接和我们打交道的还是那块华丽丽的屏幕。三星GALAXY S III在这方面有资格和市面上任何智能手机强硬对话。它采用了4.8英寸的1280*720分辨率Super AMOLED屏幕。说实话没有采用Plus屏幕我…', N'<span style="color:#666666;line-height:20px;font-family:&quot;Microsoft YaHei&quot;;white-space:normal;background-color:#FFFFFF;">即便是市面上超级强大的拍照手机、或者是性能秒杀一切的四核心手机，其中最经常、最直接和我们打交道的还是那块华丽丽的屏幕。三星GALAXY S III在这方面有资格和市面上任何智能手机强硬对话。它采用了4.8英寸的1280*720分辨率Super AMOLED屏幕。说实话没有采用Plus屏幕我们有些遗憾，但是720P的Super AMOLED似乎能够在显示效果和续航之间达到更好的平衡点。</span>', 99, 23, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F001481448 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (79, 3, 29, N'', N'海贼王日历', N'', N'/upload/201210/20/201210202242019748.jpg', N'', N'', N'', N'一起陪我们走过无数次 欢乐的 日子 动漫无国界 只有快乐！', N'一起陪我们走过无数次 欢乐的 日子 动漫无国界 只有快乐！', 99, 25, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A0F0014D11A0 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (80, 3, 29, N'', N'唯美的图片第一期', N'', N'/upload/201210/20/201210202241181983.jpg', N'', N'', N'', N'怎样？！有没有 拿他们做背景的冲动呢？', N'怎样？！有没有 拿他们做背景的冲动呢？', 99, 12, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F0014E89CC AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (81, 3, 26, N'', N'唯美图片第二期', N'', N'/upload/201210/20/201210202239307256.jpg', N'', N'', N'', N'就请不要再随心所欲突然闯入我的生活又走的那么洒脱这是一个以光速往前发展的城市旋转的物欲和蓬勃的生机把城市变成地下迷宫般错综复杂你就像一只飞鸟 想走就走想留就留 害我没半点防备 当海水变成盐巴冬雪埋葬春华你肯爱上我吗没有准备我们来到这里我们一生下来手里就有一张车…', N'<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	就请不要再随心所欲突然闯入我的生活又走的那么洒脱
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;" align="left">
	这是一个以光速往前发展的城市<br />
旋转的物欲和蓬勃的生机<br />
把城市变成地下迷宫般错综复杂
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	你就像一只飞鸟 想走就走<br />
想留就留 害我没半点防备
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	&nbsp;
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	当海水变成盐巴冬雪埋葬春华你肯爱上我吗
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	没有准备我们来到这里<br />
我们一生下来手里就有一张车票<br />
坐不同的车到同一个地方传说那里有温暖的床
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	&nbsp;
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	自此地步 时光绊我前行你要弃我前去还是迁就于我
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	想知道你最近过的好吗 没有我对你或许是种解脱<br />
转了一大圈最终还是回到了原点<br />
我不想点破 你也不要多说<br />
这样也许是最好的办法 安于现状
</p>
<div style="text-align:left;">
	<span style="color:#333333;font-size:x-small;"><span style="line-height:21px;"><br />
</span></span> 
</div>', 99, 11, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F0014F03AC AS DateTime), CAST(0x0000A290004413C9 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (82, 3, 26, N'', N'喵星人的世界', N'', N'/upload/201210/20/201210202238382318.jpg', N'', N'', N'', N'瞄的世界 你不懂~ 喵了个咪的！', N'瞄的世界 你不懂~ 喵了个咪的！', 99, 9, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F0014FFFA0 AS DateTime), CAST(0x0000A290004403E3 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (83, 3, 26, N'', N'花语', N'', N'/upload/201210/20/201210202236076088.jpg', N'', N'', N'', N'花 无意惹东风一夜梦醒 含放天晴情 无意遥相望 翘首相思 心念尤重重 无意花落红碾作成泥 暗香独留留 无意风又起天涯飘零 何处相逢逢 无意相迎笑一眼情生 各许莫离离 无意寒霜降相依空却 来生再梦 。。。。。。', N'<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	花 无意惹东风
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	一夜梦醒 含放天晴
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	情 无意遥相望&nbsp;
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	翘首相思 心念尤重
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	重 无意花落红
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	碾作成泥 暗香独留
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	留 无意风又起
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	天涯飘零 何处相逢
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	逢 无意相迎笑
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	一眼情生 各许莫离
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	离 无意寒霜降
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	相依空却 来生再梦&nbsp;
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	。。。。。。
</p>', 99, 12, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F00150E8D4 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (84, 3, 26, N'', N'爱！让我们一起去旅行', N'', N'/upload/201210/20/201210202237224125.jpg', N'', N'', N'', N'褪去原有的纯白岁月泛成黄的纸张便再无法，用清晰的笔调去渲染、刻画只剩，印下的高高低低的脚步如一排浅吟轻唱的诗行心灵却一往向前思绪蜿蜒缠绵无法承受的，也是生命的行囊从今往后，唯愿用睿智填补空缺让岁月错落成诗', N'<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	褪去原有的纯白
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	岁月泛成黄的纸张
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	便再无法，用清晰的笔调
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	去渲染、刻画
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	只剩，印下的高高低低的脚步
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	如一排浅吟轻唱的诗行
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	心灵却一往向前思绪蜿蜒缠绵
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	无法承受的，也是生命的行囊
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	从今往后，唯愿
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	用睿智填补空缺
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	让岁月错落成诗
</p>', 99, 6, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F00151F530 AS DateTime), CAST(0x0000A2900043F497 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (85, 3, 26, N'', N'小木屋，时空的谜题', N'', N'/upload/201210/20/201210202233114575.jpg', N'', N'', N'', N'有份情感无法代言 藏着噎着好难眠 有份感觉好纯好甜 飘过漫长的心海 找不到落脚地点有份思念像彩虹高悬 在迷茫的瞬间 突然闪现 有份清新浮出容颜 千呼万唤 却视而不见我在这里爱你 你在那里想我吗？ 一双目光同一盏灯一样明亮一个人同一朵花散发同样的芳香 细数的柔情把黑夜灌…', N'<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<span style="font-family:楷体_GB2312;">有份情感无法代言</span>&nbsp;<span style="font-family:楷体_GB2312;">藏着噎着好难眠</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<span style="font-family:楷体_GB2312;">有份感觉好纯好甜 飘过漫长的心海 找不到落脚地点<br />
有份思念像彩虹高悬 在迷茫的瞬间 突然闪现</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<span style="font-family:楷体_GB2312;">有份清新浮出容颜 千呼万唤 却视而不见<br />
我在这里爱你 你在那里想我吗？</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<span style="font-family:楷体_GB2312;">一双目光同一盏灯一样明亮一个人同一朵花散发同样的芳香</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<span style="font-family:楷体_GB2312;">细数的柔情把黑夜灌醉</span>&nbsp;<span style="font-family:楷体_GB2312;">夜醉了&nbsp;&nbsp;她却醒着 你呢？</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;" align="left">
	<span style="font-family:楷体_GB2312;">感情是个傻子 软弱无力 经受不起伤心的回忆虚设的心障将自己囚禁在中央</span>&nbsp;<span style="font-family:楷体_GB2312;">爱在街角</span>&nbsp;<span style="font-family:楷体_GB2312;">难舍难离</span> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;" align="left">
	<span style="font-family:楷体_GB2312;">繁华烟云是演不完的游戏</span> 
</p>', 99, 7, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F00152AC00 AS DateTime), CAST(0x0000A2900043EB69 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (86, 3, 27, N'', N'懂得生活', N'', N'/upload/201210/20/201210202234148251.jpg', N'', N'', N'', N'我想走在寻找快乐的路上。我想在追寻阳光的路上狂奔。如果你也如此，那么就和我一起吧。如果你给予我温暖，我必以真诚相待回报于你。如果你给予我爱，我也会回报给你更多的爱。如果你信任我，我也无条件的相信你。突然觉得世界变得如此的简单与分明，就连心情都变得透明。今天…', N'<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">我想走在寻找快乐的路上。我想在追寻阳光的路上狂奔。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">如果你也如此，那么就和我一起吧。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">如果你给予我温暖，我必以真诚相待回报于你。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">如果你给予我爱，我也会回报给你更多的爱。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">如果你信任我，我也无条件的相信你。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">突然觉得世界变得如此的简单与分明，就连心情都变得透明。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">今天特别喜欢的一句话：在遇见他之前，请给我明媚的阳光。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">因为蓝色性格的世界，已经是如此的悲观与规则。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">所以想要温暖向阳，哪怕是身处晚秋，还是能收获一身温暖。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">若有一天世界已经荒芜，</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">若有一天负面情绪已经将我打败，</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">若有一天前方的路已经模糊混沌，被阴霾笼罩。</span><br />
<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">希望上面的文字提醒我：要温暖向阳。</span>', 99, 11, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F001533C24 AS DateTime), CAST(0x0000A2900043E268 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (87, 3, 27, N'', N'动物图片', N'', N'/upload/201210/20/201210202235129902.jpg', N'', N'', N'', N'又是一日。每日每日，时间走得飞快，生怕被什么赶超过去一般，匆忙而淡漠。好在我已不再像从前，恨不得把每一分钟都要捏成无数个碎片，一定要不辜负每一个碎片才好。年轮教给我最多的，常常就是，平淡，也是一种厚度。少年时，总担心辜负了时光，到如今才懂得，再努力，时光终…', N'<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	又是一日。
</p>
<div style="margin:0px;padding:0px;text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<div style="margin:0px;padding:0px;">
		每日每日，时间走得飞快，生怕被什么赶超过去一般，匆忙而淡漠。好在我已不再像从前，恨不得把每一分钟都要捏成无数个碎片，一定要不辜负每一个碎片才好。年轮教给我最多的，常常就是，平淡，也是一种厚度。少年时，总担心辜负了时光，到如今才懂得，再努力，时光终会辜负了自己。
	</div>
	<div style="margin:0px;padding:0px;">
		&nbsp;
	</div>
</div>', 99, 9, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F001544754 AS DateTime), CAST(0x0000A2900043D988 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (88, 3, 26, N'', N'有的时候爱的太久，人心会醉！', N'', N'/upload/201210/20/201210202229412330.jpg', N'', N'', N'', N'记忆就像是握在手中的水，不管你握紧还是摊开都会慢慢的消失。最好不相见，如此便可不相恋，最好不相知，如此便可不相思。有的时候爱的太久，人心会醉，有的时候恨的太久，人心也会碎；有时候等待太久，人心会干涸！爱的太久，心会碎么？其实不然，爱久了，就成了一种习惯…', N'<p>
	<strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">记忆就像是握在手中的水，不管你握紧还是摊开都会慢慢的消失。最好不相见，如此便可不相恋，最好不相知，如此便可不相思。</strong><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;"><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">有的时候爱的太久，人心会醉，有的时候恨的太久，人心也会碎；有时候等待太久，人心会干涸！爱的太久，心会碎么？其实不然，爱久了，就成了一种习惯，没有了激情的爱情，还能让人心碎么？恨的太久，心会碎么？</strong><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">我们用眼泪冲刷生活的酸楚，用时光沉淀情感的碎片。静静的站在角落里，看着这个世界，看着来来往往的人群。每个人都步履匆匆的从我的身边走过，渐行渐远。 似乎所有的人都处于已经离开我，或者将要离开，以及正在离开。</strong><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">人生若只如初见，何事秋风悲画扇。等闲变却故人心，却道故人心易变。骊山语罢清宵半，夜雨霖铃终不怨。何如薄幸锦衣儿，比翼连枝当日愿。有情不必终老，暗香浮动恰好，无情未必就是决绝，我只要你记着：初见时彼此的微笑。记住美好的时光，忘记遗憾的往事。</strong><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">当眼泪忍不住要流出来的时候，睁大眼睛别眨眼，你会看到世界由清晰到模糊的全过程。心，却在眼泪落下的那一刻变得清晰！爱久了，成了一种习惯；痛久了，成了一道刻痕；恨久了，成了一种负担。</strong><strong style="text-align:left;line-height:22px;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;display:block;white-space:normal;background-color:#FFFFFF;">时间会过去，人也会随着时间而老去。做过的梦，有过的期待，走过的路，现在又如何呢？这世上的事本来就是经不起时间的等待，曾以为自己会为谁而难过很久，曾以为自己会真的放不下一些东西。而现在又是好好的,谁不会永远陪在谁身边，美丽的东西都会成为过去，成为回忆。</strong><br />
</strong> 
</p>', 99, 42, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A0F0015576D8 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (89, 3, 27, N'', N'我喜爱阳光 是因为我想做个温暖灿烂的人 你呢', N'', N'/upload/201210/20/201210202301235320.jpg', N'', N'', N'', N'桥是江南水乡停住的梦。古老而深邃的青石板桥，悠悠绵延的小巷，喧嚣皆空的黄昏，一切都是现实，一切却又显得那般纯真、唯美，仿佛一个让人甘愿从此沉沦的梦境，令人心碎，更令人感动，泪，潸然落下。我想，江南的才子佳人是幸福的，因为他们曾携手走过一段悠远的青石板桥，而…', N'<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">&nbsp;桥是江南水乡停住的梦。古老而深邃的青石板桥，悠悠绵延的小巷，喧嚣皆空的黄昏，一切都是现实，一切却又显得那般纯真、唯美，仿佛一个让人甘愿从此沉沦的梦境，令人心碎，更令人感动，泪，潸然落下。我想，江南的才子佳人是幸福的，因为他们曾携手走过一段悠远的青石板桥，而非一世虚空；甚至那午后的小巷里有他们相拥的背影。他们的梦简单而纯粹，一如沉默而稳重的青石板桥，一如宁静和谐的小巷，一如仍湿着露珠的清晨，从此沉醉的一生。</span>', 99, 15, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F0015680DC AS DateTime), CAST(0x0000A2900043CE6F AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (90, 3, 26, N'', N'梦想~起航', N'', N'/upload/201210/20/201210202228415528.jpg', N'', N'', N'', N'那些被搁浅的梦想，被刻在时光里，深深浅浅吟吟哼唱。', N'<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	那些被搁浅的梦想，
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	被刻在时光里，
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	深深浅浅吟吟哼唱。
</p>', 99, 57, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A0F00157A700 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (91, 3, 26, N'', N'花', N'', N'/upload/201210/20/201210202240396556.jpg', N'', N'', N'', N'仿佛是天神无意间错乱了时节夏花还未凋谢   秋天的花早已盛放忙晕了蜜蜂    蝴蝶依旧痴情原以为早已颓败的红莲此时竟还在半开半落间倔强的夏天   颠覆了我预谋的诗篇看着一个个幻想的破灭', N'<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	仿佛是天神无意间错乱了时节
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	夏花还未凋谢 &nbsp;&nbsp;秋天的花早已盛放
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	忙晕了蜜蜂 &nbsp;&nbsp;&nbsp;蝴蝶依旧痴情
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	原以为早已颓败的红莲
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	此时竟还在半开半落间
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	倔强的夏天 &nbsp;&nbsp;颠覆了我预谋的诗篇
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	看着一个个幻想的破灭 &nbsp;&nbsp;
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	外面的世界并不如我的预料
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	当初还不舍夏天的离开
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	如今却怨起迟来的秋天
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	连心中的一抹枫红 &nbsp;&nbsp;终究成了空念
</p>', 99, 56, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A0F001586604 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (92, 3, 26, N'', N'就是，爱这阳光明媚的模样。', N'', N'/upload/201210/20/201210202236451044.jpg', N'', N'', N'', N'阳光明媚的样子，总会让人感到愉悦。之前总是觉得秋天是凄凉的，却没发现也有如此绚烂的色彩。此时，还不是那光秃秃的树干，还不是让人瑟瑟发抖的寒风，还不是缩头缩颈的行人。我喜欢的，就是如此自娱自乐的生活。总有人问我怎么摄影之类的问题，其实我真的不懂，学校的摄…', N'<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">&nbsp; &nbsp; &nbsp; &nbsp; 阳光明媚的样子，总会让人感到愉悦。之前总是觉得秋天是凄凉的，却没发现也有如此绚烂的色彩。此时，还不是那光秃秃的树干，还不是让人瑟瑟发抖的寒风，还不是缩头缩颈的行人。我喜欢的，就是如此自娱自乐的生活。总有人问我怎么摄影之类的问题，其实我真的不懂，学校的摄影比赛我也不知道是怎么蒙到三等奖的！用最简单的话来说，就是把喜欢的一切都记录下来，之后再去看，就知道哪个拍的好哪个坏。不过，都是在记录生活，我都喜欢。拍照的态度和生活的相似，经历过了，才能体会到酸甜苦辣人生百态。</span>', 99, 69, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A0F00158D558 AS DateTime), CAST(0x0000A46900F3D707 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (93, 3, 28, N'', N'你不知道，不是所有的南方都叫温暖。', N'', N'/upload/201210/20/201210202240309222.jpg', N'', N'', N'', N'阳光亲吻过的落叶 卷起光阴里的轻叹 一枚枚舒展，如同生命前行的脚印   顺着金色的方向 用心聆听，滴落的旋律 正擦拭发烫的季节   此刻,寂静的栅栏 围住不小心浮起来的小情绪 当我捧起一枚落叶 仿佛握住远去的时光  再次返回梦开始的地方 一场辽阔的爱 安静得像远方的思念', N'<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">阳光亲吻过的落叶</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">卷起光阴里的轻叹</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">一枚枚舒展，如同生命前行的脚印</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;"><span style="font-family:&quot;&quot;;">&nbsp;</span></span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">顺着金色的方向</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">用心聆听，滴落的旋律</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">正擦拭发烫的季节</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;"><span style="font-family:&quot;&quot;;">&nbsp;</span></span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">此刻,寂静的栅栏</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">围住不小心浮起来的小情绪</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">当我捧起一枚落叶</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">仿佛握住远去的时光</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	&nbsp;
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">再次返回梦开始的地方</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">一场辽阔的爱</span></b> 
</p>
<p style="text-align:left;color:#333333;font-family:&quot;font-size:13px;background-color:#FFFFFF;">
	<b><span style="color:#555555;font-family:宋体;">安静得像远方的思念</span></b> 
</p>', 99, 9, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F0015990D8 AS DateTime), CAST(0x0000A2900043C207 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (94, 3, 26, N'', N'喜欢你——温柔的鱼', N'', N'/upload/201210/20/201210202232163549.jpg', N'', N'', N'', N'尘缘从来都如水，罕须泪，何尽一生情？莫多情，情伤己。', N'<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	&nbsp;One day someone will walk into your life, then you realize love was always worth waiting for！
</p>
<p style="border-width:0px;padding:0px;text-align:left;color:#333333;line-height:21px;clear:both;font-family:&quot;Microsoft Yahei&quot;, STHeiti, SimSun, Arail, Verdana, Helvetica, sans-serif;font-size:13px;margin-top:6px;margin-bottom:0px;white-space:normal;position:relative;overflow-x:hidden;overflow-y:hidden;outline-width:0px;background-color:#FFFFFF;border-image:initial;">
	&nbsp;&nbsp;<wbr>&nbsp;<wbr>&nbsp;<wbr>&nbsp;尘缘从来都如水，罕须泪，何尽一生情？莫多情，情伤己。
</p>', 99, 229, 0, N'', 0, 0, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A0F00159F6CC AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (95, 3, 28, N'', N'少女物语--梦瑶.', N'', N'/upload/201210/20/201210202227157663.jpg', N'', N'', N'', N'我一生渴望把你收藏好，妥善安放，细心保存，免你惊，免你苦，免你四下流离，免你无枝可依。要记得，我在，我一直在，永不离开。', N'<span style="color:#333333;line-height:21px;font-family:&quot;font-size:13px;background-color:#FFFFFF;">我一生渴望把你收藏好，妥善安放，细心保存，免你惊，免你苦，免你四下流离，免你无枝可依。要记得，我在，我一直在，永不离开。</span>', 99, 308, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F0015A5DEC AS DateTime), CAST(0x0000A46900D06489 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (96, 3, 28, N'', N'明媚', N'', N'/upload/201210/20/201210202226228040.jpg', N'', N'', N'', N'灵魂缺失的伤口、连泪都不知道为谁而流。我倔强的不愿屈服，换来的却也只是伤痕累累。为了等你，我错过了等我的人。一地的凄凉、写满了你赐予的悲伤。我感动天感动地，却感动不了你。', N'<p>
	灵魂缺失的伤口、连泪都不知道为谁而流。
</p>
<p>
	我倔强的不愿屈服，换来的却也只是伤痕累累。
</p>
<p>
	为了等你，我错过了等我的人。
</p>
<p>
	一地的凄凉、写满了你赐予的悲伤。
</p>
<p>
	我感动天感动地，却感动不了你。
</p>
<p>
	<br />
</p>', 99, 16, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F0015AD0C4 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (97, 3, 28, N'', N'我的新娘', N'', N'/upload/201210/20/201210202224582044.jpg', N'', N'', N'', N'我想有一天和你去旅行。去那没有去过的地方，没有行李，没有背包，不带电脑更不要手机，走一个地方停一个地', N'<span style="white-space:nowrap;">我想有一天和你去旅行。去那没有去过的地方，没有行李，没有背包，不带电脑更不要手机，走一个地方停一个地</span>', 99, 20, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A0F0015B646C AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (107, 1, 33, N'', N'技术宅拯救世界：用纸糊一辆自行车', N'', N'', N'', N'', N'', N'你见过纸糊的自行车吗？来自以色列的工程师兼自行车爱好者伊扎尔加夫尼（Izhar Gafni）就糊出了一辆。这辆自行车除了车胎和链条等配件材料之外完全由回收利用的硬纸板制成，并且成本仅需 12 美元。有了这种环保廉价的自行车，都市人群又多了一种节能减排的出行方式。同时，该自…', N'<p style="color:#33383D;font-family:''Microsoft YaHei'';font-size:13px;background-color:#FFFFFF;">
	&nbsp; 你见过纸糊的自行车吗？来自以色列的工程师兼自行车爱好者伊扎尔·加夫尼（Izhar Gafni）就糊出了一辆。这辆自行车除了车胎和链条等配件材料之外完全由回收利用的硬纸板制成，并且成本仅需 12 美元。有了这种环保廉价的自行车，都市人群又多了一种节能减排的出行方式。同时，该自行车在收入较低的发展中国家将大有市场。
</p>
<p style="color:#33383D;font-family:''Microsoft YaHei'';font-size:13px;text-align:center;background-color:#FFFFFF;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121019_210309_409.png" /> 
</p>
<p style="color:#33383D;font-family:''Microsoft YaHei'';font-size:13px;background-color:#FFFFFF;">
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;伊扎尔最初的创意来自于他听说有人造出了一艘纸质的独木舟，他也由此萌生出制造纸质自行车的念头。尽管“专家”们极力劝告他放弃自己的“痴心妄想”，但伊扎尔在妻子的鼓励下还是选择了将想法付诸实践。为了造出成本低廉、质量可靠且适合日常使用的纸质自行车，伊扎尔花了整整三年来实验他的各个模型，终于在最近取得了成功。
</p>
<p style="color:#33383D;font-family:''Microsoft YaHei'';font-size:13px;background-color:#FFFFFF;">
	纸质自行车的制造流程并不简单。首先，伊扎尔要将硬纸板被裁减为特定的形状，之后将纸板折叠、粘合、挤压，制成具备特定强度的自行车部件。之后，伊扎尔使用自己钻研出的独门秘方再次处理这些部件，使其拥有更高的强度。最后，伊扎尔给每个部件刷上松香进行防水处理，再和组装普通自行车一样把每个部件组装起来。
</p>
<p style="color:#33383D;font-family:''Microsoft YaHei'';font-size:13px;background-color:#FFFFFF;">
	通过下面这个视频，我们可以了解一下纸质自行车是怎样诞生的。
</p>
<p style="color:#33383D;font-family:''Microsoft YaHei'';font-size:13px;background-color:#FFFFFF;">
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;伊扎尔研发的纸质自行车仅有9公斤重，而同类型的自行车通常都有14公斤。虽然是纸质的，但此自行车不仅防水防潮，还能承载高达220公斤的重量。该自行车使用十分方便，无需任何调试，任何会骑自行车的人都能瞬间上手。而由二手车胎和二手汽车同步齿带打造的车胎和链条也保证了低廉的成本和可靠的质量。
</p>
<p style="color:#33383D;font-family:''Microsoft YaHei'';font-size:13px;background-color:#FFFFFF;">
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;伊扎尔如今还在精益求精地优化纸质自行车的工艺流程，他估计成品纸质自行车的市场售价应该为20美元。20美元的售价在发展中国家非常有竞争力，尤其是这样一辆外观拉轰质量靠谱的环保自行车。对于发达地区的自行车爱好者而言，有了20美元一辆的自行车，大家就不用再担心自行车被盗的问题了。
</p>
<p style="color:#33383D;font-family:''Microsoft YaHei'';font-size:13px;background-color:#FFFFFF;">
	&nbsp; &nbsp; &nbsp; &nbsp;伊扎尔表示，未来他将推出成人版和儿童版两种规格的纸质自行车，而成人版的纸质自行车上还将安装一个电动马达，使其华丽丽地升级为纸质电动自行车。
</p>
<p style="color:#33383D;font-family:''Microsoft YaHei'';font-size:13px;text-align:center;background-color:#FFFFFF;">
	<img src="http://img.ithome.com/newsuploadfiles/2012/10/20121019_210309_497.png" /> 
</p>
<p style="color:#33383D;font-family:''Microsoft YaHei'';font-size:13px;background-color:#FFFFFF;">
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;如果纸质自行车上市，你会去买一辆来试试吗？
</p>', 99, 0, 0, N'', 0, 0, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A468013010A0 AS DateTime), CAST(0x0000A469012B06B3 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (108, 1, 33, N'', N'Surface英国/加拿大也火爆 但微软喜忧参半', N'', N'', N'', N'', N'', N'在加拿大和英国，Surface同样十分火爆，当前，两国的微软在线商店上都无法再预订到不含Touch Cover的32GB版Surface了。        不含Touch Cover的32GB版Surface在加拿大的预售价为519美元，英国为399英镑。        微软当前并未公开透露已经有多少台Surface被预订，但是从当前…', N'<img src="/upload/201503/27/201503271853286929.jpg" alt="" /> 
<p>
	&nbsp; 在加拿大和英国，Surface同样十分火爆，当前，两国的微软在线商店上都无法再预订到不含Touch Cover的32GB版Surface了。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;不含Touch Cover的32GB版Surface在加拿大的预售价为519美元，英国为399英镑。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;微软当前并未公开透露已经有多少台Surface被预订，但是从当前的情形来看，32GB版Surface更受欢迎，尤其是不带Touch Cover的。这一结果一定是让微软喜忧参半。
</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;自开始推广Surface以来，Touch Cover一直是微软宣传的重中之重，Touch Cover是微软专为Surface研发的外置触摸虚拟键盘，同时兼具保护套作用，是微软的创新产品。微软一直希望消费者能够喜欢它，但是，显然，Touch Cover那高昂的售价让大家望而却步。在美国，不含Touch Cover的32GB版Surface价格比含Cover的便宜100美元，在我国，不含Touch Cover的32GB版Surface价格则低出800元。
</p>
<img src="http://192.168.0.101:802/editor/plugins/emoticons/images/10.gif" border="0" alt="" /> 
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>', 99, 0, 0, N'', 0, 0, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A468013041D8 AS DateTime), CAST(0x0000A469012AAE19 AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (109, 8, 37, N'lianxiwomen', N'联系我们', N'', N'', N'', N'', N'', N'wwwwwwwwwwwwwfd大款 震夺', N'wwwwwwwwwwwwwfd大款 震夺', 99, 0, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A46900F785D5 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (110, 9, 38, N'', N'产品色母料', N'', N'/upload/201503/28/201503281522135687.jpg', N'', N'', N'', N'12123131321313213131', N'12123131321313213131', 99, 0, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A46900FD131C AS DateTime), CAST(0x0000A46900FD5B9A AS DateTime))
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (111, 9, 38, N'', N'eerr', N'', N'/upload/201503/28/201503281743034215.jpg', N'', N'', N'', N'eerrrrwrer', N'eerrrrwrer', 99, 0, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A469012400E1 AS DateTime), NULL)
INSERT [dbo].[dt_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (112, 10, 39, N'test', N'公司简介英文', N'', N'', N'', N'', N'', N'eeeeee', N'eeeeee', 99, 0, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A46B01896DC5 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[dt_article] OFF
/****** Object:  Table [dbo].[dt_article_comment]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NULL,
	[article_id] [int] NULL,
	[parent_id] [int] NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[user_ip] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[is_lock] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[is_reply] [tinyint] NULL,
	[reply_content] [ntext] NULL,
	[reply_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_COMMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父评论ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发表时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已答复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'is_reply'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'答复内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'reply_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'reply_time'
GO
/****** Object:  Table [dbo].[dt_article_category]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[parent_id] [int] NULL,
	[class_list] [nvarchar](500) NULL,
	[class_layer] [int] NULL,
	[sort_id] [int] NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
 CONSTRAINT [PK_DT_ARTICLE_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID列表(逗号分隔开)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'class_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'class_layer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL跳转地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关健字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
SET IDENTITY_INSERT [dbo].[dt_article_category] ON
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (2, 2, N'手机数码', N'', 0, N',2,', 1, 99, N'', N'', N'', N'手机数码', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (11, 2, N'智能手机', N'', 2, N',2,11,', 2, 99, N'', N'', N'', N'手机通讯', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (12, 2, N'数码相机', N'', 2, N',2,12,', 2, 100, N'', N'', N'', N'数码相机', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (13, 2, N'存储卡', N'', 2, N',2,13,', 2, 101, N'', N'', N'', N'存储卡', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (14, 2, N'电脑办公', N'', 0, N',14,', 1, 100, N'', N'', N'', N'电脑办公', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (15, 2, N'笔记本', N'', 14, N',14,15,', 2, 99, N'', N'', N'', N'笔记本', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (16, 2, N'超极本', N'', 14, N',14,16,', 2, 100, N'', N'', N'', N'超极本', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (17, 2, N'平板电脑', N'', 14, N',14,17,', 2, 101, N'', N'', N'', N'平板电脑', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (18, 2, N'外设产品', N'', 14, N',14,18,', 2, 102, N'', N'', N'', N'外设产品', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (19, 2, N'家用电器', N'', 0, N',19,', 1, 101, N'', N'', N'', N'家用电器', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (20, 2, N'平板电视', N'', 19, N',19,20,', 2, 99, N'', N'', N'', N'平板电视', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (21, 2, N'空调', N'', 19, N',19,21,', 2, 101, N'', N'', N'', N'空调', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (22, 2, N'冰箱', N'', 19, N',19,22,', 2, 102, N'', N'', N'', N'冰箱', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (23, 2, N'洗衣机', N'', 19, N',19,23,', 2, 103, N'', N'', N'', N'洗衣机', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (24, 2, N'烟机/灶具', N'', 19, N',19,24,', 2, 104, N'', N'', N'', N'烟机/灶具', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (25, 3, N'塑料透明母料', N'suliaotoumingmuliao', 0, N',25,', 1, 99, N'', N'', N'', N'塑料透明母料', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (26, 3, N'塑料透明填充母料', N'suliaotoumingtianchongmuliao', 0, N',26,', 1, 100, N'', N'', N'', N'塑料透明填充母料', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (27, 3, N'塑料消泡料', N'suliaoxiaopaoliao', 0, N',27,', 1, 101, N'', N'', N'', N'塑料消泡料', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (28, 3, N'塑料降解母料', N'suliaojiangjiemuliao', 0, N',28,', 1, 102, N'', N'', N'', N'塑料降解母料', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (29, 3, N'塑料填充母料', N'suliaotianchongmuliao', 0, N',29,', 1, 103, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (30, 4, N'图标素材', N'', 0, N',30,', 1, 99, N'', N'', N'', N'图标素材', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (31, 4, N'jquery插件', N'', 0, N',31,', 1, 99, N'', N'', N'', N'jquery插件', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (32, 5, N'公司介绍', N'', 0, N',32,', 1, 99, N'', N'', N'', N'公司介绍', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (33, 1, N'公司动态', N'gongsidongtai', 0, N',33,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (34, 6, N'公司简介', N'gongsijianjie', 0, N',34,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (35, 3, N'塑料色母料', N'suliaosemuliao', 0, N',35,', 1, 99, N'', N'', N'', N'塑料色母料', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (36, 3, N'塑料改性母料', N'suliaogaixingmuliao', 0, N',36,', 1, 99, N'', N'', N'', N'塑料改性母料', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (37, 8, N'联系我们', N'lianxiwomen', 0, N',37,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (38, 9, N'外贸', N'waimao', 0, N',38,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[dt_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (39, 10, N'公司简介英文', N'gongsijianjieyingwen', 0, N',39,', 1, 99, N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[dt_article_category] OFF
/****** Object:  Table [dbo].[dt_article_attribute_value]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_attribute_value](
	[article_id] [int] NOT NULL,
	[sub_title] [nvarchar](255) NULL,
	[source] [nvarchar](100) NULL,
	[author] [nvarchar](50) NULL,
	[goods_no] [nvarchar](100) NULL,
	[stock_quantity] [int] NULL,
	[market_price] [decimal](9, 2) NULL,
	[sell_price] [decimal](9, 2) NULL,
	[point] [int] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTRIBUTE_VALUE] PRIMARY KEY CLUSTERED 
(
	[article_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'sub_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'author'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品货号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'goods_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'stock_quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'市场价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'market_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'sell_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value'
GO
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (3, N'', N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (4, N'', N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (39, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (43, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (44, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (45, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (46, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (47, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (48, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (49, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (50, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (51, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (52, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (53, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (54, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (55, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (56, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (57, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (60, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (78, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (79, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (80, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (81, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (82, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (83, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (84, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (85, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (86, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (87, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (88, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (89, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (90, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (91, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (92, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (93, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (94, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (95, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (96, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (97, N'', N'本站', N'管理员', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (107, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (108, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (109, NULL, N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (110, NULL, N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (111, NULL, N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (112, NULL, N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
/****** Object:  Table [dbo].[dt_order_goods]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_order_goods](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[goods_id] [int] NULL,
	[goods_title] [nvarchar](100) NULL,
	[goods_price] [decimal](9, 2) NULL,
	[real_price] [decimal](9, 2) NULL,
	[quantity] [int] NULL,
	[point] [int] NULL,
 CONSTRAINT [PK_DT_ORDER_GOODS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'order_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'real_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订购数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分,正数赠送|负数消费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单商品表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods'
GO
/****** Object:  Table [dbo].[dt_manager]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NOT NULL,
	[role_type] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[salt] [nvarchar](20) NULL,
	[real_name] [nvarchar](50) NULL,
	[telephone] [nvarchar](30) NULL,
	[email] [nvarchar](30) NULL,
	[is_lock] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_MANAGER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员类型1超管2系管' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'role_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6位随机字符串,加密用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'salt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'real_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'telephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager'
GO
SET IDENTITY_INSERT [dbo].[dt_manager] ON
INSERT [dbo].[dt_manager] ([id], [role_id], [role_type], [user_name], [password], [salt], [real_name], [telephone], [email], [is_lock], [add_time]) VALUES (1, 1, 1, N'admin', N'BB59946C93C0DEE8082F292B3A0FC7FF', N'28LH48', N'超级管理员', N'13800138000', N'info@dtcms.net', 0, CAST(0x0000A28A001F33A4 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_manager] OFF
/****** Object:  Table [dbo].[dt_channel]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dt_channel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[name] [varchar](50) NULL,
	[title] [varchar](100) NULL,
	[is_albums] [tinyint] NULL,
	[is_attach] [tinyint] NULL,
	[is_group_price] [tinyint] NULL,
	[page_size] [int] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_DT_CHANNEL] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'category_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启相册功能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'is_albums'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启附件功能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'is_attach'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启会员组价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'is_group_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每页显示数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'page_size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统频道表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel'
GO
SET IDENTITY_INSERT [dbo].[dt_channel] ON
INSERT [dbo].[dt_channel] ([id], [category_id], [name], [title], [is_albums], [is_attach], [is_group_price], [page_size], [sort_id]) VALUES (1, 1, N'news', N'公司动态', 0, 0, 0, 1, 99)
INSERT [dbo].[dt_channel] ([id], [category_id], [name], [title], [is_albums], [is_attach], [is_group_price], [page_size], [sort_id]) VALUES (3, 1, N'product', N'产品世界', 1, 0, 0, 2, 101)
INSERT [dbo].[dt_channel] ([id], [category_id], [name], [title], [is_albums], [is_attach], [is_group_price], [page_size], [sort_id]) VALUES (5, 1, N'content', N'公司简介', 0, 0, 0, 12, 103)
INSERT [dbo].[dt_channel] ([id], [category_id], [name], [title], [is_albums], [is_attach], [is_group_price], [page_size], [sort_id]) VALUES (8, 1, N'lianxiwomen', N'联系我们', 0, 0, 0, 10, 99)
INSERT [dbo].[dt_channel] ([id], [category_id], [name], [title], [is_albums], [is_attach], [is_group_price], [page_size], [sort_id]) VALUES (9, 1, N'waimao', N'外贸', 1, 0, 0, 10, 99)
INSERT [dbo].[dt_channel] ([id], [category_id], [name], [title], [is_albums], [is_attach], [is_group_price], [page_size], [sort_id]) VALUES (10, 1, N'gongsijianjieyingwen', N'公司简介英文', 0, 0, 0, 10, 99)
SET IDENTITY_INSERT [dbo].[dt_channel] OFF
/****** Object:  Table [dbo].[dt_users]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NOT NULL,
	[user_name] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[salt] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[nick_name] [nvarchar](100) NULL,
	[avatar] [nvarchar](255) NULL,
	[sex] [nvarchar](20) NULL,
	[birthday] [datetime] NULL,
	[telphone] [nvarchar](50) NULL,
	[mobile] [nvarchar](20) NULL,
	[qq] [nvarchar](30) NULL,
	[address] [nvarchar](255) NULL,
	[safe_question] [nvarchar](255) NULL,
	[safe_answer] [nvarchar](255) NULL,
	[amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[exp] [int] NULL,
	[status] [tinyint] NULL,
	[reg_time] [datetime] NULL,
	[reg_ip] [nvarchar](30) NULL,
 CONSTRAINT [PK_DT_USERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'group_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6位随机字符串,加密用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'salt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'nick_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'avatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'qq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安全问题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'safe_question'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问题答案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'safe_answer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预存款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经验值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'exp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户状态,0正常,1待验证,2待审核,3锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'reg_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'reg_ip'
GO
/****** Object:  Table [dbo].[dt_manager_role_value]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_role_value](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[nav_name] [nvarchar](100) NULL,
	[action_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_MANAGER_ROLE_VALUE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'nav_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理角色权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value'
GO
/****** Object:  View [dbo].[view_channel_waimao]    Script Date: 06/29/2015 15:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_waimao] as SELECT dt_article.* FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=9
GO
/****** Object:  View [dbo].[view_channel_product]    Script Date: 06/29/2015 15:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_product] as SELECT dt_article.*,dt_article_attribute_value.source,dt_article_attribute_value.author FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=3
GO
/****** Object:  View [dbo].[view_channel_news]    Script Date: 06/29/2015 15:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_news] as SELECT dt_article.*,dt_article_attribute_value.source,dt_article_attribute_value.author FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=1
GO
/****** Object:  View [dbo].[view_channel_lianxiwomen]    Script Date: 06/29/2015 15:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_lianxiwomen] as SELECT dt_article.* FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=8
GO
/****** Object:  View [dbo].[view_channel_gongsijianjieyingwen]    Script Date: 06/29/2015 15:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_gongsijianjieyingwen] as SELECT dt_article.* FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=10
GO
/****** Object:  View [dbo].[view_channel_content]    Script Date: 06/29/2015 15:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_content] as SELECT dt_article.* FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=5
GO
/****** Object:  Table [dbo].[dt_user_login_log]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_login_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[remark] [nvarchar](255) NULL,
	[login_time] [datetime] NULL,
	[login_ip] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_USER_LOGIN_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'login_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'login_ip'
GO
/****** Object:  Table [dbo].[dt_user_code]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_code](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[type] [nvarchar](20) NULL,
	[str_code] [nvarchar](255) NULL,
	[count] [int] NULL,
	[status] [tinyint] NULL,
	[eff_time] [datetime] NOT NULL,
	[add_time] [datetime] NOT NULL,
 CONSTRAINT [PK_DT_USER_CODE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成码类别 password取回密码,register邀请注册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成的字符串' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'str_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0未使用1已使用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'eff_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'add_time'
GO
/****** Object:  Table [dbo].[dt_channel_field]    Script Date: 06/29/2015 15:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_field](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[field_id] [int] NOT NULL,
 CONSTRAINT [PK_DT_CHANNEL_FIELD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field', @level2type=N'COLUMN',@level2name=N'field_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field'
GO
SET IDENTITY_INSERT [dbo].[dt_channel_field] ON
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (1, 1, 2)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (2, 1, 3)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (9, 3, 2)
INSERT [dbo].[dt_channel_field] ([id], [channel_id], [field_id]) VALUES (10, 3, 3)
SET IDENTITY_INSERT [dbo].[dt_channel_field] OFF
/****** Object:  Default [DF__dt_articl__chann__0697FACD]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_articl__categ__078C1F06]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [category_id]
GO
/****** Object:  Default [DF__dt_articl__call___0880433F]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ('') FOR [call_index]
GO
/****** Object:  Default [DF__dt_articl__link___09746778]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ('') FOR [link_url]
GO
/****** Object:  Default [DF__dt_articl__img_u__0A688BB1]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_articl__seo_t__0B5CAFEA]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ('') FOR [seo_title]
GO
/****** Object:  Default [DF__dt_articl__seo_k__0C50D423]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ('') FOR [seo_keywords]
GO
/****** Object:  Default [DF__dt_articl__seo_d__0D44F85C]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ('') FOR [seo_description]
GO
/****** Object:  Default [DF__dt_articl__zhaiy__0E391C95]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ('') FOR [zhaiyao]
GO
/****** Object:  Default [DF__dt_articl__sort___0F2D40CE]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_articl__click__10216507]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [click]
GO
/****** Object:  Default [DF__dt_articl__statu__11158940]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_articl__group__1209AD79]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ('') FOR [groupids_view]
GO
/****** Object:  Default [DF__dt_articl__vote___12FDD1B2]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [vote_id]
GO
/****** Object:  Default [DF__dt_articl__is_ms__13F1F5EB]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [is_msg]
GO
/****** Object:  Default [DF__dt_articl__is_to__14E61A24]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [is_top]
GO
/****** Object:  Default [DF__dt_articl__is_re__15DA3E5D]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_articl__is_ho__16CE6296]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [is_hot]
GO
/****** Object:  Default [DF__dt_articl__is_sl__17C286CF]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [is_slide]
GO
/****** Object:  Default [DF__dt_articl__is_sy__18B6AB08]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_articl__add_t__19AACF41]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__artic__1C873BEC]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_articl__thumb__1D7B6025]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  DEFAULT ('') FOR [thumb_path]
GO
/****** Object:  Default [DF__dt_articl__origi__1E6F845E]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  DEFAULT ('') FOR [original_path]
GO
/****** Object:  Default [DF__dt_articl__remar__1F63A897]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_articl__add_t__2057CCD0]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__artic__2334397B]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_articl__file___24285DB4]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  DEFAULT ('') FOR [file_name]
GO
/****** Object:  Default [DF__dt_articl__file___251C81ED]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  DEFAULT ('') FOR [file_path]
GO
/****** Object:  Default [DF__dt_articl__file___2610A626]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  DEFAULT ((0)) FOR [file_size]
GO
/****** Object:  Default [DF__dt_articl__file___2704CA5F]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  DEFAULT ('') FOR [file_ext]
GO
/****** Object:  Default [DF__dt_articl__down___27F8EE98]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  DEFAULT ((0)) FOR [down_num]
GO
/****** Object:  Default [DF__dt_articl__point__28ED12D1]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_articl__add_t__29E1370A]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__title__1EF99443]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_articl__data___1FEDB87C]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ((0)) FOR [data_length]
GO
/****** Object:  Default [DF__dt_articl__data___20E1DCB5]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ((0)) FOR [data_place]
GO
/****** Object:  Default [DF__dt_articl__item___21D600EE]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ('') FOR [item_option]
GO
/****** Object:  Default [DF__dt_articl__defau__22CA2527]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ('') FOR [default_value]
GO
/****** Object:  Default [DF__dt_articl__is_re__23BE4960]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ((0)) FOR [is_required]
GO
/****** Object:  Default [DF__dt_articl__is_pa__24B26D99]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ((0)) FOR [is_password]
GO
/****** Object:  Default [DF__dt_articl__is_ht__25A691D2]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ((0)) FOR [is_html]
GO
/****** Object:  Default [DF__dt_articl__edito__269AB60B]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ((0)) FOR [editor_type]
GO
/****** Object:  Default [DF__dt_articl__valid__278EDA44]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ('') FOR [valid_tip_msg]
GO
/****** Object:  Default [DF__dt_articl__valid__2882FE7D]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ('') FOR [valid_error_msg]
GO
/****** Object:  Default [DF__dt_articl__valid__297722B6]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ('') FOR [valid_pattern]
GO
/****** Object:  Default [DF__dt_articl__sort___2A6B46EF]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_articl__is_sy__2B5F6B28]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_articl__sourc__3BFFE745]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  DEFAULT ('') FOR [source]
GO
/****** Object:  Default [DF__dt_articl__autho__3CF40B7E]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  DEFAULT ('') FOR [author]
GO
/****** Object:  Default [DF__dt_articl__goods__3DE82FB7]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  DEFAULT ('') FOR [goods_no]
GO
/****** Object:  Default [DF__dt_articl__stock__3EDC53F0]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  DEFAULT ((0)) FOR [stock_quantity]
GO
/****** Object:  Default [DF__dt_articl__marke__3FD07829]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  DEFAULT ((0)) FOR [market_price]
GO
/****** Object:  Default [DF__dt_articl__sell___40C49C62]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  DEFAULT ((0)) FOR [sell_price]
GO
/****** Object:  Default [DF__dt_articl__point__41B8C09B]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_articl__call___4589517F]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  DEFAULT ('') FOR [call_index]
GO
/****** Object:  Default [DF__dt_articl__paren__467D75B8]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__dt_articl__class__477199F1]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  DEFAULT ((0)) FOR [class_layer]
GO
/****** Object:  Default [DF__dt_articl__sort___4865BE2A]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_articl__link___4959E263]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  DEFAULT ('') FOR [link_url]
GO
/****** Object:  Default [DF__dt_articl__img_u__4A4E069C]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_articl__seo_t__4B422AD5]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  DEFAULT ('') FOR [seo_title]
GO
/****** Object:  Default [DF__dt_articl__seo_k__4C364F0E]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  DEFAULT ('') FOR [seo_keywords]
GO
/****** Object:  Default [DF__dt_articl__seo_d__4D2A7347]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  DEFAULT ('') FOR [seo_description]
GO
/****** Object:  Default [DF__dt_articl__chann__5006DFF2]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_articl__artic__50FB042B]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_articl__paren__51EF2864]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__dt_articl__user___52E34C9D]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__dt_articl__user___53D770D6]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__dt_articl__is_lo__54CB950F]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_articl__add_t__55BFB948]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__is_re__56B3DD81]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  DEFAULT ((0)) FOR [is_reply]
GO
/****** Object:  Default [DF__dt_channe__categ__59904A2C]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_channel] ADD  DEFAULT ((0)) FOR [category_id]
GO
/****** Object:  Default [DF__dt_channel__name__5A846E65]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_channel] ADD  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__dt_channe__title__5B78929E]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_channel] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_channe__is_al__5C6CB6D7]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_channel] ADD  DEFAULT ((0)) FOR [is_albums]
GO
/****** Object:  Default [DF__dt_channe__is_at__5D60DB10]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_channel] ADD  DEFAULT ((0)) FOR [is_attach]
GO
/****** Object:  Default [DF__dt_channe__is_gr__5E54FF49]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_channel] ADD  DEFAULT ((0)) FOR [is_group_price]
GO
/****** Object:  Default [DF__dt_channe__page___5F492382]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_channel] ADD  DEFAULT ((0)) FOR [page_size]
GO
/****** Object:  Default [DF__dt_channe__sort___603D47BB]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_channel] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_channe__title__6319B466]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_channe__build__640DD89F]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  DEFAULT ('') FOR [build_path]
GO
/****** Object:  Default [DF__dt_channe__templ__6501FCD8]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  DEFAULT ('') FOR [templet_path]
GO
/****** Object:  Default [DF__dt_channe__domai__65F62111]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  DEFAULT ('') FOR [domain]
GO
/****** Object:  Default [DF__dt_channe__is_de__66EA454A]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  DEFAULT ((0)) FOR [is_default]
GO
/****** Object:  Default [DF__dt_channe__sort___67DE6983]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_expres__expre__6CA31EA0]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_express] ADD  DEFAULT ('') FOR [express_code]
GO
/****** Object:  Default [DF__dt_expres__expre__6D9742D9]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_express] ADD  DEFAULT ((0)) FOR [express_fee]
GO
/****** Object:  Default [DF__dt_expres__websi__6E8B6712]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_express] ADD  DEFAULT ('') FOR [website]
GO
/****** Object:  Default [DF__dt_expres__remar__6F7F8B4B]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_express] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_expres__sort___7073AF84]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_express] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_expres__is_lo__7167D3BD]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_express] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_feedba__add_t__405A880E]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_feedback] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_feedba__reply__414EAC47]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_feedback] ADD  DEFAULT ('') FOR [reply_content]
GO
/****** Object:  Default [DF__dt_feedba__is_lo__4242D080]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_feedback] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_link__is_imag__35DCF99B]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_link] ADD  DEFAULT ((0)) FOR [is_image]
GO
/****** Object:  Default [DF__dt_link__sort_id__36D11DD4]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_link] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_link__is_red__37C5420D]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_link] ADD  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_link__add_tim__38B96646]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_link] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_mail_t__is_sy__74444068]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_mail_template] ADD  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_manage__role___7720AD13]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_manager] ADD  DEFAULT ((2)) FOR [role_type]
GO
/****** Object:  Default [DF__dt_manage__real___7814D14C]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_manager] ADD  DEFAULT ('') FOR [real_name]
GO
/****** Object:  Default [DF__dt_manage__telep__7908F585]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_manager] ADD  DEFAULT ('') FOR [telephone]
GO
/****** Object:  Default [DF__dt_manage__email__79FD19BE]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_manager] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__dt_manage__is_lo__7AF13DF7]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_manager] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_manage__add_t__7BE56230]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_manager] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_manage__add_t__451F3D2B]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_manager_log] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_manage__is_sy__019E3B86]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_manager_role] ADD  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_naviga__nav_t__0FB750B3]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  DEFAULT ('') FOR [nav_type]
GO
/****** Object:  Default [DF__dt_navigat__name__10AB74EC]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__dt_naviga__title__119F9925]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_naviga__sub_t__1293BD5E]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  DEFAULT ('') FOR [sub_title]
GO
/****** Object:  Default [DF__dt_naviga__link___1387E197]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  DEFAULT ('') FOR [link_url]
GO
/****** Object:  Default [DF__dt_naviga__sort___147C05D0]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_naviga__is_lo__15702A09]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_naviga__remar__16644E42]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_naviga__paren__1758727B]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__dt_naviga__class__184C96B4]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  DEFAULT ('') FOR [class_list]
GO
/****** Object:  Default [DF__dt_naviga__class__1940BAED]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  DEFAULT ((1)) FOR [class_layer]
GO
/****** Object:  Default [DF__dt_naviga__chann__1A34DF26]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_naviga__actio__1B29035F]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  DEFAULT ('') FOR [action_type]
GO
/****** Object:  Default [DF__dt_naviga__is_sy__1C1D2798]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_order___goods__15A53433]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  DEFAULT ((0)) FOR [goods_price]
GO
/****** Object:  Default [DF__dt_order___real___1699586C]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  DEFAULT ((0)) FOR [real_price]
GO
/****** Object:  Default [DF__dt_order___quant__178D7CA5]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  DEFAULT ((0)) FOR [quantity]
GO
/****** Object:  Default [DF__dt_order___point__1881A0DE]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_orders__order__1B5E0D89]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ('') FOR [order_no]
GO
/****** Object:  Default [DF__dt_orders__trade__1C5231C2]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ('') FOR [trade_no]
GO
/****** Object:  Default [DF__dt_orders__user___1D4655FB]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__dt_orders__user___1E3A7A34]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__dt_orders__payme__1F2E9E6D]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ((0)) FOR [payment_id]
GO
/****** Object:  Default [DF__dt_orders__payme__2022C2A6]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ((0)) FOR [payment_fee]
GO
/****** Object:  Default [DF__dt_orders__payme__2116E6DF]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ((0)) FOR [payment_status]
GO
/****** Object:  Default [DF__dt_orders__expre__220B0B18]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ((0)) FOR [express_id]
GO
/****** Object:  Default [DF__dt_orders__expre__22FF2F51]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ('') FOR [express_no]
GO
/****** Object:  Default [DF__dt_orders__expre__23F3538A]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ((0)) FOR [express_fee]
GO
/****** Object:  Default [DF__dt_orders__expre__24E777C3]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ((0)) FOR [express_status]
GO
/****** Object:  Default [DF__dt_orders__accep__25DB9BFC]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ('') FOR [accept_name]
GO
/****** Object:  Default [DF__dt_orders__post___26CFC035]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ('') FOR [post_code]
GO
/****** Object:  Default [DF__dt_orders__telph__27C3E46E]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ('') FOR [telphone]
GO
/****** Object:  Default [DF__dt_orders__mobil__28B808A7]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ('') FOR [mobile]
GO
/****** Object:  Default [DF__dt_orders__area__29AC2CE0]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ('') FOR [area]
GO
/****** Object:  Default [DF__dt_orders__addre__2AA05119]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ('') FOR [address]
GO
/****** Object:  Default [DF__dt_orders__messa__2B947552]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ('') FOR [message]
GO
/****** Object:  Default [DF__dt_orders__remar__2C88998B]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_orders__payab__2D7CBDC4]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ((0)) FOR [payable_amount]
GO
/****** Object:  Default [DF__dt_orders__real___2E70E1FD]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ((0)) FOR [real_amount]
GO
/****** Object:  Default [DF__dt_orders__order__2F650636]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ((0)) FOR [order_amount]
GO
/****** Object:  Default [DF__dt_orders__point__30592A6F]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_orders__statu__314D4EA8]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF__dt_orders__add_t__324172E1]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_orders] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_paymen__img_u__351DDF8C]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_payment] ADD  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_payment__type__361203C5]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_payment] ADD  DEFAULT ((1)) FOR [type]
GO
/****** Object:  Default [DF__dt_paymen__pound__370627FE]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_payment] ADD  DEFAULT ((1)) FOR [poundage_type]
GO
/****** Object:  Default [DF__dt_paymen__pound__37FA4C37]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_payment] ADD  DEFAULT ((0)) FOR [poundage_amount]
GO
/****** Object:  Default [DF__dt_paymen__sort___38EE7070]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_payment] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_paymen__is_lo__39E294A9]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_payment] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_sms_te__title__3CBF0154]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_sms_te__call___3DB3258D]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  DEFAULT ('') FOR [call_index]
GO
/****** Object:  Default [DF__dt_sms_te__conte__3EA749C6]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  DEFAULT ('') FOR [content]
GO
/****** Object:  Default [DF__dt_sms_te__is_sy__3F9B6DFF]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_user_a__order__4277DAAA]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  DEFAULT ('') FOR [order_no]
GO
/****** Object:  Default [DF__dt_user_a__payme__436BFEE3]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  DEFAULT ((0)) FOR [payment_id]
GO
/****** Object:  Default [DF__dt_user_a__value__4460231C]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  DEFAULT ((0)) FOR [value]
GO
/****** Object:  Default [DF__dt_user_a__remar__45544755]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_user_a__statu__46486B8E]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_user_a__add_t__473C8FC7]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_c__count__4A18FC72]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_code] ADD  DEFAULT ((0)) FOR [count]
GO
/****** Object:  Default [DF__dt_user_c__statu__4B0D20AB]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_code] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_user_c__add_t__4C0144E4]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_code] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_g__artic__4EDDB18F]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_group_price] ADD  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_user_g__group__4FD1D5C8]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_group_price] ADD  DEFAULT ((0)) FOR [group_id]
GO
/****** Object:  Default [DF__dt_user_g__price__50C5FA01]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_group_price] ADD  DEFAULT ((0)) FOR [price]
GO
/****** Object:  Default [DF__dt_user_g__title__53A266AC]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_user_g__grade__54968AE5]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  DEFAULT ((0)) FOR [grade]
GO
/****** Object:  Default [DF__dt_user_g__upgra__558AAF1E]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  DEFAULT ((0)) FOR [upgrade_exp]
GO
/****** Object:  Default [DF__dt_user_g__amoun__567ED357]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  DEFAULT ((0)) FOR [amount]
GO
/****** Object:  Default [DF__dt_user_g__point__5772F790]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_user_g__is_de__58671BC9]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  DEFAULT ((0)) FOR [is_default]
GO
/****** Object:  Default [DF__dt_user_g__is_up__595B4002]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  DEFAULT ((1)) FOR [is_upgrade]
GO
/****** Object:  Default [DF__dt_user_g__is_lo__5A4F643B]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_user_l__user___5D2BD0E6]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__dt_user_l__remar__5E1FF51F]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_user_l__login__5F141958]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  DEFAULT (getdate()) FOR [login_time]
GO
/****** Object:  Default [DF__dt_user_l__login__60083D91]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  DEFAULT ('') FOR [login_ip]
GO
/****** Object:  Default [DF__dt_user_me__type__62E4AA3C]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_message] ADD  DEFAULT ((1)) FOR [type]
GO
/****** Object:  Default [DF__dt_user_m__is_re__63D8CE75]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_message] ADD  DEFAULT ((0)) FOR [is_read]
GO
/****** Object:  Default [DF__dt_user_m__post___64CCF2AE]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_message] ADD  DEFAULT (getdate()) FOR [post_time]
GO
/****** Object:  Default [DF__dt_user_o__oauth__67A95F59]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_oauth] ADD  DEFAULT ('0') FOR [oauth_name]
GO
/****** Object:  Default [DF__dt_user_o__add_t__689D8392]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_oauth] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_o__title__6B79F03D]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_user_o__img_u__6C6E1476]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_user_o__remar__6D6238AF]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_user_o__sort___6E565CE8]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_user_o__is_lo__6F4A8121]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_user_o__api_p__703EA55A]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  DEFAULT ('') FOR [api_path]
GO
/****** Object:  Default [DF__dt_user_p__add_t__731B1205]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_point_log] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_users__group___75F77EB0]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ((0)) FOR [group_id]
GO
/****** Object:  Default [DF__dt_users__email__76EBA2E9]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__dt_users__nick_n__77DFC722]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('') FOR [nick_name]
GO
/****** Object:  Default [DF__dt_users__avatar__78D3EB5B]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('') FOR [avatar]
GO
/****** Object:  Default [DF__dt_users__sex__79C80F94]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('保密') FOR [sex]
GO
/****** Object:  Default [DF__dt_users__telpho__7ABC33CD]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('') FOR [telphone]
GO
/****** Object:  Default [DF__dt_users__mobile__7BB05806]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('') FOR [mobile]
GO
/****** Object:  Default [DF__dt_users__qq__7CA47C3F]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('') FOR [qq]
GO
/****** Object:  Default [DF__dt_users__safe_q__7D98A078]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('') FOR [safe_question]
GO
/****** Object:  Default [DF__dt_users__safe_a__7E8CC4B1]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('') FOR [safe_answer]
GO
/****** Object:  Default [DF__dt_users__amount__7F80E8EA]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ((0)) FOR [amount]
GO
/****** Object:  Default [DF__dt_users__point__00750D23]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_users__exp__0169315C]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ((0)) FOR [exp]
GO
/****** Object:  Default [DF__dt_users__status__025D5595]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_users__reg_ti__035179CE]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT (getdate()) FOR [reg_time]
GO
/****** Object:  ForeignKey [FK_DT_ARTIC_REFERENCE_DT_ARTIC]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_article_attribute_value]  WITH CHECK ADD  CONSTRAINT [FK_DT_ARTIC_REFERENCE_DT_ARTIC] FOREIGN KEY([article_id])
REFERENCES [dbo].[dt_article] ([id])
GO
ALTER TABLE [dbo].[dt_article_attribute_value] CHECK CONSTRAINT [FK_DT_ARTIC_REFERENCE_DT_ARTIC]
GO
/****** Object:  ForeignKey [FK_DT_CHANN_REFERENCE_DT_CATEGORY]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_channel]  WITH CHECK ADD  CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CATEGORY] FOREIGN KEY([category_id])
REFERENCES [dbo].[dt_channel_category] ([id])
GO
ALTER TABLE [dbo].[dt_channel] CHECK CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CATEGORY]
GO
/****** Object:  ForeignKey [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_channel_field]  WITH CHECK ADD  CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD] FOREIGN KEY([channel_id])
REFERENCES [dbo].[dt_channel] ([id])
GO
ALTER TABLE [dbo].[dt_channel_field] CHECK CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]
GO
/****** Object:  ForeignKey [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_manager]  WITH CHECK ADD  CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE] FOREIGN KEY([role_id])
REFERENCES [dbo].[dt_manager_role] ([id])
GO
ALTER TABLE [dbo].[dt_manager] CHECK CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE]
GO
/****** Object:  ForeignKey [FK_DT_MANAG_REFERENCE_DT_MANAG]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_manager_role_value]  WITH CHECK ADD  CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG] FOREIGN KEY([role_id])
REFERENCES [dbo].[dt_manager_role] ([id])
GO
ALTER TABLE [dbo].[dt_manager_role_value] CHECK CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG]
GO
/****** Object:  ForeignKey [FK_DT_ORDER_REFERENCE_DT_ORDER]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_order_goods]  WITH CHECK ADD  CONSTRAINT [FK_DT_ORDER_REFERENCE_DT_ORDER] FOREIGN KEY([order_id])
REFERENCES [dbo].[dt_orders] ([id])
GO
ALTER TABLE [dbo].[dt_order_goods] CHECK CONSTRAINT [FK_DT_ORDER_REFERENCE_DT_ORDER]
GO
/****** Object:  ForeignKey [FK_DT_USER__REFERENCE_DT_USERS_CODE]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_code]  WITH CHECK ADD  CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_CODE] FOREIGN KEY([user_id])
REFERENCES [dbo].[dt_users] ([id])
GO
ALTER TABLE [dbo].[dt_user_code] CHECK CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_CODE]
GO
/****** Object:  ForeignKey [FK_DT_USER__REFERENCE_DT_USERS_LOG]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_user_login_log]  WITH CHECK ADD  CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_LOG] FOREIGN KEY([user_id])
REFERENCES [dbo].[dt_users] ([id])
GO
ALTER TABLE [dbo].[dt_user_login_log] CHECK CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_LOG]
GO
/****** Object:  ForeignKey [FK_DT_USERS_REFERENCE_DT_USER_]    Script Date: 06/29/2015 15:52:57 ******/
ALTER TABLE [dbo].[dt_users]  WITH CHECK ADD  CONSTRAINT [FK_DT_USERS_REFERENCE_DT_USER_] FOREIGN KEY([group_id])
REFERENCES [dbo].[dt_user_groups] ([id])
GO
ALTER TABLE [dbo].[dt_users] CHECK CONSTRAINT [FK_DT_USERS_REFERENCE_DT_USER_]
GO
