;トレイアイコンの変更
TraySetIcon(A_ScriptDir "\src\icon_160672_256.png")

; ブラウザのグループ作成 (Opera = Chrome_WidgetWin_1)
GroupAdd("Browser", "ahk_class Chrome_WidgetWin_1")
GroupAdd("Browser", "ahk_class MozillaWindowClass")

;指定したブラウザのみで動作
#HotIf WinActive("ahk_class Browser")


/***************************************************************
    右ボタン ＋ ホイール タブ切り替え動作設定
****************************************************************
*/

;({右ボタン} && {マウスホイールDown})右Tab切り替え
~RButton & WheelDown::
{
    send("^{Tab}")
  return
}

;({右ボタン} && {マウスホイールUP})左Tab切り替え
~RButton & WheelUP::
{
    send("^+{Tab}")
  return
}

