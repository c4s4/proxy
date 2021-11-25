# Parent makefiles at https://github.com/c4s4/make
include ~/.make/python.mk

.DEFAULT_GOAL :=
default: lint

lint: py-lint # Lint source code
