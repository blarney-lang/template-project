# Blarney template project

If you want to start developing your own
[blarney](https://github.com/blarney-lang/blarney) application or
library, you've come to the right place! This is a bare minimum
application, most of which can be reused when starting any new
project.

## Overview

To see what the template application provides, first clone the repo

```
git clone https://github.com/blarney-lang/template-project
```

and then run it using cabal:

```
cabal run
```

This will produce a `Verilog` directory which you can simulate using
Verilator:

```
cd Verilog
make
./Main
```

You should see the circuit count to 10, over the course of 10 clock
cycles, and then terminate.

The project contains the following files.

  * `Makefile`: Contains a handful of build targets that
    invoke cabal in various ways. Have a [look](Makefile).

  * `blarney-template.project.cabal`: This introduces a dependency on
    on blarney and enables all of the GHC extensions that we have found
    useful when working with blarney.

  * `cabal.project`: This tells cabal where to find blarney,
    specifically the master branch on github.

  * `src/Main.hs`: A very simple blarney circuit.
