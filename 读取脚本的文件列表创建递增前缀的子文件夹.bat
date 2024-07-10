setlocal enabledelayedexpansion




rem 定义文件夹列表
set "folders=Foundations Tools Programming Hardware Software Automation Embedded Platform Write Lifestyle"

rem 分割文件夹列表为数组
for %%F in (%folders%) do (
    set /a count+=1
    set "folder[!count!]=%%F"
	echo %%F
)

rem 创建带有递增数字前缀的文件夹
set "index=1"
for /l %%i in (1,1,%count%) do (
    set "folder_name=!index!_!folder[%%i]!"
    mkdir "!folder_name!"
    set /a index+=1
)

echo 文件夹创建完成！
pause