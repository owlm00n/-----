@echo off

setlocal enabledelayedexpansion

rem 设置读取的文本文件路径
set "input_file=folders_list.txt"

rem 逐行读取文件夹名称并创建文件夹
for /f "delims=" %%a in (%input_file%) do (
    set "folder_name=%%a"
    rem 移除名称中的非法字符（如果有的话）
    set "folder_name=!folder_name: &=!"
    rem 创建文件夹
    mkdir "!folder_name!"
)

echo create folder done.
pause