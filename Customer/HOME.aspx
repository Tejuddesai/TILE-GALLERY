<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerPanel.master" AutoEventWireup="true" CodeFile="HOME.aspx.cs" Inherits="Customer_HOME" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


#wowslider-container1 .ws_images{
	position: relative;
	left:0;
	top:0;
	height:100%;
	max-height:500px;
	max-width: 100%;
	vertical-align: top;
	border:none;
	overflow: hidden;
}
#wowslider-container1 .ws_images > ul{
	animation: wsBasic 28s infinite;
	-moz-animation: wsBasic 28s infinite;
	-webkit-animation: wsBasic 28s infinite;
}
#wowslider-container1 .ws_images ul{
	position:relative;
	width: 10000%; 
	height:100%;
	left:0;
	list-style:none;
	margin:0;
	padding:0;
	border-spacing:0;
	overflow: visible;
	/*table-layout:fixed;*/
}
#wowslider-container1 .ws_images ul li{
	position: relative;
	width:1%;
	height:100%;
	line-height:0; /*opera*/
	overflow: hidden;
	float:left;
	/*font-size:0;*/
	padding:0 0 0 0 !important;
	margin:0 0 0 0 !important;
}

	#wowslider-container1 .ws_controls,
	#wowslider-container1 .ws_bullets,
	#wowslider-container1 .ws_thumbs{
		display: none
	}
#wowslider-container1  .ws_bullets {
    bottom: 0px;
	left:50%;
}
#wowslider-container1  .ws_bullets { 
	padding: 3px 0; 
}

#wowslider-container1  .ws_bullets { 
	float: left;
	position:absolute;
	z-index:70;
}

#wowslider-container1  .ws_script{
	display:none;
}

#wowslider-container1  .ws_shadow{
	background-image: url('../engine1/bg.png');
	background-repeat: no-repeat;
	background-size:100%;
	position:absolute;
	z-index: -1;
	left:-0.38%;
	top:-1%;
	width:100.76%;
	height:102%;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0">
    <tr>
        <td>
  
 <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
	<div id="wowslider-container1">
	<div class="ws_images"><ul>
		<li><img src="../data1/images/s2.jpg" alt="" title="" id="wows1_0"/></li>
		<li><img src="../data1/images/s5.jpg" alt="" title="" id="wows1_1"/></li>
		<li>z</li>
		<li><a href="http://wowslider.com/vi"><img src="data1/images/s4.jpg" alt="image slider" title="" id="wows1_3"/></a></li>
		<li><img src="../data1/images/s6.jpg" alt="" title="" id="wows1_4"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title=""><span><img src="../data1/tooltips/s2.jpg" alt=""/>1</span></a>
		<a href="#" title=""><span><img src="../data1/tooltips/s5.jpg" alt=""/>2</span></a>
		<a href="#" title=""><span><img src="../data1/tooltips/s7.jpg" alt=""/>3</span></a>
		<a href="#" title=""><span><img src="../data1/tooltips/s4.jpg" alt=""/>4</span></a>
		<a href="#" title=""><span><img src="../data1/tooltips/s6.jpg" alt=""/>5</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">http://wowslider.net/</a> by WOWSlider.com v8.7</div>
	<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="../engine1/wowslider.js"></script>
	<script type="text/javascript" src="../engine1/script.js"></script>
	<!-- End WOWSlider.com BODY section -->

	<!-- End WOWSlider.com BODY section -->

  
        </td>
    </tr>
    <tr>
        <td>
        </td>
    </tr>
</table>
</asp:Content>

