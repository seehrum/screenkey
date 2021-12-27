#!/bin/bash

# Screenkey v0.1
# Screenkey is a tool that shows keystrokes on terminal

# to find the id detail use the command below 
# xev | awk -F'[ )]+' '/^KeyPress|^ButtonPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }

# Date 2021-12-27
# GNU bash, versão 5.0.17(1)-release (x86_64-pc-linux-gnu)
# Dependencies: xinput

# Keyboard
# System Locale: LANG=pt_BR.UTF-8
# LANGUAGE=pt_BR:pt:en
# VC Keymap: n/a
# X11 Layout: br
# X11 Model: pc105

# reverse the stream direction on terminal
#	tput cup 0 0  
#	tput ri	

cat<<EOF 
Screenkey 0.1
-------------
CTRL+C for exit
EOF

# trap ctrl-c and call ctrl_c()
trap ctrl_c INT

function ctrl_c() {
echo "EXIT"
stty echo
tput cvvis
}

stty -echo # invisible text
tput civis # invisible cursor 

INFO_1='KEY: '
INFO_2='MOUSE: '

# KEYBOARD
KEYBOARD_ESC='detail: 9'
_ESC='ESC'
KEYBOARD_F1='detail: 67'
_F1='F1'
KEYBOARD_F2='detail: 68'
_F2='F2'
KEYBOARD_F3='detail: 69'
_F3='F3'
KEYBOARD_F4='detail: 70'
_F4='F4'
KEYBOARD_F5='detail: 71'
_F5='F5'
KEYBOARD_F6='detail: 72'
_F6='F6'
KEYBOARD_F7='detail: 73'
_F7='F7'
KEYBOARD_F8='detail: 74'
_F8='F8'
KEYBOARD_F9='detail: 75'
_F9='F9'
KEYBOARD_F10='detail: 76'
_F10='F10'
KEYBOARD_F11='detail: 95'
_F11='F11'
KEYBOARD_F12='detail: 96'
_F12='F12'
KEYBOARD_PrintScreen='detail: 107'
_PrintScreen='PrintScreen'
KEYBOARD_Pause='detail: 127'
_Pause='Pause'
KEYBOARD_Delete='detail: 119'
_Delete='Delete'
KEYBOARD_Home='detail: 110'
_Home='Home'
KEYBOARD_Pg_Up='detail: 112'
_Pg_Up='Page Up'
KEYBOARD_Pg_Dn='detail: 117'
_Pg_Dn='Page Down'
KEYBOARD_End='detail: 115'
_End='End'
KEYBOARD_Single_Quote='detail: 49'
_Single_Quote="'"
KEYBOARD_Number_1='detail: 10'
_Number_1='1'
KEYBOARD_Number_2='detail: 11'
_Number_2='2'
KEYBOARD_Number_3='detail: 12'
_Number_3='3'
KEYBOARD_Number_4='detail: 13'
_Number_4='4'
KEYBOARD_Number_5='detail: 14'
_Number_5='5'
KEYBOARD_Number_6='detail: 15'
_Number_6='6'
KEYBOARD_Number_7='detail: 16'
_Number_7='7'
KEYBOARD_Number_8='detail: 17'
_Number_8='8'
KEYBOARD_Number_9='detail: 18'
_Number_9='9'
KEYBOARD_Number_0='detail: 19'
_Number_0='0'
KEYBOARD_Dash='detail: 20'
_Dash='-'
KEYBOARD_Equal='detail: 21'
_Equal='='
KEYBOARD_BackSpace='detail: 22'
_BackSpace='BackSpace'
KEYBOARD_NumLock='detail: 77'
_NumLock='NumLock'
KEYBOARD_Numpad_Slash='detail: 106'
_Numpad_Slash='Numpad /'
KEYBOARD_Numpad_Asterix='detail: 63'
_Numpad_Asterix='Numpad *'
KEYBOARD_Numpad_Dash='detail: 82'
_Numpad_Dash='Numpad -'
KEYBOARD_Tab='detail: 23'
_Tab='Tab'
KEYBOARD_Q='detail: 24'
_Q='Q'
KEYBOARD_W='detail: 25'
_W='W'
KEYBOARD_E='detail: 26'
_E='E'
KEYBOARD_R='detail: 27'
_R='R'
KEYBOARD_T='detail: 28'
_T='T'
KEYBOARD_Y='detail: 29'
_Y='Y'
KEYBOARD_U='detail: 30'
_U='U'
KEYBOARD_I='detail: 31'
_I='I'
KEYBOARD_O='detail: 32'
_O='O'
KEYBOARD_P='detail: 33'
_P='P'
KEYBOARD_Acute_Accent='detail: 34'
_Acute_Accent='´'
KEYBOARD_Left_Bracket='detail: 35'
_Left_Bracket='['
KEYBOARD_Enter='detail: 36'
_Enter='Enter'
KEYBOARD_Numpad_7='detail: 79'
_Numpad_7='Numpad 7'
KEYBOARD_Numpad_8='detail: 80'
_Numpad_8='Numpad 8'
KEYBOARD_Numpad_9='detail: 81'
_Numpad_9='Numpad 9'
KEYBOARD_Plus_Sign='detail: 86'
_Numpad_Plus_Sign='Numpad +'
KEYBOARD_CapsLock='detail: 66'
_CapsLock='CapsLock'
KEYBOARD_A='detail: 38'
_A='A'
KEYBOARD_S='detail: 39'
_S='S'
KEYBOARD_D='detail: 40'
_D='D'
KEYBOARD_F='detail: 41'
_F='F'
KEYBOARD_G='detail: 42'
_G='G'
KEYBOARD_H='detail: 43'
_H='H'
KEYBOARD_J='detail: 44'
_J='J'
KEYBOARD_K='detail: 45'
_K='K'
KEYBOARD_L='detail: 46'
_L='L'
KEYBOARD_Cedilla='detail: 47'
_Cedilla='Ç'
KEYBOARD_Tilde='detail: 48'
_Tilde='~'
KEYBOARD_Right_Bracket='detail: 51'
_Right_Bracket=']'
KEYBOARD_Numpad_4='detail: 83'
_Numpad_4='Numpad 4'
KEYBOARD_Numpad_5='detail: 84'
_Numpad_5='Numpad 5'
KEYBOARD_Numpad_6='detail: 85'
_Numpad_6='Numpad 6'
KEYBOARD_Left_Shift='detail: 50'
_Left_Shift='Left Shift'
KEYBOARD_BackSlash='detail: 94'
_BackSlash='\'
KEYBOARD_Z='detail: 52'
_Z='Z'
KEYBOARD_X='detail: 53'
_X='X'
KEYBOARD_C='detail: 54'
_C='C'
KEYBOARD_V='detail: 55'
_V='V'
KEYBOARD_B='detail: 56'
_B='B'
KEYBOARD_N='detail: 57'
_N='N'
KEYBOARD_M='detail: 58'
_M='M'
KEYBOARD_Comma='detail: 59'
_Comma=','
KEYBOARD_Period='detail: 60'
_Period='.'
KEYBOARD_Semicolon='detail: 61'
_Semicolon=';'
KEYBOARD_Right_Shift='detail: 62'
_Right_Shift='Right Shift'
KEYBOARD_Numpad_1='detail: 87'
_Numpad_1='Numpad 1'
KEYBOARD_Numpad_2='detail: 88'
_Numpad_2='Numpad 2'
KEYBOARD_Numpad_3='detail: 89'
_Numpad_3='Numpad 3'
KEYBOARD_Numpad_Enter='detail: 104'
_Numpad_Enter='Numpad Enter'
KEYBOARD_Left_Ctrl='detail: 37'
_Left_Ctrl='Left Ctrl'
KEYBOARD_Window='detail: 133'
_Window='Window'
KEYBOARD_Left_Alt='detail: 64'
_Left_Alt='Left Alt'
KEYBOARD_Space='detail: 65'
_Space='Space'
KEYBOARD_Right_Alt='detail: 108'
_Right_Alt='Alt Gr'
KEYBOARD_Menu='detail: 135'
_Menu='Menu'
KEYBOARD_Slash='detail: 97'
_Slash='/'
KEYBOARD_Left_Arrow='detail: 113'
_Left_Arrow='Left Arrow'
KEYBOARD_Up_Arrow='detail: 111'
_Up_Arrow='Up Arrow'
KEYBOARD_Down_Arrow='detail: 116'
_Down_Arrow='Down Arrow'
KEYBOARD_Right_Arrow='detail: 114'
_Right_Arrow='Right Arrow'
KEYBOARD_Numpad_0='detail: 90'
_Numpad_0='Numpad 0'
KEYBOARD_Numpad_Period='detail: 91'
_Numpad_Period='Numpad ,'

# MOUSE
MOUSE_Left='detail: 1'
_Left_Click="Left Click"
MOUSE_Middle='detail: 2'
_Middle_Click="Middle Click"
MOUSE_Right='detail: 3'
_Right_Click="Right Click"
MOUSE_Wheel_Up='detail: 4'
_Wheel_Up="Wheel Up"
MOUSE_Wheel_Down='detail: 5'
_Wheel_Down="Wheel Down"

xinput test-xi2 --root | grep -A2 --line-buffered "EVENT type 2\|RawButtonRelease" | while read -r line;
do
    if [[ $line == ${KEYBOARD_ESC} ]];then
	echo "$INFO_1 $_ESC"
elif [[ $line == ${KEYBOARD_F1} ]];then
	echo "$INFO_1 $_F1"
elif [[ $line == ${KEYBOARD_F2} ]];then
	echo "$INFO_1 $_F2"
elif [[ $line == ${KEYBOARD_F3} ]];then
	echo "$INFO_1 $_F3"
elif [[ $line == ${KEYBOARD_F4} ]];then
	echo "$INFO_1 $_F4"
elif [[ $line == ${KEYBOARD_F5} ]];then
	echo "$INFO_1 $_F5"
elif [[ $line == ${KEYBOARD_F6} ]];then
	echo "$INFO_1 $_F6"
elif [[ $line == ${KEYBOARD_F7} ]];then
	echo "$INFO_1 $_F7"
elif [[ $line == ${KEYBOARD_F8} ]];then
	echo "$INFO_1 $_F8"
elif [[ $line == ${KEYBOARD_F9} ]];then
	echo "$INFO_1 $_F9" 
elif [[ $line == ${KEYBOARD_F10} ]];then
	echo "$INFO_1 $_F10" 
elif [[ $line == ${KEYBOARD_F11} ]];then
	echo "$INFO_1 $_F11" 
elif [[ $line == ${KEYBOARD_F12} ]];then
	echo "$INFO_1 $_F12"  
elif [[ $line == ${KEYBOARD_PrintScreen} ]];then
	echo "$INFO_1 $_PrintScreen"   
elif [[ $line == ${KEYBOARD_Pause} ]];then
	echo "$INFO_1 $_Pause"   
elif [[ $line == ${KEYBOARD_Delete} ]];then
	echo "$INFO_1 $_Delete"   
elif [[ $line == ${KEYBOARD_Home} ]];then
	echo "$INFO_1 $_Home"   
elif [[ $line == ${KEYBOARD_Pg_Up} ]];then
	echo "$INFO_1 $_Pg_Up"   
elif [[ $line == ${KEYBOARD_Pg_Dn} ]];then
	echo "$INFO_1 $_Pg_Dn"   
elif [[ $line == ${KEYBOARD_End} ]];then
	echo "$INFO_1 $_End"   
elif [[ $line == ${KEYBOARD_Single_Quote} ]];then
	echo "$INFO_1 $_Single_Quote"   
elif [[ $line == ${KEYBOARD_Number_1} ]];then
	echo "$INFO_1 $_Number_1"   
elif [[ $line == ${KEYBOARD_Number_2} ]];then
	echo "$INFO_1 $_Number_2" 
elif [[ $line == ${KEYBOARD_Number_3} ]];then
	echo "$INFO_1 $_Number_3" 
elif [[ $line == ${KEYBOARD_Number_4} ]];then
	echo "$INFO_1 $_Number_4" 
elif [[ $line == ${KEYBOARD_Number_5} ]];then
	echo "$INFO_1 $_Number_5" 
elif [[ $line == ${KEYBOARD_Number_6} ]];then
	echo "$INFO_1 $_Number_6" 
elif [[ $line == ${KEYBOARD_Number_7} ]];then
	echo "$INFO_1 $_Number_7" 
elif [[ $line == ${KEYBOARD_Number_8} ]];then
	echo "$INFO_1 $_Number_8" 
elif [[ $line == ${KEYBOARD_Number_9} ]];then
	echo "$INFO_1 $_Number_9" 
elif [[ $line == ${KEYBOARD_Number_0} ]];then
	echo "$INFO_1 $_Number_0"
elif [[ $line == ${KEYBOARD_Dash} ]];then
	echo "$INFO_1 $_Dash" 
elif [[ $line == ${KEYBOARD_Equal} ]];then
	echo "$INFO_1 $_Equal" 
elif [[ $line == ${KEYBOARD_BackSpace} ]];then
	echo "$INFO_1 $_BackSpace" 
elif [[ $line == ${KEYBOARD_NumLock} ]];then
	echo "$INFO_1 $_NumLock"
elif [[ $line == ${KEYBOARD_Numpad_Slash} ]];then
	echo "$INFO_1 $_Numpad_Slash" 
elif [[ $line == ${KEYBOARD_Numpad_Asterix} ]];then
	echo "$INFO_1 $_Numpad_Asterix" 
elif [[ $line == ${KEYBOARD_Numpad_Dash} ]];then
	echo "$INFO_1 $_Numpad_Dash" 
elif [[ $line == ${KEYBOARD_Tab} ]];then
	echo "$INFO_1 $_Tab" 
elif [[ $line == ${KEYBOARD_Q} ]];then
	echo "$INFO_1 $_Q" 
elif [[ $line == ${KEYBOARD_W} ]];then
	echo "$INFO_1 $_W" 
elif [[ $line == ${KEYBOARD_E} ]];then
	echo "$INFO_1 $_E" 
elif [[ $line == ${KEYBOARD_R} ]];then
	echo "$INFO_1 $_R" 
elif [[ $line == ${KEYBOARD_T} ]];then
	echo "$INFO_1 $_T" 
elif [[ $line == ${KEYBOARD_Y} ]];then
	echo "$INFO_1 $_Y" 
elif [[ $line == ${KEYBOARD_U} ]];then
	echo "$INFO_1 $_U" 
elif [[ $line == ${KEYBOARD_I} ]];then
	echo "$INFO_1 $_I" 
elif [[ $line == ${KEYBOARD_O} ]];then
	echo "$INFO_1 $_O" 
elif [[ $line == ${KEYBOARD_P} ]];then
	echo "$INFO_1 $_P" 
elif [[ $line == ${KEYBOARD_Acute_Accent} ]];then
	echo "$INFO_1 $_Acute_Accent" 
elif [[ $line == ${KEYBOARD_Left_Bracket} ]];then
	echo "$INFO_1 $_Left_Bracket" 
elif [[ $line == ${KEYBOARD_Enter} ]];then
	echo "$INFO_1 $_Enter" 
elif [[ $line == ${KEYBOARD_Numpad_7} ]];then
	echo "$INFO_1 $_Numpad_7" 
elif [[ $line == ${KEYBOARD_Numpad_8} ]];then
	echo "$INFO_1 $_Numpad_8" 
elif [[ $line == ${KEYBOARD_Numpad_9} ]];then
	echo "$INFO_1 $_Numpad_9" 
elif [[ $line == ${KEYBOARD_Plus_Sign} ]];then
	echo "$INFO_1 $_Numpad_Plus_Sign" 
elif [[ $line == ${KEYBOARD_CapsLock} ]];then
	echo "$INFO_1 $_CapsLock" 
elif [[ $line == ${KEYBOARD_A} ]];then
	echo "$INFO_1 $_A" 
elif [[ $line == ${KEYBOARD_S} ]];then
	echo "$INFO_1 $_S" 
elif [[ $line == ${KEYBOARD_D} ]];then
	echo "$INFO_1 $_D" 
elif [[ $line == ${KEYBOARD_F} ]];then
	echo "$INFO_1 $_F" 
elif [[ $line == ${KEYBOARD_G} ]];then
	echo "$INFO_1 $_G" 
elif [[ $line == ${KEYBOARD_H} ]];then
	echo "$INFO_1 $_H" 
elif [[ $line == ${KEYBOARD_J} ]];then
	echo "$INFO_1 $_J" 
elif [[ $line == ${KEYBOARD_K} ]];then
	echo "$INFO_1 $_K" 
elif [[ $line == ${KEYBOARD_L} ]];then
	echo "$INFO_1 $_L" 
elif [[ $line == ${KEYBOARD_Cedilla} ]];then
	echo "$INFO_1 $_Cedilla" 
elif [[ $line == ${KEYBOARD_Tilde} ]];then
	echo "$INFO_1 $_Tilde" 
elif [[ $line == ${KEYBOARD_Right_Bracket} ]];then
	echo "$INFO_1 $_Right_Bracket" 
elif [[ $line == ${KEYBOARD_Numpad_4} ]];then
	echo "$INFO_1 $_Numpad_4" 
elif [[ $line == ${KEYBOARD_Numpad_5} ]];then
	echo "$INFO_1 $_Numpad_5" 
elif [[ $line == ${KEYBOARD_Numpad_6} ]];then
	echo "$INFO_1 $_Numpad_6" 
elif [[ $line == ${KEYBOARD_Left_Shift} ]];then
	echo "$INFO_1 $_Left_Shift" 
elif [[ $line == ${KEYBOARD_BackSlash} ]];then
	echo "$INFO_1 $_BackSlash" 
elif [[ $line == ${KEYBOARD_Z} ]];then
	echo "$INFO_1 $_Z" 
elif [[ $line == ${KEYBOARD_X} ]];then
	echo "$INFO_1 $_X" 
elif [[ $line == ${KEYBOARD_C} ]];then
	echo "$INFO_1 $_C" 
elif [[ $line == ${KEYBOARD_V} ]];then
	echo "$INFO_1 $_V" 
elif [[ $line == ${KEYBOARD_B} ]];then
	echo "$INFO_1 $_B" 
elif [[ $line == ${KEYBOARD_N} ]];then
	echo "$INFO_1 $_N" 
elif [[ $line == ${KEYBOARD_M} ]];then
	echo "$INFO_1 $_M" 
elif [[ $line == ${KEYBOARD_Comma} ]];then
	echo "$INFO_1 $_Comma" 
elif [[ $line == ${KEYBOARD_Period} ]];then
	echo "$INFO_1 $_Period" 
elif [[ $line == ${KEYBOARD_Semicolon} ]];then
	echo "$INFO_1 $_Semicolon" 
elif [[ $line == ${KEYBOARD_Right_Shift} ]];then
	echo "$INFO_1 $_Right_Shift" 
elif [[ $line == ${KEYBOARD_Numpad_1} ]];then
	echo "$INFO_1 $_Numpad_1" 
elif [[ $line == ${KEYBOARD_Numpad_2} ]];then
	echo "$INFO_1 $_Numpad_2" 
elif [[ $line == ${KEYBOARD_Numpad_3} ]];then
	echo "$INFO_1 $_Numpad_3" 
elif [[ $line == ${KEYBOARD_Numpad_Enter} ]];then
	echo "$INFO_1 $_Numpad_Enter" 
elif [[ $line == ${KEYBOARD_Left_Ctrl} ]];then
	echo "$INFO_1 $_Left_Ctrl" 
elif [[ $line == ${KEYBOARD_Window} ]];then
	echo "$INFO_1 $_Window" 
elif [[ $line == ${KEYBOARD_Left_Alt} ]];then
	echo "$INFO_1 $_Left_Alt" 
elif [[ $line == ${KEYBOARD_Space} ]];then
	echo "$INFO_1 $_Space" 
elif [[ $line == ${KEYBOARD_Right_Alt} ]];then
	echo "$INFO_1 $_Right_Alt" 
elif [[ $line == ${KEYBOARD_Menu} ]];then
	echo "$INFO_1 $_Menu" 
elif [[ $line == ${KEYBOARD_Slash} ]];then
	echo "$INFO_1 $_Slash" 
elif [[ $line == ${KEYBOARD_Left_Arrow} ]];then
	echo "$INFO_1 $_Left_Arrow" 
elif [[ $line == ${KEYBOARD_Up_Arrow} ]];then
	echo "$INFO_1 $_Up_Arrow" 
elif [[ $line == ${KEYBOARD_Down_Arrow} ]];then
	echo "$INFO_1 $_Down_Arrow" 
elif [[ $line == ${KEYBOARD_Right_Arrow} ]];then
	echo "$INFO_1 $_Right_Arrow" 
elif [[ $line == ${KEYBOARD_Numpad_0} ]];then
	echo "$INFO_1 $_Numpad_0" 
elif [[ $line == ${KEYBOARD_Numpad_Period} ]];then
	echo "$INFO_1 $_Numpad_Period" 
elif [[ $line == ${MOUSE_Left} ]];then
	echo "$INFO_2 $_Left_Click" 
elif [[ $line == ${MOUSE_Middle} ]];then
	echo "$INFO_2 $_Middle_Click" 
elif [[ $line == ${MOUSE_Right} ]];then
	echo "$INFO_2 $_Right_Click" 
elif [[ $line == ${MOUSE_Wheel_Up} ]];then
	echo "$INFO_2 $_Wheel_Up" 
elif [[ $line == ${MOUSE_Wheel_Down} ]];then
	echo "$INFO_2 $_Wheel_Down" 
    fi
done
