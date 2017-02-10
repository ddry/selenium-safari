.PHONY: co coveralls mo mocha s-first s-second s-instance s-full

co:
	coffee -co . source

coveralls:
	istanbul cover ./node_modules/mocha/bin/_mocha spec/full.js --report lcovonly -- -R spec && cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js && rm -rf ./coverage

mo: co mocha

mocha:
	make s-first && sleep 2 && make s-second && sleep 2 && make s-instance && sleep 2

s-first \
s-second \
s-instance \
s-full: s-%:
	./node_modules/.bin/mocha \
	--no-exit \
	spec/$*.js \
	--check-leaks
