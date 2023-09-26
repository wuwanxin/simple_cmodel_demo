#make file for module level verification


all:  scaledown

#before 2021.1 vivado_hls
#after 2021.1 vitis_hls
cmd = vitis_hls

clean:
	rm -rf scaledown

scaledown:
	$(cmd) -f scaledown.tcl

