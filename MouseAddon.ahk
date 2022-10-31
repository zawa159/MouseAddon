;トレイアイコンの変更
Menu, Tray, Icon, ./src\icon_160672_256.png

;ブラウザのグループ作成(Opera = Chorome_WindgetWin_1)
GroupAdd Browser, ahk_class Chrome_WidgetWin_1
GroupAdd Browser, ahk_class MozillaWindowClass

;指定したブラウザのみで動作
#ifWinActive ahk_group Browser

/***************************************************************
    拡張ボタン設定
****************************************************************
*/
/*
;({拡張ボタン2(上)}) 右にスクロール
XButton2::
    if(GetKeyState("XButton1","P")){
        return
    }
    Loop{
        if(!GetKeyState("XButton2","P")){
            break
        }
        send,{ShiftDown}{WheelUP}
        send,{ShiftUP}
        sleep,100
    }    
return

;({拡張ボタン1(下)}) 左にスクロール
XButton1::
    if(GetKeyState("XButton2","P")){
        return
    }
    Loop{
        if(!GetKeyState("XButton1","P")){
            break
        }
        send,{ShiftDown}{WheelDown}
        send,{ShiftUP}
        sleep,100
    }
return
*/
/***************************************************************
    右ボタン ＋ ホイール タブ切り替え動作設定
****************************************************************
*/

;({右ボタン} && {マウスホイールDown})右Tab切り替え
~RButton & WheelDown::
    send, ^{Tab}    
return

;({右ボタン} && {マウスホイールUP})左Tab切り替え
~RButton & WheelUP::
    send,^+{Tab}
return


