runtestdir = \
       @ls $(1)/*.coffee | xargs \
       ./node_modules/.bin/mocha --compilers coffee:coffee-script -u $(2)\
       --colors --timeout 10000

test:
	$(call runtestdir, "./test", "tdd")

.PHONY: test clean
