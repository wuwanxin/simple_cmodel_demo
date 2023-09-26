这个项目是从xkisp中扣出来的一个非常基本的项目，用于学习
该项目是在算法开发阶段，用c进行仿真
这个项目里的每一个文件都必须懂！这个看懂了xkisp看起来就很简单了
步骤：
1）先写算法    （对应目录src，src可以理解为库函数，它确实也可以编译成库，但是该项目中直接使用vitis的集成工具命令直接编译成函数） 
2）写一个单元测试   （对应目录tb，tb里就是main函数）
3）编译       （对应目录tcl，tcl是vitis hls的脚本文件）
4）运行        （运行需要调用的测试文件在tv）


编译的附加说明：
tcl是vitis hls的脚本文件，和cmake很类似
使用vitis hls的csim_design命令会编译并生成可执行文件，默认生成目录是.tcl文件目录下，比如说该工程就是scaledown
执行脚本（vitis_hls -f xxx.tcl）会生成一个构建目录，在该构建目录中会有Makefile（csim.mk），实际上最终执行了什么就是Makefile里定义的。(cmake的脚本是CMakeList.txt, 执行cmake xxxx生成构建目录，构建目录中会生成Makefile，Makefile的作用不再赘述，自行学习)
目录src，src可以理解为库函数，目前的工程没有编成库，之后会看看怎么直接编成库
