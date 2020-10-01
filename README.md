# xinterp

An interpreter for assigning dynamic semantics to Xanadu

## Build Status

* [![Build Status](https://travis-ci.org/xanadu-lang/xinterp.svg?branch=master)](https://travis-ci.org/xanadu-lang/xinterp) Ubuntu

### Download

```
git clone --recursive https://github.com/xanadu-lang/xinterp.git
```

### Prerequisites

ATS2-0.4.0 or a later version is required,
which is available [here](http://www.ats-lang.org/Downloads.html)

### Build with ATS2

```
(cd xinterp && sh build.sh)
```

### Testing

```
cd xinterp
./bin/xinterp -h
./bin/xinterp -d srcgen/TEST/prelude/kfibo.dats
./bin/xinterp -d srcgen/TEST/prelude/sieve.dats
```

### Remarks

- Xinterp is for debugging the implementation of Xanadu

- Xinterp is *not* meant to be a practical interpreter for Xanadu

- This project should be constantly under construction for quite some time
