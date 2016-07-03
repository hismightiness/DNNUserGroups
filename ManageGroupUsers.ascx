<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ManageGroupUsers.ascx.cs" Inherits="DotNetNuke.Modules.UserGroups.ManageGroupUsers" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls"%>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.UI.WebControls" Assembly="DotNetNuke.Web" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.UI.WebControls" Assembly="DotNetNuke.Web.Deprecated" %>
<div class="ManageGroupUsers">
	<div id="divID" runat="server" visible="false">
		<asp:label id="dnnlblUserGroupID" runat="server" />
		<asp:TextBox ID="txtUserGroupID" runat="server" />
	</div>	
	<div class="item-wrapper">
		<asp:Label ID="lblGroup" runat="server" CssClass="SubHead" resourcekey="lblGroup" />
		<asp:Label ID="lblGroupName" runat="server" CssClass="NormalBold" />
	</div>
	<div class="div-grid">
		<dnn:DnnGrid ID="rgMembers" runat="server" AutoGenerateColumns="false" GridLines="None" Width="600px" OnItemDataBound="RgMembersItemDataBound" OnItemCommand="RgMembersItemCommand" >
			<ClientSettings AllowColumnsReorder="false" EnableRowHoverStyle="false"></ClientSettings>
			<MasterTableView DataKeyNames="UserID,Username,DisplayName,Officer,LeaderID,UserGroupID" AllowNaturalSort="false">
				<Columns>
					<dnn:DnnGridButtonColumn UniqueName="DeleteItem" CommandName="DeleteItem" ButtonType="ImageButton" ImageUrl="~/images/delete.gif" HeaderStyle-Width="26px" ItemStyle-Width="26px" />
					<dnn:DnnGridHyperLinkColumn UniqueName="Username" HeaderText="Username" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" Target="_blank" DataTextField="Username" />
					<dnn:DnnGridBoundColumn UniqueName="DisplayName" HeaderText="DisplayName" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" DataField="DisplayName" />
					<dnn:DnnGridBoundColumn UniqueName="Email" HeaderText="Email" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" DataField="Email" />
					<dnn:DnnGridButtonColumn UniqueName="Officer" CommandName="Officer" HeaderText="Officer" ButtonType="ImageButton" HeaderStyle-Width="35px" ItemStyle-Width="35px" ItemStyle-HorizontalAlign="Center" />
				</Columns>
			</MasterTableView>
		</dnn:DnnGrid>
	</div>
	<div class="action-btns">
		<asp:LinkButton ID="cmdCancel" runat="server" CssClass="CommandButton" resourcekey="cmdCancel" OnClick="CmdCancelClick" />
	</div>
</div>