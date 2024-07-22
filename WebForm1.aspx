<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Procedure.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Procedure
    </title>
    <link href="bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid bg-success-subtle">
            <h1 class="display-4 fw-semibold text-center">From</h1>
            <div class="container">
                <div class="row g-3 mt-5">
                    <div class="col-md-6">
                        <asp:Label runat="server" ID="lbl_Email" for="inputEmail4" Text="Email" class="form-label" />
                        <asp:TextBox runat="server" TextMode="Email" class="form-control border-3 border-dark-subtle" MaxLength="24" placeholder="example@gmail.com" ID="txt_Email" />
                    </div>
                    <div class="col-md-6">
                        <asp:Label runat="server" ID="lbl_Password" for="inputEmail4" Text="Password" class="form-label" />
                        <asp:TextBox runat="server" type="password" class="form-control border-3 border-dark-subtle" MaxLength="24" Placeholder="***********" ID="txt_Password" />
                    </div>
                    <div class="col-md-6">
                        <asp:Label runat="server" ID="lbl_Fname" for="inputEmail4" Text="First Name" class="form-label" />
                        <asp:TextBox runat="server" type="text" class="form-control border-3 border-dark-subtle" ID="txt_Fname" MaxLength="20" placeholder="Enter First Name" />
                    </div>
                    <div class="col-md-6">
                        <asp:Label runat="server" ID="lbl_Lname" for="inputEmail4" Text="Last Name" class="form-label" />
                        <asp:TextBox runat="server" type="text" class="form-control border-3 border-dark-subtle" ID="txt_Lname" MaxLength="20" placeholder="Enter Last Name" />
                    </div>
                </div>
                <div class="col-md-6 mt-2">
                    <asp:Label runat="server" for="inputEmail4" Text="Number" ID="lbl_Number" class="form-label" />
                    <asp:TextBox runat="server" TextMode="Phone" class="form-control border-3 border-dark-subtle" ID="txt_Number" MaxLength="13" placeholder="+91 Enter 10 Digit No." />

                </div>
                <div class="col-12 mt-3">
                    <asp:Button Text="Sign in" type="submit" class="btn btn-primary" runat="server" onClick="Unnamed_Click" AutoPostBAck="true"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
