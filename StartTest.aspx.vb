Imports System.Data.SqlClient

Partial Class StartTest
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim comm As SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtkaushalyaid.Text = Session("KID")
        If txtkaushalyaid.Text = "" Then

            Response.Redirect("Login.aspx")
        End If
    End Sub

    Protected Sub CheckBox1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox1.CheckedChanged
        If CheckBox1.Checked = True Then
            Button1.Enabled = True
        Else
            Button1.Enabled = False
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        conn = New SqlConnection("server=ROHIT-PANDEY\SQL17;uid=sa;pwd=sa@1234;database=c2a")
        conn.Open()
        comm = New SqlCommand("delete from exam_attempt", conn)
        comm.ExecuteNonQuery()
        conn.Close()
        Response.Redirect("ExamAttempt.aspx")
    End Sub
End Class
