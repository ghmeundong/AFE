@echo off
title Tetris
setlocal enabledelayedexpansion

set "hashBar=############"
set "ESpace= "
set "LowestYFig=1"
set "HighestYFig=1"
set "BoardYHigh=18"

for /L %%i in (-19, 1, 18) do (
  for /L %%y in (1, 1, 10) do (
    set "X[%%y]Y[%%i]= "
    )
  )

set "CurrY=18"
set "CurrFig=0"
set "CurrFigRot=1"

for /L %%i in (1, 1, 4) do (
  set "PosX%%i=0"
  set "PosY%%i=0"
  )

goto Menu

:Figure_1
set Pos1_1=5 1 6 1 5 2 6 2
set "CurrFigPos=%Pos1_1%"
set LowestYFig=2
set HighestYFig=1
set LeftXFig=5
set RightXFig=6
goto :eof

:Figure_2
set Pos2_1=5 1 4 2 5 2 6 2
set Pos2_2=5 1 5 2 6 2 5 3
set Pos2_3=4 1 5 1 6 1 5 2
set Pos2_4=5 1 4 2 5 2 5 3
set "CurrFigPos=!Pos2_%1!"
call :Figure_2_%1
goto :eof
:Figure_2_1
set LowestYFig=2
set HighestYFig=1
set LeftXFig=4
set RightXFig=6
goto :eof
:Figure_2_2
set LowestYFig=3
set HighestYFig=1
set LeftXFig=5
set RightXFig=6
goto :eof
:Figure_2_3
set LowestYFig=2
set HighestYFig=1
set LeftXFig=4
set RightXFig=6
goto :eof
:Figure_2_4
set LowestYFig=3
set HighestYFig=1
set LeftXFig=4
set RightXFig=5
goto :eof

:Figure_3
set Pos3_1=4 1 4 2 5 2 6 2
set Pos3_2=5 1 6 1 5 2 5 3
set Pos3_3=4 1 5 1 6 1 6 2
set Pos3_4=5 1 5 2 4 3 5 3
set "CurrFigPos=!Pos3_%1!"
call :Figure_3_%1
goto :eof
:Figure_3_1
set LowestYFig=2
set HighestYFig=1
set LeftXFig=4
set RightXFig=6
goto :eof
:Figure_3_2
set LowestYFig=3
set HighestYFig=1
set LeftXFig=5
set RightXFig=6
goto :eof
:Figure_3_3
set LowestYFig=2
set HighestYFig=1
set LeftXFig=4
set RightXFig=6
goto :eof
:Figure_3_4
set LowestYFig=3
set HighestYFig=1
set LeftXFig=4
set RightXFig=5
goto :eof

:Figure_4
set Pos4_1=6 1 4 2 5 2 6 2
set Pos4_2=5 1 5 2 5 3 6 3
set Pos4_3=4 1 5 1 6 1 4 2
set Pos4_4=4 1 5 1 5 2 5 3
set "CurrFigPos=!Pos4_%1!"
call :Figure_4_%1
goto :eof
:Figure_4_1
echo 1
set LowestYFig=2
set HighestYFig=1
set LeftXFig=4
set RightXFig=6
goto :eof
:Figure_4_2
set LowestYFig=3
set HighestYFig=1
set LeftXFig=5
set RightXFig=6
goto :eof
:Figure_4_3
set LowestYFig=2
set HighestYFig=1
set LeftXFig=4
set RightXFig=6
goto :eof
:Figure_4_4
set LowestYFig=3
set HighestYFig=1
set LeftXFig=4
set RightXFig=5
goto :eof

:Figure_5
set Pos5_1=5 1 6 1 4 2 5 2
set Pos5_2=5 1 5 2 6 2 6 3
set Pos5_3=5 1 6 1 4 2 5 2
set Pos5_4=5 1 5 2 6 2 6 3
set "CurrFigPos=!Pos5_%1!"
call :Figure_5_%1
goto :eof
:Figure_5_1
set LowestYFig=2
set HighestYFig=1
set LeftXFig=4
set RightXFig=6
goto :eof
:Figure_5_2
set LowestYFig=3
set HighestYFig=1
set LeftXFig=5
set RightXFig=6
goto :eof
:Figure_5_3
set LowestYFig=2
set HighestYFig=1
set LeftXFig=4
set RightXFig=6
goto :eof
:Figure_5_4
set LowestYFig=3
set HighestYFig=1
set LeftXFig=5
set RightXFig=6
goto :eof

:Figure_6
set Pos6_1=4 1 5 1 5 2 6 2
set Pos6_2=6 1 5 2 6 2 5 3
set Pos6_3=4 1 5 1 5 2 6 2
set Pos6_4=6 1 5 2 6 2 5 3
set "CurrFigPos=!Pos6_%1!"
call :Figure_6_%1
goto :eof
:Figure_6_1
set LowestYFig=1
set HighestYFig=1
set LeftXFig=4
set RightXFig=6
goto :eof
:Figure_6_2
set LowestYFig=3
set HighestYFig=1
set LeftXFig=5
set RightXFig=6
goto :eof
:Figure_6_3
set LowestYFig=2
set HighestYFig=2
set LeftXFig=4
set RightXFig=6
goto :eof
:Figure_6_4
set LowestYFig=3
set HighestYFig=1
set LeftXFig=5
set RightXFig=6
goto :eof

:Figure_7
set Pos7_1=4 1 5 1 6 1 7 1
set Pos7_2=6 1 6 2 6 3 6 4
set Pos7_3=4 2 5 2 6 2 7 2
set Pos7_4=5 1 5 2 5 3 5 4
set CurrFigPos=!Pos7_%1!
call :Figure_7_%1
goto :eof
:Figure_7_1
set LowestYFig=1
set HighestYFig=1
set LeftXFig=4
set RightXFig=7
goto :eof
:Figure_7_2
set LowestYFig=4
set HighestYFig=1
set LeftXFig=5
set RightXFig=5
goto :eof
:Figure_7_3
set LowestYFig=2
set HighestYFig=2
set LeftXFig=4
set RightXFig=7
goto :eof
:Figure_7_4
set LowestYFig=4
set HighestYFig=1
set LeftXFig=5
set RightXFig=5
goto :eof

:Menu
cls
echo " _____ ___ _____ ___ ___ ___ "
echo "|_   _| __|_   _| _ \_ _/ __|"
echo "  | | | _|  | | |   /| |\__ \"
echo "  |_| |___| |_| |_|_\___|___/"
echo(
echo          1. game start
echo            2. results
echo              3. quit
choice /N /C:123
if errorlevel 255 goto Menu
if errorlevel 3 goto TheEnd
if errorlevel 2 goto GameResults
if errorlevel 1 goto MainGame
if errorlevel 0 goto Menu

:MainGame
for /L %%i in (-19, 1, 18) do (
  for /L %%y in (1, 1, 10) do (
    set "X[%%y]Y[%%i]= "
    )
  )
cls
echo ~~~~~~~~~~~~How to~~~~~~~~~~~~
echo(
echo      A - left    D - right
echo       S - down  W - rotation
echo            Q - quit
echo ________________________________
echo Press any key to start
pause > nul
set "GamePoints=0"
set "CountNr=0"
:MainGameLoop
call :ClearLine
call :GenerateFigure
:MainGameOptions
call :DrawBoard
choice /N /C:ASDWQ /T 1 /D S
if errorlevel 255 goto MainGameOptions
if errorlevel 5 goto EndOfTheGame
if errorlevel 4 goto RotateFigure
if errorlevel 3 goto MoveRight
if errorlevel 2 goto MoveDown
if errorlevel 1 goto MoveLeft
if errorlevel 0 goto MainGameLoop

:ClearLine
set ClearLineY=-1
set /a "HighestYFig1=%HighestYFig%-1"
for /L %%i in (!HighestYFig!, 1, 18) do (
  set isLineFull=1
  for /L %%a in (1, 1, 10) do (
    if "!X[%%a]Y[%%i]!"=="%ESpace%" (
      set isLineFull=0
      )
    )
  if "!isLineFull!"=="1" (
    set /a "GamePoints+=1"
    for /L %%a in (1, 1, 10) do (
      set "X[%%a]Y[%%i]=%ESpace%"
      )
    set LineFullTempNum=%%i
    for /L %%a in (1, 1, %%i) do (
      for /L %%b in (1, 1, 10) do (
        set /a "LineFullTempNum1=!LineFullTempNum!-1"
        call :LineFullMoveLine !LineFullTempNum1! !LineFullTempNum! %%b
        )
      set /a "LineFullTempNum-=1"
      )
    )
  )
for /L %%i in (-5, 1, 0) do (
  for /L %%y in (1, 1, 10) do (
    set "X[%%y]Y[%%i]= "
    )
)
goto :eof

:LineFullMoveLine
set "X[%3]Y[%2]=!X[%3]Y[%1]!"
goto :eof

:GenerateFigure
set GameOverState=0
set /a "RandNum=(%Random% %% 7) + 1"
set /a "RandNumRot=(%Random% %% 4) + 1"
set FigureNum=%RandNum%
set FigureRotNum=%RandNumRot%
call :Figure_%RandNum% %RandNumRot%
for /L %%i in (1, 1, 8) do (
  set "TempFigPos%%i= "
  )
call :isGameOver
if "%GameOverState%"=="1" (
  goto EndOfTheGame
  )
call :DrawFunc
goto :eof

:isGameOver
for /L %%i in (4, 1, 7) do (
  if "!X[%%i]Y[3]!"=="@" (
    set "GameOverState=1"
    )
  )

:DrawFunc
for /L %%i in (1, 2, 8) do (
  set b=%%i
  set /a "c=%%i+1"
  call :DrawFigure !b! !c!
  )
goto :eof
:DrawFigure
for /F "tokens=%1,%2" %%G in ("%CurrFigPos%") do (
  set X[%%G]Y[%%H]=@
)
goto :eof

:RemoveFunc
for /L %%i in (1, 2, 8) do (
    set TempNrRemove=%%i
    set /a "TempNrRemove1=%%i+1"
    call :RemoveFigure !TempNrRemove! !TempNrRemove1!
)
goto :eof

:RemoveFigure
for /F "tokens=%1,%2" %%G in ("%CurrFigPos%") do (
  set "X[%%G]Y[%%H]=%ESpace%"
)
goto :eof

:MoveRight
if "%CountNr%"=="5" goto MoveDown
set /a "CountNr=%CountNr%+1"
for /F "tokens=1,2,3,4,5,6,7,8" %%2 in ("%CurrFigPos%") do (
  set /a "TempFigPos1=%%2 + 1"
  set "TempFigPos2=%%3"
  set /a "TempFigPos3=%%4 + 1"
  set "TempFigPos4=%%5"
  set /a "TempFigPos5=%%6 + 1"
  set "TempFigPos6=%%7"
  set /a "TempFigPos7=%%8 + 1"
  set "TempFigPos8=%%9"
)
set TempRightCurrFigPos=%TempFigPos1% %TempFigPos2% %TempFigPos3% %TempFigPos4% %TempFigPos5% %TempFigPos6% %TempFigPos7% %TempFigPos8%
call :canMoveRight
call :RemoveFunc
set /a "LeftXFig=%LeftXFig%+1"
set /a "RightXFig=%RightXFig%+1"
set CurrFigPos=%TempFigPos1% %TempFigPos2% %TempFigPos3% %TempFigPos4% %TempFigPos5% %TempFigPos6% %TempFigPos7% %TempFigPos8%
call :DrawFunc
goto MainGameOptions

:canMoveRight
set "isRightEmpty=1"
for /L %%i in (1, 2, 8) do (
  set "isRightSide=0"
  set "RightSideTemp1=%%i"
  set /a "RightSideTemp2=%%i + 1"
  call :isRightSideFunc !RightSideTemp1! !RightSideTemp2!
  )
for /L %%i in (1, 2, 8) do (
  set "TempNumMoveRight=%%i"
  set /a "TempNumMoveRight1=%%i + 1"
  call :canMoveRightisEmpty !TempNumMoveRight! !TempNumMoveRight1!
  if '!isRightEmpty!'=='0' (
    set "isSameFigRight=0"
    call :isSameFigRightCheck
    if "!isSameFigRight!"=="0" (
      goto MainGameOptions
      )
    )
  )
goto :eof

:isRightSideFunc
for /F "tokens=%1, %2" %%m in ("%TempRightCurrFigPos%") do (
  if "%%m"=="11" (
    goto MainGameOptions
    )
  )

:canMoveRightisEmpty
for /F "tokens=%1,%2" %%o in ("%TempRightCurrFigPos%") do (
  if "!X[%%o]Y[%%p]!"=="@" (
    set "isRightEmpty=0"
    set RightNotEmptyX=%%o
    set RightNotEmptyY=%%p
    goto :eof
  )
)
goto :eof

:isSameFigRightCheck
for /L %%q in (1, 2, 8) do (
  set "TempRightCheck1=%%q"
  set /a "TempRightCheck2=%%q + 1"
  call :isSameFigRightCheckFunc !TempRightCheck1! !TempRightCheck2!
  )
goto :eof

:isSameFigRightCheckFunc
for /F "tokens=%1, %2" %%r in ("%CurrFigPos%") do (
  if "X[!RightNotEmptyX!]Y[!RightNotEmptyY!]"=="X[%%r]Y[%%s]" (
    set "isSameFigRight=1"
    goto :eof
    )
  goto :eof
  )

:MoveDown
set "CountNr=0"
for /F "tokens=1,2,3,4,5,6,7,8" %%2 in ("%CurrFigPos%") do (
  set "TempFigPos1=%%2"
  set /a "TempFigPos2=%%3 + 1"
  set "TempFigPos3=%%4"
  set /a "TempFigPos4=%%5 + 1"
  set "TempFigPos5=%%6"
  set /a "TempFigPos6=%%7 + 1"
  set "TempFigPos7=%%8"
  set /a "TempFigPos8=%%9 + 1"
)
set TempFigPosVar=%TempFigPos1% %TempFigPos2% %TempFigPos3% %TempFigPos4% %TempFigPos5% %TempFigPos6% %TempFigPos7% %TempFigPos8%
set /a "LowestYFig+=1"
set /a "HighestYFig+=1"
call :canMoveDown
call :RemoveFunc
set CurrFigPos=%TempFigPos1% %TempFigPos2% %TempFigPos3% %TempFigPos4% %TempFigPos5% %TempFigPos6% %TempFigPos7% %TempFigPos8%
call :DrawFunc
goto MainGameOptions

:canMoveDown
set "isBottomNotEmptyCheck=0"
for /L %%i in (1, 2, 8) do (
    set TempNrMoveDownCheck=%%i
    set /a "TempNrMoveDownCheck1=%%i+1"
    call :isBottomEmpty !TempNrMoveDownCheck! !TempNrMoveDownCheck1!
    if '!isBottomNotEmptyCheck!'=='1' goto MainGameLoop
)
goto canMoveDown2

:isBottomEmpty
for /F "tokens=%1,%2" %%G in ("%TempFigPosVar%") do (
  set isSameCoords=0
  if '!X[%%G]Y[%%H]!'=='@' (
    call :isCoordsSameFig
    if '!isSameCoords!'=='0' (
      set "isBottomNotEmptyCheck=1"
      goto :eof
      )
    )
  goto :eof
)

:canMoveDown2
if '%LowestYFig%'=='18' (
  call :RemoveFunc
  set CurrFigPos=%TempFigPos1% %TempFigPos2% %TempFigPos3% %TempFigPos4% %TempFigPos5% %TempFigPos6% %TempFigPos7% %TempFigPos8%
  call :DrawFunc
	call :DrawBoard
	goto :MainGameLoop
)

:isCoordsSameFig
for /L %%i in (1, 2, 8) do (
    set SameFigureChk1=%%i
    set /a "SameFigureChk2=%%i+1"
    call :SameFigureChk !SameFigureChk1! !SameFigureChk2!
)
goto :eof

:SameFigureChk
for /F "tokens=%1,%2" %%O in ("%CurrFigPos%") do (
  if "X[%%O]Y[%%P]"=="X[%%G]Y[%%H]" (
    set "isSameCoords=1"
    )
)
goto :eof

:MoveLeft
if "%CountNr%"=="5" goto MoveDown
set /a "CountNr=%CountNr%+1"
for /F "tokens=1,2,3,4,5,6,7,8" %%2 in ("%CurrFigPos%") do (
  set /a "TempFigPos1=%%2 - 1"
  set "TempFigPos2=%%3"
  set /a "TempFigPos3=%%4 - 1"
  set "TempFigPos4=%%5"
  set /a "TempFigPos5=%%6 - 1"
  set "TempFigPos6=%%7"
  set /a "TempFigPos7=%%8 - 1"
  set "TempFigPos8=%%9"
)
set TempLeftCurrFigPos=%TempFigPos1% %TempFigPos2% %TempFigPos3% %TempFigPos4% %TempFigPos5% %TempFigPos6% %TempFigPos7% %TempFigPos8%
call :canMoveLeft
call :RemoveFunc
set /a "LeftXFig=%LeftXFig%-1"
set /a "RightXFig=%RightXFig%-1"
set CurrFigPos=%TempFigPos1% %TempFigPos2% %TempFigPos3% %TempFigPos4% %TempFigPos5% %TempFigPos6% %TempFigPos7% %TempFigPos8%
call :DrawFunc
goto MainGameOptions

:canMoveLeft
set "isLeftEmpty=1"
for /L %%i in (1, 2, 8) do (
  set "isLeftSide=0"
  set "LeftSideTemp1=%%i"
  set /a "LeftSideTemp2=%%i + 1"
  call :isLeftSideFunc !LeftSideTemp1! !LeftSideTemp2!
  )
for /L %%i in (1, 2, 8) do (
  set "TempNumMoveLeft=%%i"
  set /a "TempNumMoveLeft1=%%i + 1"
  call :canMoveLeftisEmpty !TempNumMoveLeft! !TempNumMoveLeft1!
  if '!isLeftEmpty!'=='0' (
    set "isSameFigLeft=0"
    call :isSameFigLeftCheck
    if "!isSameFigLeft!"=="0" (
      goto MainGameOptions
      )
    )
  )
goto :eof

:isLeftSideFunc
for /F "tokens=%1, %2" %%m in ("%TempLeftCurrFigPos%") do (
  if "%%m"=="0" (
    goto MainGameOptions
    )
  )

:canMoveLeftisEmpty
for /F "tokens=%1,%2" %%o in ("%TempLeftCurrFigPos%") do (
  if "!X[%%o]Y[%%p]!"=="@" (
    set "isLeftEmpty=0"
    set LeftNotEmptyX=%%o
    set LeftNotEmptyY=%%p
    goto :eof
  )
)
goto :eof

:isSameFigLeftCheck
for /L %%q in (1, 2, 8) do (
  set "TempLeftCheck1=%%q"
  set /a "TempLeftCheck2=%%q + 1"
  call :isSameFigLeftCheckFunc !TempLeftCheck1! !TempLeftCheck2!
  )
goto :eof

:isSameFigLeftCheckFunc
for /F "tokens=%1, %2" %%r in ("%CurrFigPos%") do (
  if "X[!LeftNotEmptyX!]Y[!LeftNotEmptyY!]"=="X[%%r]Y[%%s]" (
    set "isSameFigLeft=1"
    goto :eof
    )
  goto :eof
)

:RotateFigure
set RealCurrFigPos=%CurrFigPos%
if "%FigureNum%"=="1" goto MainGameOptions
set /a "NewRotation=%FigureRotNum% + 1"
if %NewRotation% gtr 4 (
  set /a "NewRotation=%NewRotation% %% 4"
  )
set TempHighestYFig=%HighestYFig%
set TempLowestYFig=%LowestYFig%
set TempLeftXFig=%LeftXFig%
set TempRightXFig=%RightXFig%
call :Figure_%FigureNum% !NewRotation!
set /a "MoveDownAmount=!TempLowestYFig!-!LowestYFig!
set /a "MoveSideAmount=!TempLeftXFig!-!LeftXFig!"
for /F "tokens=1,2,3,4,5,6,7,8" %%2 in ("%CurrFigPos%") do (
  set /a "TempFigPos1=%%2 + !MoveSideAmount!"
  set /a "TempFigPos2=%%3 + !MoveDownAmount!"
  set /a "TempFigPos3=%%4 + !MoveSideAmount!"
  set /a "TempFigPos4=%%5 + !MoveDownAmount!"
  set /a "TempFigPos5=%%6 + !MoveSideAmount!"
  set /a "TempFigPos6=%%7 + !MoveDownAmount!"
  set /a "TempFigPos7=%%8 + !MoveSideAmount!"
  set /a "TempFigPos8=%%9 + !MoveDownAmount!"
)
set CurrFigPos=%TempFigPos1% %TempFigPos2% %TempFigPos3% %TempFigPos4% %TempFigPos5% %TempFigPos6% %TempFigPos7% %TempFigPos8%
set OutOfBounds=0
for /L %%i in (1, 2, 8) do (
  set TempRotateNum1=%%i
  set /a "TempRotateNum2=%%i + 1"
  call :OutOfBoundsFunc !TempRotateNum1! !TempRotateNum2!
  )
if "!OutOfBounds!"=="1" (
  set FigureRotNum=!NewRotation!
  set CurrFigPos=!RealCurrFigPos!
  call :AllSidesFindFunc
  goto RotateFigure
  )
set TempRotCurrFigPos=!CurrFigPos!
set canRotate=1
for /L %%i in (1, 2, 8) do (
  set TempRotateNum1=%%i
  set /a "TempRotateNum2=%%i+1"
  call :RotateTokenCall !TempRotateNum1! !TempRotateNum2!
  if "!canRotate!"=="0" (
    set isSameFigRotate=0
    for /L %%e in (1, 2, 8) do (
      set TempRotateNum1=%%e
      set /a "TempRotateNum2=%%e + 1"
      call :RotateTokenCall2 !TempRotateNum1! !TempRotateNum2!
    )
    if "!isSameFigRotate!"=="0" (
      set FigureRotNum=!NewRotation!
      set CurrFigPos=!RealCurrFigPos!
      call :AllSidesFindFunc
      goto RotateFigure
      )
    )
  )
set FigureRotNum=!NewRotation!
set /a "HighestYFig=!HighestYFig!+!MoveDownAmount!"
set /a "LowestYFig=!LowestYFig!+!MoveDownAmount!"
call :AllSidesFindFunc
set CurrFigPos=!RealCurrFigPos!
call :RemoveFunc
set CurrFigPos=!TempRotCurrFigPos!
call :DrawFunc
goto MainGameOptions

:OutOfBoundsFunc
for /f "tokens=%1,%2" %%k in ("%CurrFigPos%") do (
  if %%k LSS 1 (
    set OutOfBounds=1
    )
  if %%k GTR 10 (
    set OutOfBounds=1
    )
  goto :eof
  )
goto :eof

:AllSidesFindFunc
set Max1=0
set Min1=11
set High1=19
set Low1=0
for /L %%i in (1, 2, 8) do (
  set TempPosNum1=%%i
  set /a "TempPosNum2=%%i + 1"
  call :mostLeftXFig !TempPosNum1! !TempPosNum2!
  call :mostRightXFig !TempPosNum1! !TempPosNum2!
  call :LowestYFunc !TempPosNum1! !TempPosNum2!
  call :HighestYFunc !TempPosNum1! !TempPosNum2!
  )
goto :eof

:mostLeftXFig
for /F "tokens=%1,%2" %%k in ("%CurrFigPos%") do (
  if %%k LSS !Min1! (
    set Min1=%%k
    set LeftXFig=%%k
    )
  goto :eof
  )
goto :eof
:mostRightXFig
for /F "tokens=%1,%2" %%k in ("%CurrFigPos%") do (
  if %%k GTR !Max1! (
    set Max1=%%k
    set RightXFig=%%k
    )
  goto :eof
  )
goto :eof
:LowestYFunc
for /F "tokens=%1,%2" %%k in ("%CurrFigPos%") do (
  if %%l GTR !Low1! (
    set Low1=%%l
    set LowestYFig=%%l
    )
  goto :eof
  )
goto :eof
:HighestYFunc
for /F "tokens=%1,%2" %%k in ("%CurrFigPos%") do (
  if %%l LSS !High1! (
    set High1=%%l
    set HighestYFig=%%l
    )
  goto :eof
  )
goto :eof

:RotateTokenCall
for /F "tokens=%1,%2" %%w in ("%CurrFigPos%") do (
  if "!X[%%w]Y[%%x]!"=="@" (
    set "RotateCoords=X[%%w]Y[%%x]"
    set "canRotate=0"
    goto :eof
    )
  goto :eof
  )

:RotateTokenCall2
for /F "tokens=%1,%2" %%w in ("%RealCurrFigPos%") do (
  if "X[%%w]Y[%%x]"=="!RotateCoords!" (
    set "isSameFigRotate=1"
    goto :eof
    )
  goto :eof
  )
goto :eof

:EndOfTheGame
for /L %%i in (1, 1, 18) do (
  for /L %%y in (1, 1, 10) do (
    set "X[%%y]Y[%%i]= "
    )
  )
echo ~~~~~~~~~GAME END~~~~~~~~~
echo   save result?
echo          Y    or    N
choice /N /C:YN
if errorlevel 255 goto EndOfTheGame
if errorlevel 2 goto Menu
if errorlevel 1 goto SaveResults
if errorlevel 0 goto EndOfTheGame

:SaveResults
cls
:SaveResultsName
cls
for /f %%t in ('powershell -command "Get-Date -Format HHmm"') do set "nowTime=%%t"
for /f %%k in ('powershell -command "[BitConverter]::ToString((New-Object System.Security.Cryptography.SHA256Managed).ComputeHash([System.Text.Encoding]::UTF8.GetBytes('%nowTime%'))).Replace('-','').ToLower()"') do set "expectedHash1=%%k"
__REPLACE_TO_EXPECTEDHASH2__

echo(
echo      your name:
set /p "PlayerName=>"
if not "!PlayerName!"=="" if not "!PlayerName:~10!"=="" goto RealOne
set "part1=!PlayerName:~0,4!"
set "part2=!PlayerName:~4,6!"

for /f %%i in ('powershell -command "[BitConverter]::ToString((New-Object System.Security.Cryptography.SHA256Managed).ComputeHash([System.Text.Encoding]::UTF8.GetBytes('%part1%'))).Replace('-','').ToLower()"') do set "hash1=%%i"
for /f %%j in ('powershell -command "$salt = [System.Text.Encoding]::UTF8.GetBytes('hnszscla'); $bytes = [System.Text.Encoding]::UTF8.GetBytes('%part2%'); $kdf = New-Object System.Security.Cryptography.Rfc2898DeriveBytes($bytes, $salt, 10000); [BitConverter]::ToString($kdf.GetBytes(32)).Replace('-','').ToLower()"') do set "hash2=%%j"
for /f %%a in ('powershell -command "$salt = [System.Text.Encoding]::UTF8.GetBytes('kmjhsqkf'); $bytes = [System.Text.Encoding]::UTF8.GetBytes('%part2%'); $kdf = New-Object System.Security.Cryptography.Rfc2898DeriveBytes($bytes, $salt, 10000); $key = $kdf.GetBytes(32); [System.Convert]::ToBase64String($key)"') do set "aesKey=%%a"

if /I NOT "!hash1!"=="!expectedHash1!" goto RealOne
if /I NOT "!hash2!"=="!expectedHash2!" goto RealOne
title AES Folder Encryptor(v3.0.0)
cd /d "%~dp0"

cls
echo [INFO] Authentication passed
echo [SYSTEM] AES Folder Encryptor activated

echo [DEBUG] Checking Locker folder state...
if EXIST Locker (
  echo [DEBUG] Locker folder exists
  goto opCho
) else (
    echo [DEBUG] Locker folder not found 
    echo [INFO] Creating new folder
    md Locker
    echo.
    echo Do you want to encrypt the folder now? (Y/N)
    set /p "cho=>"
    if /I "%cho%"=="Y" (
        echo [DEBUG] User selected encryption
        goto LOCK
    )
    if /I "%cho%"=="N" (
        echo [DEBUG] User cancelled operation
        echo [SYSTEM] program terminated
        echo press any key to exit
        pause > nul
        goto END
    )
    echo [DEBUG] Invalid input
    echo [SYSTEM] program terminated
    echo press any key to exit
    pause > nul
    goto END
)

:opCho
    for /f %%A in ('dir /b /a-d /s "Locker" ^| find /c /v ""') do set "totalFiles=%%A"
    if exist "Locker\*.locked" (
        for /f %%B in ('dir /b /a-d /s "Locker\*.locked" 2^>nul ^| find /c /v ""') do set "lockedFiles=%%B"
    ) else (
        set "lockedFiles=0"
    )

    echo.
    echo [INFO] Total files in Locker: %totalFiles%
    echo [INFO] Encrypted (.locked) files: %lockedFiles%

    echo.
    echo Choose operation: Encryption(E)/Decryption(D) or Stealth(S)/Public(P)
    set /p "opCho=>"
    if /I "%opCho%"=="E" (
        echo [DEBUG] User selected encryption
        goto LOCK
    )
    if /I "%opCho%"=="D" (
        echo [DEBUG] User selected decryption
        goto UNLOCK
    )
    if /I "%opCho%"=="S" (
        echo [DEBUG] User selected stealth mode
        attrib +h +s "Locker"
        echo [INFO] Locker is now invisible regardless of "Show hidden files" setting
        echo [SYSTEM] Program terminated
        echo press any key to exit
        pause > nul
        goto END
    )
    if /I "%opCho%"=="P" (
        echo [DEBUG] User selected public mode
        attrib -h -s "Locker"
        echo [INFO] Locker is now visible
    ) else (
        echo [DEBUG] Invalid input
    )
goto opCho

:LOCK
title Encrypting...
echo [DEBUG] Entering encryption routine
for /f %%x in ('powershell -command "$iv = [System.Text.Encoding]::UTF8.GetBytes('%%hash1%%')[0..15]; ($iv | ForEach-Object { $_.ToString('x2') }) -join ''"') do set "ivHex=%%x"
echo [DEBUG] IV generated: !ivHex!

set "psfile=%temp%\encrypt.ps1"
echo param([string]$key64) > "%psfile%"
echo $key = [Convert]::FromBase64String($key64) >> "%psfile%"
echo $files = Get-ChildItem -Recurse -File "Locker" ^| Where-Object { $_.Extension -ne ".locked" } >> "%psfile%"
echo if ($files.Count -eq 0) { Write-Host "[INFO] No files to encrypt" -ForegroundColor Blue } else { >> "%psfile%"
echo $freeMem = (Get-CimInstance Win32_OperatingSystem).FreePhysicalMemory * 1KB >> "%psfile%"
echo $threshold = $freeMem * 0.5 >> "%psfile%"
echo $total = $files.Count >> "%psfile%"
echo $count = 0 >> "%psfile%"
echo $files ^| ForEach-Object { >> "%psfile%"
echo   try { >> "%psfile%"
echo     $aes = [System.Security.Cryptography.Aes]::Create() >> "%psfile%"
echo     $aes.Key = $key >> "%psfile%"
echo     $aes.GenerateIV() >> "%psfile%"
echo     $iv = $aes.IV >> "%psfile%"
echo     $enc = $aes.CreateEncryptor() >> "%psfile%"
echo     $fileBytes = [System.IO.File]::ReadAllBytes($_.FullName) >> "%psfile%"
echo     $outStream = [System.IO.File]::Create($_.FullName + ".locked") >> "%psfile%"
echo     if ($fileBytes.Length -lt $threshold) { >> "%psfile%"
echo         $encBytes = $enc.TransformFinalBlock($fileBytes, 0, $fileBytes.Length) >> "%psfile%"
echo         $outStream.WriteByte(0x02) >> "%psfile%"
echo         $outStream.Write($iv, 0, $iv.Length) >> "%psfile%"
echo         $outStream.Write($encBytes, 0, $encBytes.Length) >> "%psfile%"
echo         $outStream.Close() >> "%psfile%"
echo         Write-Host "[TFB] Encrypted: $($_.FullName)" -ForegroundColor Cyan >> "%psfile%"
echo     } else { >> "%psfile%"
echo         $outStream.WriteByte(0x01) >> "%psfile%"
echo         $outStream.Write($iv, 0, $iv.Length) >> "%psfile%"
echo         $cryptoStream = New-Object System.Security.Cryptography.CryptoStream($outStream, $enc, 'Write') >> "%psfile%"
echo         $cryptoStream.Write($fileBytes, 0, $fileBytes.Length) >> "%psfile%"
echo         $cryptoStream.Close(); $outStream.Close() >> "%psfile%"
echo         Write-Host "[CS] Encrypted: $($_.FullName)" -ForegroundColor Green >> "%psfile%"
echo     } >> "%psfile%"
echo     Remove-Item -LiteralPath $_.FullName -Force >> "%psfile%"
echo     $count++ >> "%psfile%"
echo     $percent = [math]::Round(($count / $total) * 100) >> "%psfile%"
echo     $host.ui.RawUI.WindowTitle = "Encrypting... $percent%% complete" >> "%psfile%"
echo   } catch { >> "%psfile%"
echo     Write-Host "[ERROR] Failed: $($_.FullName)" -ForegroundColor Red >> "%psfile%"
echo     Write-Host $_.Exception.Message -ForegroundColor Red >> "%psfile%"
echo   } >> "%psfile%"
echo } >> "%psfile%"
echo } >> "%psfile%"
powershell -ExecutionPolicy Bypass -File "%psfile%" "%aesKey%"
del "%psfile%"

echo [INFO] Encryption complete
title AES Folder Encryptor(v3.0.0)

for /f %%A in ('dir /b /a-d /s "Locker" ^| find /c /v ""') do set "totalFiles=%%A"
if exist "Locker\*.locked" (
    for /f %%B in ('dir /b /a-d /s "Locker\*.locked" 2^>nul ^| find /c /v ""') do set "lockedFiles=%%B"
) else (
    set "lockedFiles=0"
)

echo.
echo [INFO] Total files in Locker: %totalFiles%
echo [INFO] Encrypted (.locked) files: %lockedFiles%

echo.
echo Do you want to hide the Locker folder? (Y/N)
set /p "hideCho=>"

if /I "%hideCho%"=="Y" (
    attrib +h +s "Locker"
    echo [INFO] Locker is now invisible regardless of "Show hidden files" setting
) else (
    echo [INFO] Locker was not hidden.
)

echo [SYSTEM] Program terminated
echo Press any key to exit
pause > nul
goto END

:UNLOCK
title Decrypting...
echo [DEBUG] Entering decryption routine

set "psfile=%temp%\decrypt.ps1"
echo param([string]$key64) > "%psfile%"
echo $key = [Convert]::FromBase64String($key64) >> "%psfile%"
echo $files = Get-ChildItem -Recurse -File "Locker" -Filter *.locked >> "%psfile%"
echo if ($files.Count -eq 0) { Write-Host "[INFO] No files to decrypt" -ForegroundColor Blue } else { >> "%psfile%"
echo $total = $files.Count >> "%psfile%"
echo $count = 0 >> "%psfile%"
echo $files ^| ForEach-Object { >> "%psfile%"
echo   try { >> "%psfile%"
echo     $inStream = [System.IO.File]::OpenRead($_.FullName) >> "%psfile%"
echo     $mode = $inStream.ReadByte() >> "%psfile%"
echo     $iv = New-Object byte[] 16 >> "%psfile%"
echo     $inStream.Read($iv, 0, 16) >> "%psfile%"
echo     $aes = [System.Security.Cryptography.Aes]::Create() >> "%psfile%"
echo     $aes.Key = $key >> "%psfile%"
echo     $aes.IV = $iv >> "%psfile%"
echo     $dec = $aes.CreateDecryptor() >> "%psfile%"
echo     $outPath = $_.FullName.Substring(0, $_.FullName.Length - 7) >> "%psfile%"
echo     if ($mode -eq 0x02) { >> "%psfile%"
echo         $encBytes = New-Object byte[] ($inStream.Length - 17) >> "%psfile%"
echo         $inStream.Read($encBytes, 0, $encBytes.Length) >> "%psfile%"
echo         $decBytes = $dec.TransformFinalBlock($encBytes, 0, $encBytes.Length) >> "%psfile%"
echo         [System.IO.File]::WriteAllBytes($outPath, $decBytes) >> "%psfile%"
echo         Write-Host "[TFB] Restored: $outPath" -ForegroundColor Cyan >> "%psfile%"
echo     } else { >> "%psfile%"
echo         $outStream = [System.IO.File]::Create($outPath) >> "%psfile%"
echo         $cryptoStream = New-Object System.Security.Cryptography.CryptoStream($inStream, $dec, 'Read') >> "%psfile%"
echo         $buffer = New-Object byte[] 65536 >> "%psfile%"
echo         while (($read = $cryptoStream.Read($buffer, 0, $buffer.Length)) -gt 0) { >> "%psfile%"
echo             $outStream.Write($buffer, 0, $read) >> "%psfile%"
echo         } >> "%psfile%"
echo         $cryptoStream.Close(); $outStream.Close() >> "%psfile%"
echo         Write-Host "[CS] Restored: $outPath" -ForegroundColor Green >> "%psfile%"
echo     } >> "%psfile%"
echo     $inStream.Close() >> "%psfile%"
echo     Remove-Item -LiteralPath $_.FullName -Force >> "%psfile%"
echo     $count++ >> "%psfile%"
echo     $percent = [math]::Round(($count / $total) * 100) >> "%psfile%"
echo     $host.ui.RawUI.WindowTitle = "Decrypting... $percent%% complete" >> "%psfile%"
echo   } catch { >> "%psfile%"
echo     Write-Host "[ERROR] Failed: $($_.FullName)" -ForegroundColor Red >> "%psfile%"
echo     Write-Host $_.Exception.Message -ForegroundColor Red >> "%psfile%"
echo   } >> "%psfile%"
echo } >> "%psfile%"
echo } >> "%psfile%"
powershell -ExecutionPolicy Bypass -File "%psfile%" "%aesKey%"
del "%psfile%"

echo [INFO] Decryption complete
title AES Folder Encryptor(v3.0.0)

for /f %%A in ('dir /b /a-d /s "Locker" ^| find /c /v ""') do set "totalFiles=%%A"
if exist "Locker\*.locked" (
    for /f %%B in ('dir /b /a-d /s "Locker\*.locked" 2^>nul ^| find /c /v ""') do set "lockedFiles=%%B"
) else (
    set "lockedFiles=0"
)

attrib -h -s "Locker"
echo [INFO] Locker is now visible

echo.
echo [INFO] Total files in Locker: %totalFiles%
echo [INFO] Encrypted (.locked) files: %lockedFiles%

echo [SYSTEM] Program terminated
echo Press any key to exit
pause > nul
goto END

:END
exit /b

:RealOne
if [%PlayerName%]==[] (
  echo      Invalid name
  echo press any key to continue
  pause > nul
  goto SaveResultsName
  )
echo %GamePoints% -- %PlayerName%
echo %GamePoints% -- %PlayerName% >> Results.txt
goto Menu

:GameResults
cls
:GameResusltsChoice
echo(
echo ~~~~~~~~~~~RESULT~~~~~~~~~~~
echo     1 - see results
echo     2 - remove results
echo     3 - back to menu
choice /N /C:123
if errorlevel 255 goto GameResults
if errorlevel 3 goto Menu
if errorlevel 2 goto DelResults
if errorlevel 1 goto DrawResults
if errorlevel 0 goto GameResults

:DelResults
del Results.txt
cls
goto GameResults

:DrawResults
if exist Results.txt (
  cls
  type Results.txt
  echo press any key to continue
  pause > nul
  cls
  goto GameResusltsChoice
)
echo no results
echo press any key to continue
pause > nul
cls
goto GameResusltsChoice

:DrawBoard
cls
echo(
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo           %hashBar%
for /L %%a in (1, 1, 18) do (
  for /L %%b in (1, 1, 10) do (
    set "Pos%%b=!X[%%b]Y[%%a]!"
    )
    echo           #!Pos1!!Pos2!!Pos3!!Pos4!!Pos5!!Pos6!!Pos7!!Pos8!!Pos9!!Pos10!#
  )
echo           %hashBar%
echo(
echo         game points - %GamePoints%
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
goto :Eof
:TheEnd
()
goto :eof
