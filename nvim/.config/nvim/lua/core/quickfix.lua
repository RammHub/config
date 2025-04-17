vim.opt.errorformat = {

	-- xcelium errors
	--"xmvlog: *%t\\,%.%# (%f\\,%l\\|%c): %m",
	"xmvlog: *E\\,%.%# (%f\\,%l\\|%c): %m",
	"xmvlog: *W\\,%.%# (%f\\,%l\\|%c): %m",
	"xmelab: *E\\,%.%# (%f\\,%l\\|%c): %m",
	-- " From https://github.com/ryanlee/vim/blob/master/vimfiles/compiler/ncverilog.vim
	"%A%p|,%Z%.%#: *%t\\,%.%# (%f\\,%l|%c):%m",
	-- " Ignore warnings (keep a copy looking for %t instead of W to define errors as errors)
	"%-G%.%# *W\\,%.%#(%f\\,%l|%c): %m",
	-- " Add abillity to parse verilog errors (%t matches 'E' or 'W' for type):
	"%.%# *%t\\,%.%#(%f\\,%l|%c): %m",
	-- " Assertions don't have the column information:
	"%.%# *%t\\,%.%#(%f\\,%l): %m",
	-- "set errorformat=%.%#\ *%t\\,%.%#(%f\\,%l):\ %m
	-- " Add abillity to parse NULL pointer errors:
	"%E%>%.%# *E\\,%m,%C%.%#File: %f\\, line = %l\\, pos = %c,%Z%m",
	-- " Add abillity to parse assertion errors %.%# is like .* in regex:
	"%.%#: *%t\\,%.%# (%f\\,%l): %m",
	-- " Add abillity to parse UVM errors:
	"UVM_%tRROR %f(%l) %m",
	"UVM_%tRROR: %m",
	"%-GUVM_ERROR :%p0",
	-- "UVM_FATAL is an error that has no file associate with it.
	-- " If we add it to errorformat, we lose visibility of "UVM_FATAL"
	-- " This is an issue with the simulation report...
	"UVM_FATAL %f(%l) %m",
	"%-GUVM_FATAL :%p0",
	"UVM_FATAL %m",
	-- "Ignore tool version information 'ncvlog(64): version......'
	"-G^ncelab(64):%.%#",
	"-G^ncvlog(64):%.%#",
	"-G^xrun(64):%.%#",
	"%f(%l):%m",
	--"This is subtractive as it catches the tool name as an error

	-- add uvm errors and warnings
}
