<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Spotlight.ascx.cs" Inherits="DotNetNuke.Modules.UserGroups.Spotlight" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls"%>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.UI.WebControls" Assembly="DotNetNuke.Web" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.UI.WebControls" Assembly="DotNetNuke.Web.Deprecated" %>
<div class="GroupSpotlight">
	<dnn:DnnRotator ID="rrGroup" runat="server" ScrollDuration="2000" FrameDuration="2000" RotatorType="AutomaticAdvance" >
		<ItemTemplate>
			<asp:Literal ID="litSpotlight" runat="server" Text='<%# FormatContent(Convert.ToInt32(DataBinder.Eval(Container.DataItem, "UserGroupID"))) %>' />
		</ItemTemplate>
	</dnn:DnnRotator>
</div>