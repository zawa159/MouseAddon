;�g���C�A�C�R���̕ύX
TraySetIcon(A_ScriptDir "\src\icon_160672_256.png")

; �u���E�U�̃O���[�v�쐬 (Opera = Chrome_WidgetWin_1)
GroupAdd("Browser", "ahk_class Chrome_WidgetWin_1")
GroupAdd("Browser", "ahk_class MozillaWindowClass")

;�w�肵���u���E�U�݂̂œ���
#HotIf WinActive("ahk_class Browser")


/***************************************************************
    �E�{�^�� �{ �z�C�[�� �^�u�؂�ւ�����ݒ�
****************************************************************
*/

;({�E�{�^��} && {�}�E�X�z�C�[��Down})�ETab�؂�ւ�
~RButton & WheelDown::
{
    send("^{Tab}")
  return
}

;({�E�{�^��} && {�}�E�X�z�C�[��UP})��Tab�؂�ւ�
~RButton & WheelUP::
{
    send("^+{Tab}")
  return
}

