;�g���C�A�C�R���̕ύX
Menu, Tray, Icon, ./src\icon_160672_256.png

;�u���E�U�̃O���[�v�쐬(Opera = Chorome_WindgetWin_1)
GroupAdd Browser, ahk_class Chrome_WidgetWin_1
GroupAdd Browser, ahk_class MozillaWindowClass

;�w�肵���u���E�U�݂̂œ���
#ifWinActive ahk_group Browser

/***************************************************************
    �g���{�^���ݒ�
****************************************************************
*/
/*
;({�g���{�^��2(��)}) �E�ɃX�N���[��
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

;({�g���{�^��1(��)}) ���ɃX�N���[��
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
    �E�{�^�� �{ �z�C�[�� �^�u�؂�ւ�����ݒ�
****************************************************************
*/

;({�E�{�^��} && {�}�E�X�z�C�[��Down})�ETab�؂�ւ�
~RButton & WheelDown::
    send, ^{Tab}    
return

;({�E�{�^��} && {�}�E�X�z�C�[��UP})��Tab�؂�ւ�
~RButton & WheelUP::
    send,^+{Tab}
return


