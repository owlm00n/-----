@echo off
setlocal enabledelayedexpansion

rem 设置要读取的文件夹路径
set "folder_path=C:\Path\To\Your\Folder"

rem 设置输出文件路径
set "output_file=C:\Path\To\Output\folders_list.txt"

rem 清空输出文件内容
type nul > "%output_file%"

rem 遍历文件夹并输出子文件夹名称
for /d %%i in ("%folder_path%\*") do (
    echo %%~nxi >> "%output_file%"
)

echo 子文件夹名称已写入到 %output_file%
pause
