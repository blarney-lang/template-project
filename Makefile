# Generate Verilog and a basic Verilator project
.PHONY: gen
gen:
	cabal run

# Simulate using the in-Haskell simulator
.PHONY: sim
sim:
	cabal run blarney-hello-world -- --simulate

.PHONY: clean
clean:
	cabal clean
	rm -rf Verilog
