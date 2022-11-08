transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {alu.vho}

vcom -93 -work work {/home/jafeth/uni/ac2/AC2/labs/LAB4/PROC_SERIE_alu/PROCESADOR/CAMINO_DATOS/UCalculo/COMPONENTES/ALU/QUARTUS/../PRUEBAS/alu_ref.vhd}
vcom -93 -work work {/home/jafeth/uni/ac2/AC2/labs/LAB4/PROC_SERIE_alu/PROCESADOR/CAMINO_DATOS/UCalculo/COMPONENTES/ALU/QUARTUS/../PRUEBAS/prueba_alu.vhd}

vsim -t 1ps -L altera_mf -L altera -L lpm -L sgate -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L gate_work -L work -voptargs="+acc"  prueba_alu

do /home/jafeth/uni/ac2/AC2/labs/LAB4/PROC_SERIE_alu/PROCESADOR/CAMINO_DATOS/UCalculo/COMPONENTES/ALU/QUARTUS/../PRUEBAS/formato_ventanas.do
