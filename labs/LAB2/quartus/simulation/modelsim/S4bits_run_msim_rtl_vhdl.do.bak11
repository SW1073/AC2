transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/jafeth/uni/ac2/AC2/labs/LAB2/SUMA/COMPONENTES/SUM1BIT/CODIGO/s1bit.vhd}
vcom -93 -work work {/home/jafeth/uni/ac2/AC2/labs/LAB2/SUMA/SUM4/CODIGO/S4bits.vhd}

vcom -93 -work work {/home/jafeth/uni/ac2/AC2/labs/LAB2/quartus/../SUMA/SUM4/PRUEBAS/prueba_s4bits.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  prueba_s4bits

do /home/jafeth/uni/ac2/AC2/labs/LAB2/quartus/../SUMA/SUM4/PRUEBAS/formato_ventanas.do
