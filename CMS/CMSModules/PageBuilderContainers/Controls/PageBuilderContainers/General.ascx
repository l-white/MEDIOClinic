<%@ Control Language="C#" AutoEventWireup="true"  Codebehind="General.ascx.cs" Inherits="CMSModules_PageBuilderContainers_Controls_PageBuilderContainers_General" %>
<%@ Register Src="~/CMSModules/Objects/Controls/Locking/ObjectEditPanel.ascx" TagName="ObjectEditPanel"
    TagPrefix="cms" %>
<%@ Register TagPrefix="cms" TagName="CSSStylesEditor" Src="~/CMSFormControls/Layouts/CSSStylesEditor.ascx" %>
<%@ Register TagPrefix="cms" TagName="PageBuilderContainerCode" Src="~/CMSModules/PageBuilderContainers/Controls/PageBuilderContainers/PageBuilderContainerCode.ascx" %>
<cms:CMSUpdatePanel runat="server" ID="pnlUpdate">
    <ContentTemplate>
        <cms:ObjectEditPanel runat="server" ID="editMenuElem" />
    </ContentTemplate>
</cms:CMSUpdatePanel>
<asp:Panel ID="pnlContainer" runat="server" CssClass="PreviewBody">
    <div class="PageContent">
        <cms:MessagesPlaceHolder runat="server" ID="pnlMessagePlaceholder" IsLiveSite="false" />
        <cms:UIForm runat="server" ID="EditForm" ObjectType="cms.PageBuildercontainer" DefaultFieldLayout="TwoColumns">
            <LayoutTemplate>
                <cms:FormField runat="server" ID="fDisplayName" Field="ContainerDisplayName" FormControl="LocalizableTextBox"
                    ResourceString="general.displayname" DisplayColon="true" />
                <cms:FormField runat="server" ID="fName" Field="ContainerName" FormControl="CodeName"
                    ResourceString="general.codename" DisplayColon="true" />
                <div class="form-group">
                    <cms:FormField runat="server" ID="fCode" Field="ContainerTextBefore" ResourceString="Container_Edit.ContainerText"
                        DisplayColon="true" Layout="Inline">
                        <cms:PageBuilderContainerCode runat="server" id="codeElem" />
                    </cms:FormField>
                    <div>
                        <cms:LocalizedLiteral runat="server" ID="ltrInstructions" ResourceString="Container_Edit.ContainerGuide" />
                    </div>
                </div>
                <div class="form-group">
                    <cms:FormField runat="server" ID="fCSS" Field="ContainerCSS" UseFFI="false" Layout="Inline">
                        <cms:CSSStylesEditor runat="server" ID="cssEditor" TwoColumnMode="true" />
                    </cms:FormField>
                </div>
            </LayoutTemplate>
        </cms:UIForm>
    </div>
</asp:Panel>
<asp:HiddenField runat="server" ID="hdnClose" EnableViewState="false" />
