Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports Microsoft.Owin.Security
Imports System.Net

Partial Public Class CookieData
    Inherits Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If String.IsNullOrEmpty(Data.Text) Then
            Data.Text = Request.Cookies.Get("cookie-data")?.Value
        End If
    End Sub

    Protected Sub OnUpdate(sender As Object, e As EventArgs) Handles UpdateBtn.Click
        Dim cookie = New HttpCookie("Cookie-data", Data.Text)
        cookie.Expires = DateTime.Now.AddDays(2)
        Response.Cookies.Add(cookie)
    End Sub

End Class
