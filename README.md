SCIP.jl
=======

Julia interface to the SCIP solver

This doesn't do much yet. Check back later. The following test creates a SCIP
model, along with a few other things.

```
julia test/test.jl
```

Building SCIP.jl
----------------

This will change, but if you feel the need to hack on SCIP.jl, you should be able to do the following:

### Build a SCIP library

Download and decompress the [source distribution](http://scip.zib.de/#download) for SCIP 3.1.1. Compile a shared version of the library without extraneous dependencies.

```bash
$ cd scipoptsuite-3.1.1
$ make scipoptlib GMP=false ZLIB=false READLINE=false SHARED=true
```

You should now have a file that looks something like `lib/lib/libscipopt-3.1.1.linux.x86_64.gnu.opt.so`. Remember the location of this file for later.

### Clone SCIP.jl and copy the SCIP library into it

First clone `SCIP.jl`.

```bash
$ git clone git@github.com:ryanjoneil/SCIP.jl.git
```

SCIP.jl needs to have the SCIP library availble to it. The simplest way to do that *for now* is to copy that `.so` file referenced above into the root `SCIP.jl` directory. If you're on Linux, use a `.so` extension here. Mac users should use `.dylib` extension, and Windows users should use `.dll`.

```bash
$ cp <location of scip library> SCIP.jl
$ cd SCIP.jl
$ ln -s <scip library> libscipopt.so
```

You should now be able to run the test code.

```bash
$ export LD_LIBRARY_PATH=.
$ julia test/test.jl
```

### Optional: Generate the Julia code for SCIP.jl

The current structure of the project includes:

* XML files describing the SCIP C interface are stored in the `xml/` directory.
* Go templates for the `SCIP.jl` interface are in `templates/`.
* A `bin/scipgen` binary loads necessary data from `xml/` and converts the templates into Julia source under the `src/` directory.

If you need to change the Julia code under `src/wrapped` *always* change it under `templates/` and regenerate the Julia code as follows.

```bash
$ make # this builds bin/scipgen
$ ./bin/scipgen xml/ templates/ src/
```
