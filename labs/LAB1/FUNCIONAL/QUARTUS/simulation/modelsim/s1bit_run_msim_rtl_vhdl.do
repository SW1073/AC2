transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/eloi/Documents/AC2/labs/LAB1/FUNCIONAL/CODIGO/s1bit.vhd}

