﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AthleticsAttendanceHistory.aspx.cs" Inherits="UIF.PerformingArts.AthleticsAttendanceHistory" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style12
        {
            position: absolute;
            top: 142px;
            left: 405px;
            z-index: 1;
            width: 592px;
            text-decoration: underline;
        }
        </style>

<style type="text/css"> 
   div { z-index: 9999; } 
</style>

</head>
<body bgcolor="#ff9900">
    <form id="form2" runat="server">
    <div>
    
    </div>
    <p>
        <asp:Label ID="Label3" runat="server" CssClass="style12" Font-Size="22pt" 
            Text="Athletics Student Attendance History" Font-Bold="True" 
            Font-Italic="True"></asp:Label>
    </p>
    <p>
        &nbsp;</p>

    <asp:Panel ID="pnlBackground" runat="server" BackColor="White"  
        style="z-index: 1; left: -12px; top: 1px; position: absolute; height: 133px; width: 1298px" 
        ViewStateMode="Enabled" BorderColor="Black" BorderStyle="Solid" 
        BorderWidth="3px">
        <asp:Label ID="lblUrbanImpact" runat="server" Font-Bold="True" Font-Size="36pt" 
            style="z-index: 1; left: 354px; top: 24px; position: absolute; height: 62px; width: 547px" 
            Text="Urban Impact Foundation"></asp:Label>
    </asp:Panel>

    <asp:Menu ID="MenuBest" runat="server" BackColor="White" BorderColor="Black"  ForeColor="Black"
        BorderWidth="0px" Orientation="Horizontal" 
        style="z-index: 1; left: 214px; top: 98px; position: absolute; height: 37px; width: 947px" 
        MaximumDynamicDisplayLevels="8" StaticEnableDefaultPopOutImage="False" 
        Height="15px" Font-Bold="True" onmenuitemclick="MenuBest_MenuItemClick">

        <DynamicHoverStyle BackColor="White" Font-Bold="False" 
            Font-Strikeout="False" Height="20px" Font-Italic="False" 
            Font-Size="15pt" />
        <DynamicMenuItemStyle ForeColor="Black" ItemSpacing="4px" 
            VerticalPadding="4px" BackColor="#FFD200" />

        <DynamicMenuStyle BackColor="#FFD200" />
        <DynamicSelectedStyle BackColor="#FFD200" VerticalPadding="4px" Width="40px" />

         <DynamicItemTemplate>
             <%# Eval("Text") %>
        </DynamicItemTemplate>

        <StaticHoverStyle BackColor="#FFD200" Font-Bold="True" Font-Italic="True" 
            Font-Size="15pt" Height="20px" />
        <StaticMenuItemStyle BackColor="White" />
        <StaticMenuStyle BackColor="White" />
        <StaticSelectedStyle BackColor="#FFD200" BorderColor="#FFD200" />
    </asp:Menu>          

    <asp:ImageButton ID="imgButton" runat="server"  ImageUrl="~/PerformingArts/Picture1.png"
        style="z-index: 1; left: 25px; top: 13px; position: absolute; height: 114px; width: 172px" 
        onclick="imgButton_Click" />



    <asp:Label ID="lblLastUpdatedBy" runat="server" Enabled="False" 
        style="z-index: 1; left: 975px; top: 22px; position: absolute; height: 76px; width: 173px" 
        Text="LastUpdatedBy: "></asp:Label>
    <p>
        &nbsp;</p>
    <p>
        <asp:DropDownList ID="ddlProgram" runat="server" BackColor="#FFD200" 
            onselectedindexchanged="ddlProgram_SelectedIndexChanged" 
            
            style="z-index: 1; left: 36px; top: 223px; position: absolute; width: 193px; right: 1065px;" 
            AutoPostBack="True" CausesValidation="True">
        </asp:DropDownList>
        <asp:Label ID="lblPrograms" runat="server" 
            style="z-index: 1; left: 39px; top: 244px; position: absolute; height: 20px; width: 167px" 
            Text="Programs" Font-Size="10pt"></asp:Label>
        <asp:Button ID="cmbRetreiveProgram" runat="server" 
            onclick="cmbRetreiveProgram_Click" 
            style="z-index: 1; left: 1049px; top: 348px; position: absolute; height: 39px; width: 141px" 
            Text="Retrieve Program" Visible="False" />
    </p>
    <p>
        <asp:DropDownList ID="ddlProgramSeasonHistory" runat="server" 
            BackColor="#FFD200" 
            style="z-index: 1; left: 742px; top: 213px; position: absolute; width: 179px" 
            Visible="False" 
            onselectedindexchanged="ddlProgramSeasonHistory_SelectedIndexChanged" 
            AutoPostBack="True" CausesValidation="True">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="lblExplain" runat="server" BackColor="#FFD200" 
            BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
            Font-Italic="True" Font-Size="16pt" 
            style="z-index: 1; left: 295px; top: 224px; position: absolute; height: 74px; width: 345px" 
            Text="You MUST select a ProgramSeason in order to retrieve a Report.  Thank you!"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:Button ID="cmbCallingListReport" runat="server" 
        onclick="cmbCallingListReport_Click" 
        style="z-index: 1; left: 1046px; top: 301px; position: absolute; height: 35px; width: 138px" 
        Text="Calling List Report" Enabled="False" Visible="False" />
    <p>
        <asp:Button ID="cmbReport" runat="server" onclick="cmbReport_Click" 
            style="z-index: 1; left: 724px; top: 241px; position: absolute; height: 52px; width: 205px; bottom: 209px;" 
            Text="Retrieve Attendance Report" Enabled="False" />
        <asp:DropDownList ID="ddlProgramSection" runat="server" AutoPostBack="True" 
            BackColor="#FFD200" CausesValidation="True" 
            onselectedindexchanged="ddlProgramSection_SelectedIndexChanged" 
            style="z-index: 1; left: 36px; top: 270px; position: absolute; width: 193px" 
            Visible="False">
        </asp:DropDownList>
        <asp:Label ID="lblProgramSections" runat="server" 
            style="z-index: 1; left: 38px; top: 296px; position: absolute; height: 19px; width: 144px" 
            Text="Program Sections" Visible="False" Font-Size="10pt"></asp:Label>
        <asp:Button ID="cmbReset" runat="server" onclick="cmbReset_Click" 
            style="z-index: 1; left: 1119px; top: 174px; position: absolute; height: 33px; width: 138px" 
            Text="Reset Page" />
    </p>
    <p>
        <asp:Image ID="imgStudent" runat="server" ImageUrl="~/1.jpg" 
            style="z-index: 1; left: 244px; top: 364px; position: absolute; width: 194px; height: 136px" 
            Visible="False" BorderColor="Black" BorderStyle="Solid" 
            BorderWidth="1px" />
        <asp:GridView ID="gvReport" runat="server" BackColor="#FFD200"
            
            
            
            style="z-index: 1; left: 33px; top: 364px; position: absolute; height: 133px; width: 390px">
            <AlternatingRowStyle BackColor="Silver" />
            <HeaderStyle BackColor="Black" ForeColor="White" />
        </asp:GridView>
        <asp:Button ID="cmbExcelExport" runat="server" Enabled="False" 
            onclick="cmbExcelExport_Click" 
            style="z-index: 1; left: 1119px; top: 216px; position: absolute; height: 36px; width: 138px" 
            Text="Excel Export" />
        <asp:Label ID="lblTeamColors" runat="server" Font-Size="10pt" 
            style="z-index: 1; left: 39px; top: 345px; position: absolute; width: 146px" 
            Text="Team Name" Visible="False"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:DropDownList ID="ddlTeamSections" runat="server" AutoPostBack="True" 
            BackColor="#FFD200" CausesValidation="True" 
            style="z-index: 1; left: 35px; top: 323px; position: absolute; width: 193px" 
            Visible="False" 
            onselectedindexchanged="ddlTeamSections_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:Button ID="cmbSectionMaintenance" runat="server" 
            onclick="cmbSectionMaintenance_Click" 
            style="z-index: 1; left: 1046px; top: 256px; position: absolute; height: 42px; width: 140px" 
            Text="Section Maintenance" Visible="False" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="gvAttendanceList" runat="server" BackColor="#FFD200" 
            
            style="z-index: 1; left: 34px; top: 365px; position: absolute; height: 133px; width: 187px">
            <AlternatingRowStyle BackColor="Gray" />
            <HeaderStyle BackColor="Black" ForeColor="White" />
        </asp:GridView>
    </p>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
