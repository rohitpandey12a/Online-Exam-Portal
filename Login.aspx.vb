Imports System.Data.SqlClient
Partial Class Login
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim comm As SqlCommand
    Dim count As Integer
    Dim DAAR As SqlDataReader
    Dim update_flag As String
    Dim otpgenerated As String

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click


        Session("kid") = txtkaushalyaid.Text
        Session.Timeout = 1

        conn = New SqlConnection("server=ROHIT-PANDEY\SQL17;uid=sa;pwd=sa@1234;database=c2a")
        conn.Open()
        comm = New SqlCommand("select * from Regs where K_ID = '" & txtkaushalyaid.Text & "'", conn)
        DAAR = comm.ExecuteReader()

        While DAAR.Read
            update_flag = DAAR(11)
            otpgenerated = DAAR(12)
        End While
        conn.Close()

        conn = New SqlConnection("server=ROHIT-PANDEY\SQL17;uid=sa;pwd=sa@1234;database=c2a")
        conn.Open()
        comm = New SqlCommand("select count(*) from Regs where K_ID = '" & txtkaushalyaid.Text & "' and Password = '" & txtpassword.Text & "'", conn)
        count = comm.ExecuteScalar()
        conn.Close()

        If count > 0 And update_flag = "Y" And otpgenerated = txtenterotp.Text Then
            Response.Redirect("StartTest.aspx")
        ElseIf count > 0 And update_flag = "N" And otpgenerated = txtenterotp.Text Then
            Response.Redirect("Update.aspx")
        Else
            Label1.Visible = True
            Label1.Text = "invaild login"
        End If


    End Sub

    Dim OTP As New Random
    Dim FinalOTP As Long
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Label1.Visible = True
        txtenterotp.Visible = True
        FinalOTP = Mid(OTP.Next, 1, 6)
        conn = New SqlConnection("server=ROHIT-PANDEY\SQL17;uid=sa;pwd=sa@1234;database=c2a")
        conn.Open()
        comm = New SqlCommand("update Regs set OTP='" & FinalOTP & "' where K_ID='" & txtkaushalyaid.Text & "'", conn)
        comm.ExecuteNonQuery()
            conn.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        txtkaushalyaid.Text = ""
        txtenterotp.Text = ""
        txtpassword.Text = ""
    End Sub
    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click

        conn = New SqlConnection("server=ROHIT-PANDEY\SQL17;uid=sa;pwd=sa@1234;database=c2a")
        conn.Open()
        comm = New SqlCommand(String.Concat("select * from Regs where K_ID = '", txtkaushalyaid.Text, "'"), conn)
        DAAR = comm.ExecuteReader()
        While DAAR.Read()
            otpgenerated = DAAR(12)
        End While
        txtenterotp.Text = otpgenerated
        conn.Close()

    End Sub
    Protected Sub txtpassword_TextChanged(sender As Object, e As EventArgs) Handles txtpassword.TextChanged

    End Sub
End Class
