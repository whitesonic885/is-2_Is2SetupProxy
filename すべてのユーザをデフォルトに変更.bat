rem
echo "�v���L�V�Ή��ł̏C�����J�n���܂�"
pause
set MSI_FILE=is2SetupProxy.msi
copy /b "Release\%MSI_FILE%" "%MSI_FILE%"
cscript /b "���ׂẴ��[�U���f�t�H���g�ɕύX.vbs" "%MSI_FILE%"
pause
