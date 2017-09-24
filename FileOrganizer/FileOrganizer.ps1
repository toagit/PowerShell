#ビデオカメラ用ファイル整理Shell

$rtPath="D:\user\xxx\video"
$targetmv = Get-ChildItem -Path $rtPath -Include MAH*.mp4,*.jpg -Recurse
$targetdel = Get-ChildItem -Path $rtPath -Include *.THM -Recurse

if($targetmv -eq $null){
    #0件の場合
    $countmv = 0
    #"`nCount`n---------`n" + 0

}else{
    #1件の場合
    $countmv = $targetmv.length
    #"`nCount`n---------`n" + $result.length
}
if($targetdel -eq $null){
    #0件の場合
    $countdel = 0
    #"`nCount`n---------`n" + 0

}else{
    #1件の場合
    $countdel = $targetdel.length
}

$targetmv|ForEach-Object{Move-Item $_ D:\user\xxx\picture\work}
$targetdel|ForEach-Object{Remove-Item $_ }

"`nMoveCount`n-----------`n" + $countmv
"`nDeleteCount`n---------`n" + $countdel
