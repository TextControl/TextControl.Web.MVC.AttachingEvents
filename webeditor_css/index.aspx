<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="webeditor_css.index" %>

<%@ Register assembly="TXTextControl.Web, Version=33.0.1300.500, Culture=neutral, PublicKeyToken=6b83fe9a75cfb638" namespace="TXTextControl.Web" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="textcontrol_styles.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.7.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <%-- This dummy button is hidden --%>
                <asp:Button
                    style="display: none;" 
                    ID="Button1" 
                    runat="server" 
                    OnClick="Button1_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
        

        <cc1:TextControl ID="TextControl1" runat="server" />
    
        <script>
            // attach an event to trigger a post back
            $("#fileMnuItemSave a:first").click(function () {
                __doPostBack('<% Response.Write(Button1.ClientID); %>', '');
                return false;
                        });
        </script>

    </div>
    </form>

</body>
</html>
