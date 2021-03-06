$PBExportHeader$w_tictactoe.srw
forward
global type w_tictactoe from window
end type
type st_3 from statictext within w_tictactoe
end type
type p_o from picture within w_tictactoe
end type
type p_x from picture within w_tictactoe
end type
type st_1 from statictext within w_tictactoe
end type
type p_q7 from picture within w_tictactoe
end type
type p_q8 from picture within w_tictactoe
end type
type p_q9 from picture within w_tictactoe
end type
type p_q4 from picture within w_tictactoe
end type
type p_q5 from picture within w_tictactoe
end type
type p_q6 from picture within w_tictactoe
end type
type p_q3 from picture within w_tictactoe
end type
type p_q2 from picture within w_tictactoe
end type
type p_q1 from picture within w_tictactoe
end type
end forward

global type w_tictactoe from window
integer width = 5326
integer height = 3776
boolean titlebar = true
string title = "TicTacToe"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 31484426
string icon = "AppIcon!"
boolean center = true
st_3 st_3
p_o p_o
p_x p_x
st_1 st_1
p_q7 p_q7
p_q8 p_q8
p_q9 p_q9
p_q4 p_q4
p_q5 p_q5
p_q6 p_q6
p_q3 p_q3
p_q2 p_q2
p_q1 p_q1
end type
global w_tictactoe w_tictactoe

forward prototypes
private subroutine change ()
end prototypes

private subroutine change ();
end subroutine

on w_tictactoe.create
this.st_3=create st_3
this.p_o=create p_o
this.p_x=create p_x
this.st_1=create st_1
this.p_q7=create p_q7
this.p_q8=create p_q8
this.p_q9=create p_q9
this.p_q4=create p_q4
this.p_q5=create p_q5
this.p_q6=create p_q6
this.p_q3=create p_q3
this.p_q2=create p_q2
this.p_q1=create p_q1
this.Control[]={this.st_3,&
this.p_o,&
this.p_x,&
this.st_1,&
this.p_q7,&
this.p_q8,&
this.p_q9,&
this.p_q4,&
this.p_q5,&
this.p_q6,&
this.p_q3,&
this.p_q2,&
this.p_q1}
end on

on w_tictactoe.destroy
destroy(this.st_3)
destroy(this.p_o)
destroy(this.p_x)
destroy(this.st_1)
destroy(this.p_q7)
destroy(this.p_q8)
destroy(this.p_q9)
destroy(this.p_q4)
destroy(this.p_q5)
destroy(this.p_q6)
destroy(this.p_q3)
destroy(this.p_q2)
destroy(this.p_q1)
end on

type st_3 from statictext within w_tictactoe
integer x = 9
integer y = 828
integer width = 1102
integer height = 220
integer textsize = -30
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16959466
long backcolor = 19276280
string text = "Estou pronto"
boolean focusrectangle = false
end type

event clicked;IF( player = '') THEN
	MessageBox(gs_sistema, "Você não selecionou uma opção !!!")
END IF
end event

type p_o from picture within w_tictactoe
integer x = 526
integer y = 540
integer width = 206
integer height = 232
string picturename = "o.jpg"
boolean focusrectangle = false
end type

event clicked;//[  ] [  ] [  ] 
//[  ] [X] [  ] 
//[  ] [  ] [  ]
p_q1.enabled = true
p_q2.enabled = true
p_q3.enabled = true
p_q4.enabled = true
p_q5.enabled = false
p_q6.enabled = true
p_q7.enabled = true
p_q8.enabled = true
p_q9.enabled = true

player = 'o'
Char arr[3, 3]
//arr[1,1]  arr[1,2] arr[1,3]
//arr[2,1]  arr[2,2] arr[2,3]
//arr[3,1]  arr[3,2] arr[3,3]
arr[2,2] = 'x'
end event

type p_x from picture within w_tictactoe
integer x = 233
integer y = 536
integer width = 201
integer height = 232
string picturename = "x.jpg"
boolean focusrectangle = false
end type

event clicked;Char lc_x
SELECT
	X
INTO
	:lc_x
FROM 
	JogoDaVelha
Using
	sqlca;
	
IF SQLCA.SQLCODE <> 1 THEN
	IF lc_x = 'F' THEN
	//	p_x.visible = true
	//	p_o.visible = true	
	UPDATE JoGoDaVelha
	SET x = 'T'
	Using 
	Sqlca;	
	END IF
	player = 'x'
	commit using sqlca;
END IF
		
end event

type st_1 from statictext within w_tictactoe
integer x = 174
integer y = 160
integer width = 928
integer height = 244
integer textsize = -30
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 31484426
string text = "Play with:"
boolean focusrectangle = false
end type

type p_q7 from picture within w_tictactoe
integer x = 1129
integer y = 1956
integer width = 832
integer height = 704
string picturename = "box.jpg"
boolean focusrectangle = false
end type

event clicked;IF player = 'x' THEN
	this.picturename = "x.jpg"
	return
END IF
this.picturename = "o.jpg"

end event

type p_q8 from picture within w_tictactoe
integer x = 2126
integer y = 1952
integer width = 832
integer height = 704
string picturename = "box.jpg"
boolean focusrectangle = false
end type

event clicked;IF player = 'x' THEN
	this.picturename = "x.jpg"
	return
END IF
this.picturename = "o.jpg"

end event

type p_q9 from picture within w_tictactoe
integer x = 3086
integer y = 1944
integer width = 832
integer height = 704
string picturename = "box.jpg"
boolean focusrectangle = false
end type

event clicked;IF player = 'x' THEN
	this.picturename = "x.jpg"
	return
END IF
this.picturename = "o.jpg"

end event

type p_q4 from picture within w_tictactoe
integer x = 1106
integer y = 1172
integer width = 832
integer height = 704
string picturename = "box.jpg"
boolean focusrectangle = false
end type

event clicked;IF player = 'x' THEN
	this.picturename = "x.jpg"
	return
END IF
this.picturename = "o.jpg"

end event

type p_q5 from picture within w_tictactoe
integer x = 2098
integer y = 1148
integer width = 832
integer height = 704
string picturename = "box.jpg"
boolean focusrectangle = false
end type

event clicked;IF player = 'x' THEN
	this.picturename = "x.jpg"
	return
END IF
this.picturename = "o.jpg"

end event

type p_q6 from picture within w_tictactoe
integer x = 3090
integer y = 1140
integer width = 832
integer height = 704
string picturename = "box.jpg"
boolean focusrectangle = false
end type

event clicked;IF player = 'x' THEN
	this.picturename = "x.jpg"
	return
END IF
this.picturename = "o.jpg"

end event

type p_q3 from picture within w_tictactoe
integer x = 3095
integer y = 340
integer width = 832
integer height = 704
string picturename = "box.jpg"
boolean focusrectangle = false
end type

event clicked;IF player = 'x' THEN
	this.picturename = "x.jpg"
	return
END IF
this.picturename = "o.jpg"

end event

type p_q2 from picture within w_tictactoe
integer x = 2107
integer y = 340
integer width = 832
integer height = 704
string picturename = "box.jpg"
boolean focusrectangle = false
end type

event clicked;IF player = 'x' THEN
	this.picturename = "x.jpg"
	return
END IF
this.picturename = "o.jpg"

end event

type p_q1 from picture within w_tictactoe
integer x = 1138
integer y = 348
integer width = 832
integer height = 704
string picturename = "box.jpg"
boolean focusrectangle = false
end type

event clicked;IF player = 'x' THEN
	this.picturename = "x.jpg"
	return
END IF
this.picturename = "o.jpg"

end event

