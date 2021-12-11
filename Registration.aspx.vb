Imports System.Data.SqlClient

Partial Class Registration
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim comm As SqlCommand
    Dim dar As SqlDataReader
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Label3.Visible = True
        Label3.Text = "Enter Password"
        conn = New SqlConnection("server=ROHIT-PANDEY\SQL17;uid=sa;pwd=sa@1234;database=kaushalya")
        conn.Open()
        comm = New SqlCommand("select * from vtk2019 where kid='" & txtkaushalyaid.Text & "'", conn)
        dar = comm.ExecuteReader
        While dar.Read
            txtFullname.Text = dar(1)
            txtaddress.Text = dar(2)
            txtmobile.Text = dar(3)
            txtemail.Text = dar(4)
            txtinstitutename.Text = dar(5)
            txtbranch.Text = dar(6)
        End While
        conn.Close()
    End Sub

    Dim duplicaterecord As Integer
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If txtconfirmpassword.Text <> "" And txtpassword.Text <> "" Then
            If txtpassword.Text = txtconfirmpassword.Text Then
                conn = New SqlConnection("server=ROHIT-PANDEY\SQL17;uid=sa;pwd=sa@1234;database=c2a")
                conn.Open()
                comm = New SqlCommand("select count(*) from Regs where K_ID = '" & txtkaushalyaid.Text & "' and exam_type = '" & ddexam.SelectedItem.Text & "'", conn)
                duplicaterecord = comm.ExecuteScalar
                conn.Close()
                If duplicaterecord = 0 Then
                    conn.Open()
                    comm = New SqlCommand("insert into Regs values('" & txtkaushalyaid.Text & "','" & txtpassword.Text & "','" & txtFullname.Text & "','" & txtaddress.Text & "','" & txtemail.Text & "'," & txtmobile.Text & ",'" & txtinstitutename.Text & "','" & txtbranch.Text & "','" & ddexam.SelectedItem.Text & "','" & ddmonth.SelectedItem.Text & "'," & ddyear.SelectedItem.Text & ",'N',123456)", conn)

                    comm.ExecuteNonQuery()
                    conn.Close()
                    Label1.Visible = True
                    Label1.Text = "Registration successful"
                Else
                    Label1.Visible = True
                    Label1.Text = "duplicate record"
                End If
            Else
                Label1.Visible = True
                Label1.Text = " Password does not matches"
            End If
        Else
            Label1.Visible = True
            Label1.Text = " Password should Not be blank"
        End If
    End Sub

End Class
