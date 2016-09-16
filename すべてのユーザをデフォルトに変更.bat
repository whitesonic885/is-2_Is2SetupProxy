rem
echo "プロキシ対応版の修正を開始します"
pause
set MSI_FILE=is2SetupProxy.msi
copy /b "Release\%MSI_FILE%" "%MSI_FILE%"
cscript /b "すべてのユーザをデフォルトに変更.vbs" "%MSI_FILE%"
pause
