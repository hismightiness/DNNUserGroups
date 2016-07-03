<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SendMessage.ascx.cs" Inherits="DotNetNuke.Modules.UserGroups.SendMessage" %>
<%@ Register TagPrefix="dnn" TagName="label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls"%>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.UI.WebControls" Assembly="DotNetNuke.Web" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.UI.WebControls" Assembly="DotNetNuke.Web.Deprecated" %>
<div class="SendMessage">
	<div class="item-wrapper">
		<dnn:label id="dnnlblSendTo" runat="server" controlname="rcbSendTo" suffix=":" CssClass="SubHead" />
		<dnn:DnnComboBox ID="rcbSendTo" runat="server" DataValueField="UserID" Width="254" CssClass="right" />
	</div>
	<div class="item-wrapper">
		<dnn:label id="dnnlblSubject" runat="server" controlname="txtSubject" suffix=":" CssClass="SubHead" />
		<asp:TextBox ID="txtSubject" runat="server" MaxLength="120" CssClass="NormalTextBox right long" />
	</div>
	<div class="item-wrapper">
		<dnn:label id="dnnlblMessage" runat="server" controlname="txtMessage" suffix=":" CssClass="SubHead" />
		<asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" CssClass="NormalTextBox right long narrow" />
	</div>
	<div class="action-btns">
		<asp:LinkButton ID="cmdSendMessage" runat="server" resourcekey="cmdSendMessage" CssClass="CommandButton primary-action" OnClick="CmdSendClick" />
		<asp:LinkButton ID="cmdCancel" runat="server" resourcekey="cmdCancel" CssClass="CommandButton secondary-action" OnClick="CmdCancelClick" />
	</div>
	<div class="messages">
		<asp:Label ID="lblMessage" runat="server" CssClass="NormalRed" />
	</div>
</div>