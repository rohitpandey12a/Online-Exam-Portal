Imports System.Data.SqlClient
Partial Class Update
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim comm As SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtkaushalyaid.Text = Session("KID")
        If txtkaushalyaid.Text = "" Then

            Response.Redirect("Login.aspx")
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        conn = New SqlConnection("server=ROHIT-PANDEY\SQL17;uid=sa;pwd=sa@1234;database=c2a")

        If txtpassword.Text = txtconfirmpassword.Text Then
            conn.Open()
            comm = New SqlCommand("update regs set update_flag='Y' where K_ID='" & txtkaushalyaid.Text & "'", conn)
            comm.ExecuteNonQuery()
            conn.Close()

            conn.Open()
            comm = New SqlCommand("update regs set Password='" & txtpassword.Text & "'where K_ID='" & txtkaushalyaid.Text & "'", conn)
            comm.ExecuteNonQuery()
            conn.Close()
            Response.Redirect("Login.aspx")
        Else
            Label1.Visible = True
            Label1.Text = "Password does not matches"
        End If
    End Sub
End Class
