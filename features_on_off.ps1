Add-Type -AssemblyName System.Windows.Forms

$bootime = (Get-WmiObject -Class win32_operatingsystem).ConverttoDateTime((Get-WmiObject -Class win32_Operatingsystem).LastBootUpTime)

	$buttonGetUptime_Click={
		$Getdata = (Get-WmiObject -Class win32_operatingsystem).ConverttoDateTime((Get-WmiObject -Class win32_Operatingsystem).LastBootUpTime)
		$label2.Text = $Getdata
	}

$Form = New-Object system.Windows.Forms.Form
$Form.Text = 'Enable or Disable Features'
$Form.Width = 450
$Form.Height = 450
$Form.AutoSize = $true

$label2 = New-Object system.windows.Forms.Label
$label2.AutoSize = $true
$label2.Width = 25
$label2.Height = 10
$label2.location = new-object system.drawing.size(15,400)
$label2.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($label2)

$button4 = New-Object system.windows.Forms.Button
$button4.add_Click($buttonGetUptime_Click)
$button4.Text = 'Enable Biologin'
$button4.Width = 110
$button4.Height = 40
$button4.location = new-object system.drawing.size(15,15)
$button4.Font = "Microsoft Sans Serif,10"
$button4.AutoEllipsis
$Form.controls.Add($button4)

$button5 = New-Object system.windows.Forms.Button
$button5.add_Click($buttonGetUptime_Click)
$button5.Text = 'Disable Biologin'
$button5.Width = 120
$button5.Height = 40
$button5.location = new-object system.drawing.size(250,15)
$button5.Font = "Microsoft Sans Serif,10"
$button5.AutoEllipsis
$Form.controls.Add($button5)

$button6 = New-Object system.windows.Forms.Button
$button6.add_Click($buttonGetUptime_Click)
$button6.Text = 'Digital Signature Disable'
$button6.Width = 180
$button6.Height = 40
$button6.location = new-object system.drawing.size(15,90)
$button6.Font = "Microsoft Sans Serif,10"
$button6.AutoEllipsis
$Form.controls.Add($button6)

$button7 = New-Object system.windows.Forms.Button
$button7.add_Click($buttonGetUptime_Click)
$button7.Text = 'Digital Signature Enable'
$button7.Width = 180
$button7.Height = 40
$button7.location = new-object system.drawing.size(250,90)
$button7.Font = "Microsoft Sans Serif,10"
$button7.AutoEllipsis
$Form.controls.Add($button7)

$Form.ShowDialog()