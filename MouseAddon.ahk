;�g���C�A�C�R���̕ύX
TraySetIcon(A_ScriptDir "\src\icon_160672_256.png")

; �u���E�U�̃O���[�v�쐬 (Opera = Chrome_WidgetWin_1)
GroupAdd("Browser", "ahk_class Chrome_WidgetWin_1")
GroupAdd("Browser", "ahk_class MozillaWindowClass")

;�w�肵���u���E�U�݂̂œ���
#HotIf WinActive("ahk_class Browser")

/***************************************************************
     ���X�N���[���ƉE�X�N���[������ݒ�
****************************************************************/

#SingleInstance Force

; MB5�i�}�E�X5�{�^���j�ō��X�N���[��
XButton2::
{
    while GetKeyState("XButton2", "P") ; MB5��������Ă���ԌJ��Ԃ�
    {
        Send("{WheelLeft}") ; ���X�N���[��
        Sleep(50) ; �X�N���[���Ԋu�i�����\�j
    }
  return
}

; MB4�i�}�E�X4�{�^���j�ŉE�X�N���[��
XButton1::
{
    while GetKeyState("XButton1", "P") ; MB4��������Ă���ԌJ��Ԃ�
    {
        Send("{WheelRight}") ; �E�X�N���[��
        Sleep(50) ; �X�N���[���Ԋu�i�����\�j
    }
  return
}

/***************************************************************
    �E�{�^�� �{ �z�C�[�� �^�u�؂�ւ�����ݒ�
****************************************************************/

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

