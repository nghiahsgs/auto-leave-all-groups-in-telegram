#include<ImageSearch.au3>
#include<Array.au3>

Func waitUntilImageAppear($filePath,$timeout=3)
    dim $results[2] = [-1,-1]
    
    for $iWait=0 to $timeout
        ToolTip('waiting email...'&$iWait,0,0)
        $x=0
        $y=0
        $search=_ImageSearch($filePath,1,$x,$y,0)
        if $search=1 Then
            $results[0]=$x
            $results[1]=$y
            return $results
        EndIf
        Sleep(1000)
    Next

    return $results
EndFunc