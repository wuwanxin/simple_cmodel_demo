set_directive_loop_merge "scaledown/scaledown_row"
#set_directive_loop_tripcount是一条高层次综合（High-Level Synthesis，HLS）工具命令，用于指定循环的迭代次数。
#在使用高层次综合工具将高级语言代码（如C、C++等）转换为硬件描述语言（如VHDL、Verilog等）时，循环迭代次数对于性能和资源利用至关重要。
#通过设置循环的迭代次数，可以对生成的硬件进行优化，以获得更好的性能和资源利用率。
set_directive_loop_tripcount -max 8192 -avg 1920 "scaledown/scaledown_row"
set_directive_pipeline "scaledown/scaledown_col"
set_directive_loop_tripcount -max 8192 -avg 1080 "scaledown/scaledown_col"
set_directive_array_partition -type complete -dim 1 "scaledown" y_linebuffer
set_directive_array_partition -type complete -dim 1 "scaledown" u_linebuffer
set_directive_array_partition -type complete -dim 1 "scaledown" v_linebuffer
