# Blarney template project

If you want to start developing your own
[Blarney](https://github.com/blarney-lang/blarney) application or
library, you've come to the right place! This is a bare minimum
Blarney application, most of which can be reused when starting any new
project. Before starting, make sure you have all [Blarney's
prerequisites](https://github.com/blarney-lang/blarney#prerequisites)
installed.

## Overview

To see what the template application provides, first clone the repo

```
git clone https://github.com/blarney-lang/template-project
```

and then run it using cabal:

```
cabal run
```

This will produce a circuit in the `Verilog` directory which you can
simulate using Verilator:

```
cd Verilog
make
./Main
```

You should see the circuit count to 10, over the course of 10 clock
cycles, and then terminate.

## Directory structure

The project contains the following files.

  * `Makefile`: Contains a handful of build targets that
    invoke cabal in various ways. Have a [look](Makefile).

  * `blarney-template-project.cabal`: This introduces a dependency on
    on Blarney and enables all of the GHC extensions that we have found
    useful when working with Blarney.

  * `cabal.project`: This tells cabal where to find Blarney,
    specifically the master branch on github.

  * `src/Main.hs`: A very simple Blarney circuit.
