HP-41 OS4 build interopability
==============================

This is an umbrella project that includes several projects with the
purpose to set up a debug environment.

It defines a combined HP-41 module which containts the operating
system (mainframe), the OS4 extension and two application modules that
makes use of OS4, Boost41 and Ladybug.

The combined module which contains 12 pages (48K) of HP-41 MCODE can
be loaded into the Calypsi debugger/simulator and the whole
interaction between the modules can be studied in a its source
debugger. There is a VS Code project so you can use a nice IDE to run
it.


General instructions
---------------------

You need to clone this project with `--recurse-submodule` option.
To build and debug it you need the Calypsi tools for the HP-41 Nut
target.

VS Code is recommended for working on it, but it may be possible to
use some other IDE front ends that support the GDB MI command
protocol.

It is also possible to debug it using a command line interpreter and
while that may sound intimdidating, it is actually quite user
friendly. The main thing you lack there is stepping inside the source
text editor, but you will be able to see the immediate lines around
where you are.
