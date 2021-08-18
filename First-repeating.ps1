#Changes all Uppercase characters to lowercase and breaks string in to array for below function
$foo = $args[0].ToLower().toCharArray()



function Get-FirstRepeating {

    #empty string to append $letters to
    $FirstChar = ""

    #Starting from left, one letter at a time
    foreach ($letter in $foo)
    {
        #if $FirstChar already contains $letter, Write-Host it and break cycle 
        if ($FirstChar.contains($letter)) {
            Write-Host $letter
            break
        }
        #add $letter to $FirstChar for next foreach
        else {
            $FirstChar += $letter
        }
    }
}


Get-FirstRepeating
