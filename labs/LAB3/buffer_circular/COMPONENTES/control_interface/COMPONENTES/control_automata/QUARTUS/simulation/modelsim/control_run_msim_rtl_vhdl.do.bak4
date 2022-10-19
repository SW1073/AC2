transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/jafeth/uni/ac2/AC2/labs/LAB3/buffer_circular/tipos_ctes_pkg/retardos_buffer_pkg.vhd}
vcom -93 -work work {/home/jafeth/uni/ac2/AC2/labs/LAB3/buffer_circular/tipos_ctes_pkg/cte_tipos_buffer_pkg.vhd}
vcom -93 -work work {/home/jafeth/uni/ac2/AC2/labs/LAB3/buffer_circular/COMPONENTES/control_interface/COMPONENTES/componentes_control_automata_pkg/componentes_control_automata_pkg.vhd}
vcom -93 -work work {/home/jafeth/uni/ac2/AC2/labs/LAB3/buffer_circular/COMPONENTES/control_interface/COMPONENTES/acceso/puntero/COMPONENTES/registro_automata/CODIGO/reg_1.vhd}
vcom -93 -work work {/home/jafeth/uni/ac2/AC2/labs/LAB3/buffer_circular/COMPONENTES/control_interface/COMPONENTES/control_automata/CODIGO/control.vhd}

vcom -93 -work work {/home/jafeth/uni/ac2/AC2/labs/LAB3/buffer_circular/COMPONENTES/control_interface/COMPONENTES/control_automata/QUARTUS/../PRUEBAS/prueba_control.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  prueba_control

do /home/jafeth/uni/ac2/AC2/labs/LAB3/buffer_circular/COMPONENTES/control_interface/COMPONENTES/control_automata/QUARTUS/../PRUEBAS/formato_ventanas.do
