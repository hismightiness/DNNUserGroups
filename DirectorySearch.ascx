<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DirectorySearch.ascx.cs" Inherits="DotNetNuke.Modules.UserGroups.DirectorySearch" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls"%>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.UI.WebControls" Assembly="DotNetNuke.Web" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.UI.WebControls" Assembly="DotNetNuke.Web.Deprecated" %>
<div class="DirectorySearch">
	<div id="div-filters">
		<div id="divCountry" runat="server" class="left">
			<asp:Label ID="lblCountry" runat="server" resourcekey="lblCountry" CssClass="SubHead" />
			<dnn:DnnComboBox ID="rcbCountry" runat="server" DataTextField="Text" DataValueField="Value" Width="200" AutoPostBack="true" OnSelectedIndexChanged="RcbCountrySelectedIndexChanged" />
		</div>
		<div id="divRegion" runat="server" class="right">
			<asp:Label ID="lblRegion" runat="server" resourcekey="lblRegion" CssClass="SubHead" />
			<dnn:DnnComboBox ID="rcbRegion" runat="server" DataTextField="Text" DataValueField="Value" Width="200" AutoPostBack="true" OnSelectedIndexChanged="RcbRegionSelectedIndexChanged" />
		</div>
		<div id="divLanguage" runat="server" class="right">
			<asp:Label ID="lblLanguage" runat="server" resourcekey="lblLanguage" CssClass="SubHead" />
			<dnn:DnnComboBox ID="rcbLanguage" runat="server" DataTextField="Language" DataValueField="LanguageID" Width="200" AutoPostBack="true" OnSelectedIndexChanged="RcbLanguageSelectedIndexChanged" />
		</div>
	</div>
	<div id="divAdmin" runat="server" class="div-admin">
		<div class="left">
			<asp:Label ID="lblGroupName" runat="server" resourcekey="lblGroupName" CssClass="SubHead" />
			<asp:TextBox ID="txtGroupName" runat="server" MaxLength="50" CssClass="NormalTextBox" Width="166" />
		</div>
		<div class="right">
			<asp:CheckBox ID="chkStatus" runat="server" CssClass="NormalTextBox" resourcekey="chkStatus" />
		</div>
		<div>
			<br /><br />
			<asp:LinkButton ID="cmdSearch" runat="server" CssClass="CommandButton" resourcekey="cmdSearch" OnClick="CmdSearchClick" />
		</div>
	</div>
	<div id="div-grid">
		<dnn:DnnGrid ID="rgUserGroups" runat="server" AutoGenerateColumns="false" GridLines="None" Width="620px" OnItemDataBound="RgUserGroupsItemDataBound" OnItemCommand="RgUserGroupsItemCommand" >
			<ClientSettings AllowColumnsReorder="false" EnableRowHoverStyle="false">
			</ClientSettings>
			<MasterTableView DataKeyNames="UserGroupID,LeaderID,LeaderUsername,LeaderDisplayName" AllowNaturalSort="false">
				<Columns>
					<dnn:DnnGridButtonColumn UniqueName="EditItem" CommandName="EditItem" ButtonType="ImageButton" ImageUrl="~/images/edit.gif" HeaderStyle-Width="26px" ItemStyle-Width="26px" />
					<dnn:DnnGridHyperLinkColumn UniqueName="Name" HeaderText="Name" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" Target="_blank" DataTextField="Name" />
					<dnn:DnnGridBoundColumn UniqueName="City" HeaderText="City" DataField="City" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" />
					<dnn:DnnGridBoundColumn UniqueName="Members" HeaderText="Members" DataField="Members" HeaderStyle-Width="32px" ItemStyle-Width="32px" />
					<dnn:DnnGridHyperLinkColumn UniqueName="Leader" HeaderText="Leader" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" Target="_blank" />
					<dnn:DnnGridHyperLinkColumn UniqueName="Join" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" />
					<dnn:DnnGridCheckBoxColumn UniqueName="Active" HeaderText="Active" DataField="Active"  HeaderStyle-Width="32px" ItemStyle-Width="32px" /> 
				</Columns>
			</MasterTableView>
		</dnn:DnnGrid>
	</div>
	<div class="instructions">
		<asp:Literal ID="litInstructions" runat="server" />
	</div>
	<div class="action-btns">
		<asp:LinkButton ID="cmdAddGroup" runat="server" CssClass="CommandButton" resourcekey="cmdAddGroup" OnClick="CmdAddGroupClick" visible="false" />
		<asp:LinkButton runat="server" ID="cmdMyGroup" CssClass="CommandButton" resourcekey="cmdMyGroup" OnClick="CmdMyGroupClick"  />
	</div>
</div>