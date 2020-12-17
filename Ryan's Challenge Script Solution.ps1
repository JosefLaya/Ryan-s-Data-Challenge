# Ryan's Challenge

# Locate instances of "CVE-\d{4}-\d{4,7}"

$input_path = ‘C:\Users\josef\Downloads\ttt_test_data.log.clean\ttt_test_data.log.clean’
$output_file = ‘C:\Users\josef\Downloads\ttt_test_data.log.clean\New folder\output.txt’
$regex = ‘CVE-\d{4}-\d{4,7}’

select-string -Path $input_path -Pattern $regex -AllMatches | % { $_.Matches } | % { $_.Value } | Sort-Object -Descending | Group-Object -NoElement  > $output_file 

# Resources used: 

# Forums:

# https://adamtheautomator.com/powershell-grep/ 
# https://stackoverflow.com/questions/30602997/regular-expression-to-find-cve-matches
# https://techtalk.gfi.com/windows-powershell-extracting-strings-using-regular-expressions/
# https://stackoverflow.com/questions/29484090/powershell-count-the-number-of-duplicate-entries-in-a-file
# https://superuser.com/questions/891914/find-group-of-words-in-a-text-file-and-extract-the-line-to-new-text-file

# Microsoft Documentation:

# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/select-string?view=powershell-7.1
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_regular_expressions?view=powershell-7.1
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/sort-object?view=powershell-7.1
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/group-object?view=powershell-7.1