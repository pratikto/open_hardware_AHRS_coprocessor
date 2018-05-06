DEVICE   := CycloneV
TARGETS  := gpp.exe emu.exe fpga.exe fpga_ghdl.exe
FILE	 := mult
            

CXX      := i++ --component madgwick5
RM     := rm -rfv

#Get Path to our include files. Our compiler knows where they are but gcc/g++ doesn't
HLS_INCLUDE := $(shell dirname `which i++`)/../include

.PHONY: test
test: $(TARGETS)
	@$(foreach t,$(TARGETS),echo ./$(t); ./$(t); echo "";)


.PHONY: all
all: $(TARGETS)

.PHONY: clean
clean:
	-$(RM) $(TARGETS) *.out *.exe *.o $(foreach t,$(TARGETS),$(t).prj)

gpp.exe : $(FILE).cpp
	g++ -I$(HLS_INCLUDE) $< -o $@

emu.exe: $(FILE).cpp 
	# $(CXX) $(CXXFLAGS) -I/usr/include/x86_64-linux-gnu/c++/5/ -march=x86-64 $< -o $@
	 $(CXX) $(CXXFLAGS) -I$(HLS_INCLUDE) -march=x86-64 $< -o $@

fpga.exe: $(FILE).cpp
	$(CXX) $(CXXFLAGS) -I$(HLS_INCLUDE) -march=$(DEVICE) $< -o $@
	# $(CXX) $(CXXFLAGS) -I/usr/include/x86_64-linux-gnu/c++/5/ -dpicpppath /usr/bin/gcc -march=$(DEVICE) $< -o $@

fpga_ghdl.exe: $(FILE).cpp
	$(CXX) $(CXXFLAGS) -ghdl -march=$(DEVICE) $^ -o $@

