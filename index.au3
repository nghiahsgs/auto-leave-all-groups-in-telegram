#include<utils_image.au3>

while True


$first_msg_x = 316
$first_msg_y = 115
MouseClick('main',$first_msg_x,$first_msg_y)


$filePath = 'images/see-more.PNG'
$results = waitUntilImageAppear($filePath)
;~ _ArrayDisplay($results)
if $results[0] And $results[1] Then
  MouseClick('main',$results[0],$results[1])
Else
  MsgBox(0,0,0)
EndIf

$filePath = 'images/leave.PNG'
$results = waitUntilImageAppear($filePath)
;~ _ArrayDisplay($results)
if $results[0] And $results[1] Then
  MouseClick('main',$results[0],$results[1])
Else
  MsgBox(0,0,0)
EndIf

$filePath = 'images/leave2.PNG'
$results = waitUntilImageAppear($filePath)
;~ _ArrayDisplay($results)
if $results[0] And $results[1] Then
  MouseClick('main',$results[0],$results[1])
Else
  MsgBox(0,0,0)
EndIf
WEnd

