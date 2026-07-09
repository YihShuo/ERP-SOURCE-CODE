@echo off
color 0A
setlocal enabledelayedexpansion

REM ==============================================================
REM SCRIPT QUET TOAN BO PC & TIEU DIET RANSOMWARE
REM ==============================================================

set "LogResult=%~dp0Virus_Alert_Log.txt"

echo =============================================================
echo [*] DANG KICH HOAT RADAR QUET TOAN BO MAY TINH...
echo [*] Luu y: Qua trinh nay se mat thoi gian tuy thuoc vao
echo     dung luong va toc do cua tung o cung.
echo =============================================================
echo.

REM Xoa log cu de quet moi
if exist "%LogResult%" del "%LogResult%"

REM -- Lặp qua toàn bộ các ký tự ổ đĩa từ A đến Z --
for %%D in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist "%%D:\" (
        echo [*] Dang quet o dia %%D:\ ...
        
        REM Tim file .qk003j
        dir /s /b "%%D:\*.qk003j" >> "%LogResult%" 2>nul
        
        REM Tim file thu tong tien
        dir /s /b "%%D:\README-GENTERMENT.TXT" >> "%LogResult%" 2>nul
    )
)

echo.
echo [*] Dang tong hop ket qua...

REM -- Kiem tra xem file log co du lieu khong --
for %%I in ("%LogResult%") do (
    if %%~zI GTR 0 (
        goto :VirusFound
    )
)
goto :Safe

:Safe
color 0A
echo -------------------------------------------------------------
echo [OK] HE THONG AN TOAN! Khong phat hien dau hieu Ransomware.
echo -------------------------------------------------------------
pause
goto :EOF

:VirusFound
color 4F
echo =============================================================
echo [!!!] CANH BAO MUC DO DO: PHAT HIEN RANSOMWARE [!!!]
echo =============================================================
echo Toan bo duong dan file bi nhiem da duoc luu tai: 
echo %LogResult%
echo.
echo DANG HIEN THI 5 FILE DAU TIEN TIM THAY:
echo -------------------------------------------------------------
set /a count=0
for /f "usebackq tokens=*" %%a in ("%LogResult%") do (
    set /a count+=1
    if !count! leq 5 echo %%a
)
echo -------------------------------------------------------------
echo.

REM -- Tinh nang hoi y kien nguoi dung (Yes/No) --
CHOICE /C YN /M "Ban co muon XOA TOAN BO cac file bi nhiem nay khong (Y=Yes, N=No)?"

REM Kiem tra ket qua lua chon (Bam N thi tra ve 2, Bam Y thi tra ve 1)
if ERRORLEVEL 2 goto :DoNothing
if ERRORLEVEL 1 goto :DeleteFiles

:DeleteFiles
echo.
echo [*] DANG TIEU DIET CAC FILE BI NHIEM...
REM Doc tung dong trong file Log va thuc thi lenh xoa (del /f /q /a)
for /f "usebackq tokens=*" %%F in ("%LogResult%") do (
    if exist "%%F" (
        del /f /q /a "%%F"
        echo  - Da xoa: %%F
    )
)
echo -------------------------------------------------------------
echo [OK] DA TIEU DIET THANH CONG TOAN BO FILE RANSOMWARE!
echo -------------------------------------------------------------
pause
goto :EOF

:DoNothing
echo.
echo [*] BAN DA CHON KHONG XOA (NO).
echo [!] VUI LONG NGAT KET NOI MANG NGAY LAP TUC VA XU LY THU CONG!
pause
goto :EOF