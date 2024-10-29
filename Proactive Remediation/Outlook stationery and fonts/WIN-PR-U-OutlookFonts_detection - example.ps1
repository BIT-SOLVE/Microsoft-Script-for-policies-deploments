try {
    # Define Expected Byte Arrays
    $ComposeFontComplex    = "60,104,116,109,108,62,13,10,13,10,60,104,101,97,100,62,13,10,60,115,116,121,108,101,62,13,10,13,10,32,47,42,32,83,116,121,108,101,32,68,101,102,105,110,105,116,105,111,110,115,32,42,47,13,10,32,115,112,97,110,46,80,101,114,115,110,108,105,99,104,101,114,69,114,115,116,101,108,108,115,116,105,108,13,10,9,123,109,115,111,45,115,116,121,108,101,45,110,97,109,101,58,34,80,101,114,115,246,110,108,105,99,104,101,114,32,69,114,115,116,101,108,108,115,116,105,108,34,59,13,10,9,109,115,111,45,115,116,121,108,101,45,116,121,112,101,58,112,101,114,115,111,110,97,108,45,99,111,109,112,111,115,101,59,13,10,9,109,115,111,45,115,116,121,108,101,45,110,111,115,104,111,119,58,121,101,115,59,13,10,9,109,115,111,45,115,116,121,108,101,45,117,110,104,105,100,101,58,110,111,59,13,10,9,109,115,111,45,97,110,115,105,45,102,111,110,116,45,115,105,122,101,58,49,49,46,48,112,116,59,13,10,9,109,115,111,45,98,105,100,105,45,102,111,110,116,45,115,105,122,101,58,49,49,46,48,112,116,59,13,10,9,102,111,110,116,45,102,97,109,105,108,121,58,34,67,97,108,105,98,114,105,34,44,115,97,110,115,45,115,101,114,105,102,59,13,10,9,109,115,111,45,97,115,99,105,105,45,102,111,110,116,45,102,97,109,105,108,121,58,67,97,108,105,98,114,105,59,13,10,9,109,115,111,45,104,97,110,115,105,45,102,111,110,116,45,102,97,109,105,108,121,58,67,97,108,105,98,114,105,59,13,10,9,109,115,111,45,98,105,100,105,45,102,111,110,116,45,102,97,109,105,108,121,58,34,84,105,109,101,115,32,78,101,119,32,82,111,109,97,110,34,59,13,10,9,109,115,111,45,98,105,100,105,45,116,104,101,109,101,45,102,111,110,116,58,109,105,110,111,114,45,98,105,100,105,59,13,10,9,99,111,108,111,114,58,119,105,110,100,111,119,116,101,120,116,59,125,13,10,45,45,62,13,10,60,47,115,116,121,108,101,62,13,10,60,47,104,101,97,100,62,13,10,13,10,60,47,104,116,109,108,62,13,10"
    $ComposeFontSimple     = "60,0,0,0,31,0,0,248,0,0,0,64,220,0,0,0,0,0,0,0,0,0,0,0,0,34,67,97,108,105,98,114,105,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0"
    $MarkCommentsWith      = "83,0,97,0,108,0,122,0,109,0,97,0,110,0,110,0,44,0,32,0,70,0,108,0,111,0,114,0,105,0,97,0,110,0,0,0"
    $ReplyFontComplex      = "60,104,116,109,108,62,13,10,13,10,60,104,101,97,100,62,13,10,60,115,116,121,108,101,62,13,10,13,10,32,47,42,32,83,116,121,108,101,32,68,101,102,105,110,105,116,105,111,110,115,32,42,47,13,10,32,115,112,97,110,46,80,101,114,115,110,108,105,99,104,101,114,65,110,116,119,111,114,116,115,116,105,108,13,10,9,123,109,115,111,45,115,116,121,108,101,45,110,97,109,101,58,34,80,101,114,115,246,110,108,105,99,104,101,114,32,65,110,116,119,111,114,116,115,116,105,108,34,59,13,10,9,109,115,111,45,115,116,121,108,101,45,116,121,112,101,58,112,101,114,115,111,110,97,108,45,114,101,112,108,121,59,13,10,9,109,115,111,45,115,116,121,108,101,45,110,111,115,104,111,119,58,121,101,115,59,13,10,9,109,115,111,45,115,116,121,108,101,45,117,110,104,105,100,101,58,110,111,59,13,10,9,109,115,111,45,97,110,115,105,45,102,111,110,116,45,115,105,122,101,58,49,49,46,48,112,116,59,13,10,9,109,115,111,45,98,105,100,105,45,102,111,110,116,45,115,105,122,101,58,49,49,46,48,112,116,59,13,10,9,102,111,110,116,45,102,97,109,105,108,121,58,34,67,97,108,105,98,114,105,34,44,115,97,110,115,45,115,101,114,105,102,59,13,10,9,109,115,111,45,97,115,99,105,105,45,102,111,110,116,45,102,97,109,105,108,121,58,67,97,108,105,98,114,105,59,13,10,9,109,115,111,45,104,97,110,115,105,45,102,111,110,116,45,102,97,109,105,108,121,58,67,97,108,105,98,114,105,59,13,10,9,109,115,111,45,98,105,100,105,45,102,111,110,116,45,102,97,109,105,108,121,58,34,84,105,109,101,115,32,78,101,119,32,82,111,109,97,110,34,59,13,10,9,109,115,111,45,98,105,100,105,45,116,104,101,109,101,45,102,111,110,116,58,109,105,110,111,114,45,98,105,100,105,59,13,10,9,99,111,108,111,114,58,119,105,110,100,111,119,116,101,120,116,59,125,13,10,45,45,62,13,10,60,47,115,116,121,108,101,62,13,10,60,47,104,101,97,100,62,13,10,13,10,60,47,104,116,109,108,62,13,10"
    $ReplyFontSimple       = "60,0,0,0,31,0,0,248,0,0,0,64,220,0,0,0,0,0,0,0,0,0,0,0,0,34,67,97,108,105,98,114,105,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0"
    $TextFontComplex       = "60,104,116,109,108,62,13,10,13,10,60,104,101,97,100,62,13,10,60,115,116,121,108,101,62,13,10,13,10,32,47,42,32,83,116,121,108,101,32,68,101,102,105,110,105,116,105,111,110,115,32,42,47,13,10,32,112,46,77,115,111,80,108,97,105,110,84,101,120,116,44,32,108,105,46,77,115,111,80,108,97,105,110,84,101,120,116,44,32,100,105,118,46,77,115,111,80,108,97,105,110,84,101,120,116,13,10,9,123,109,115,111,45,115,116,121,108,101,45,110,111,115,104,111,119,58,121,101,115,59,13,10,9,109,115,111,45,115,116,121,108,101,45,112,114,105,111,114,105,116,121,58,57,57,59,13,10,9,109,115,111,45,115,116,121,108,101,45,108,105,110,107,58,34,78,117,114,32,84,101,120,116,32,90,99,104,110,34,59,13,10,9,109,97,114,103,105,110,58,48,99,109,59,13,10,9,109,115,111,45,112,97,103,105,110,97,116,105,111,110,58,119,105,100,111,119,45,111,114,112,104,97,110,59,13,10,9,102,111,110,116,45,115,105,122,101,58,49,49,46,48,112,116,59,13,10,9,109,115,111,45,98,105,100,105,45,102,111,110,116,45,115,105,122,101,58,49,48,46,53,112,116,59,13,10,9,102,111,110,116,45,102,97,109,105,108,121,58,34,67,97,108,105,98,114,105,34,44,115,97,110,115,45,115,101,114,105,102,59,13,10,9,109,115,111,45,102,97,114,101,97,115,116,45,102,111,110,116,45,102,97,109,105,108,121,58,34,84,105,109,101,115,32,78,101,119,32,82,111,109,97,110,34,59,125,13,10,45,45,62,13,10,60,47,115,116,121,108,101,62,13,10,60,47,104,101,97,100,62,13,10,13,10,60,47,104,116,109,108,62,13,10"
    $TextFontSimple        = "60,0,0,0,31,0,0,248,0,0,0,64,220,0,0,0,0,0,0,0,0,0,0,0,0,34,67,97,108,105,98,114,105,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0"

    #####################################################################################
    # Functions START
    #####################################################################################

    # Convert Expected Byte Strings to Byte Arrays
    function Convert-StringToByteArray {
        param (
            [string]$String
        )
        return ($String -split ',' | ForEach-Object { [byte]$_ })
    }

    # Function to Compare Two Byte Arrays
    function Compare-ByteArrays {
        param (
            [byte[]]$Array1,
            [byte[]]$Array2
        )

        if ($Array1.Length -ne $Array2.Length) {
            return $false
        }

        for ($i = 0; $i -lt $Array1.Length; $i++) {
            if ($Array1[$i] -ne $Array2[$i]) {
                return $false
            }
        }
        return $true
    }

    #####################################################################################
    # Functions END
    #####################################################################################


    # Convert Expected Byte Strings to Byte Arrays
    $expectedComposeFontComplex = Convert-StringToByteArray -String $ComposeFontComplex
    $expectedComposeFontSimple  = Convert-StringToByteArray -String $ComposeFontSimple
    $expectedMarkCommentsWith   = Convert-StringToByteArray -String $MarkCommentsWith
    $expectedReplyFontComplex   = Convert-StringToByteArray -String $ReplyFontComplex
    $expectedReplyFontSimple    = Convert-StringToByteArray -String $ReplyFontSimple
    $expectedTextFontComplex    = Convert-StringToByteArray -String $TextFontComplex
    $expectedTextFontSimple     = Convert-StringToByteArray -String $TextFontSimple

    # Define Registry Path
    $Path = "HKCU:\Software\Microsoft\Office\16.0\Common\MailSettings"

    if (!(Test-Path $Path)) {
        Write-Output "Registry path '$Path' does not exist. Font Settings Outlook are NOT set correctly."
        exit 1
    }

    # Retrieve Actual Registry Values
    $actualComposeFontComplex = Get-ItemPropertyValue -Path $Path -Name ComposeFontComplex
    $actualComposeFontSimple  = Get-ItemPropertyValue -Path $Path -Name ComposeFontSimple
    $actualMarkCommentsWith   = Get-ItemPropertyValue -Path $Path -Name MarkCommentsWith
    $actualReplyFontComplex   = Get-ItemPropertyValue -Path $Path -Name ReplyFontComplex
    $actualReplyFontSimple    = Get-ItemPropertyValue -Path $Path -Name ReplyFontSimple
    $actualTextFontComplex    = Get-ItemPropertyValue -Path $Path -Name TextFontComplex
    $actualTextFontSimple     = Get-ItemPropertyValue -Path $Path -Name TextFontSimple

    # Perform Comparisons
    $isComposeFontComplexMatch = Compare-ByteArrays -Array1 $actualComposeFontComplex -Array2 $expectedComposeFontComplex
    $isComposeFontSimpleMatch  = Compare-ByteArrays -Array1 $actualComposeFontSimple  -Array2 $expectedComposeFontSimple
    $isMarkCommentsWithMatch   = Compare-ByteArrays -Array1 $actualMarkCommentsWith   -Array2 $expectedMarkCommentsWith
    $isReplyFontComplexMatch   = Compare-ByteArrays -Array1 $actualReplyFontComplex   -Array2 $expectedReplyFontComplex
    $isReplyFontSimpleMatch    = Compare-ByteArrays -Array1 $actualReplyFontSimple    -Array2 $expectedReplyFontSimple
    $isTextFontComplexMatch    = Compare-ByteArrays -Array1 $actualTextFontComplex    -Array2 $expectedTextFontComplex
    $isTextFontSimpleMatch     = Compare-ByteArrays -Array1 $actualTextFontSimple     -Array2 $expectedTextFontSimple

    # Debugging Output (Optional: Remove in Production)
    Write-Output "ComposeFontComplex Match: $isComposeFontComplexMatch"
    Write-Output "ComposeFontSimple Match: $isComposeFontSimpleMatch"
    Write-Output "MarkCommentsWith Match: $isMarkCommentsWithMatch"
    Write-Output "ReplyFontComplex Match: $isReplyFontComplexMatch"
    Write-Output "ReplyFontSimple Match: $isReplyFontSimpleMatch"
    Write-Output "TextFontComplex Match: $isTextFontComplexMatch"
    Write-Output "TextFontSimple Match: $isTextFontSimpleMatch"

    # Determine Overall Status
    if ($isComposeFontComplexMatch -and `
        $isComposeFontSimpleMatch -and `
        $isMarkCommentsWithMatch -and `
        $isReplyFontComplexMatch -and `
        $isReplyFontSimpleMatch -and `
        $isTextFontComplexMatch -and `
        $isTextFontSimpleMatch) {

        Write-Output "Font Settings Outlook are set correctly."
        exit 0
    } else {
        Write-Output "Font Settings Outlook are NOT set correctly."
        exit 1
    }

    } catch {
    Write-Output "An error occurred: $_"
    exit 1
}
