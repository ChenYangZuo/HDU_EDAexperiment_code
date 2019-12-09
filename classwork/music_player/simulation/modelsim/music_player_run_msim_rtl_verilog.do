transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/classwork/music_player {D:/Document/Quartus II Project Files/classwork/music_player/music_player.v}
vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/classwork/music_player {D:/Document/Quartus II Project Files/classwork/music_player/fdiv.v}
vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/classwork/music_player {D:/Document/Quartus II Project Files/classwork/music_player/cnt138t.v}
vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/classwork/music_player {D:/Document/Quartus II Project Files/classwork/music_player/f_code.v}
vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/classwork/music_player {D:/Document/Quartus II Project Files/classwork/music_player/speak.v}
vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/classwork/music_player {D:/Document/Quartus II Project Files/classwork/music_player/pll.v}
vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/classwork/music_player {D:/Document/Quartus II Project Files/classwork/music_player/music.v}
vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/classwork/music_player/db {D:/Document/Quartus II Project Files/classwork/music_player/db/pll_altpll.v}

