###$str1 = "This is a sample string with two guids. Guid1 is {FEB375AB-6EEC-3929-8FAF-188ED81DD8B5}. Guid2 is {B24E0C46-B627-4781-975E-620ED53CD981}" 

$string -match '{\w{8}-\w{4}-\w{4}-\w{4}-\w{12}}'
$fullString | Select-String -Pattern '{[-0-9A-F]+?}' -AllMatches | Select-Object -ExpandProperty Matches | Select-Object -ExpandProperty Value