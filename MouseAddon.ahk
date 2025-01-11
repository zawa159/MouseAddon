;トレイアイコンの変更
TraySetIcon(A_ScriptDir "\src\icon_160672_256.png")

; ブラウザのグループ作成 (Opera = Chrome_WidgetWin_1)
GroupAdd("Browser", "ahk_class Chrome_WidgetWin_1")
GroupAdd("Browser", "ahk_class MozillaWindowClass")

;指定したブラウザのみで動作
#HotIf WinActive("ahk_class Browser")

/***************************************************************
     左スクロールと右スクロール動作設定
****************************************************************/

#SingleInstance Force

; MB5（マウス5ボタン）で左スクロール
XButton2::
{
    while GetKeyState("XButton2", "P") ; MB5が押されている間繰り返す
    {
        Send("{WheelLeft}") ; 左スクロール
        Sleep(50) ; スクロール間隔（調整可能）
    }
  return
}

; MB4（マウス4ボタン）で右スクロール
XButton1::
{
    while GetKeyState("XButton1", "P") ; MB4が押されている間繰り返す
    {
        Send("{WheelRight}") ; 右スクロール
        Sleep(50) ; スクロール間隔（調整可能）
    }
  return
}

/***************************************************************
    右ボタン ＋ ホイール タブ切り替え動作設定
****************************************************************/

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

