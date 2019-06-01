install: install-deps

run:
	npm run babel-node -- 'src/bin/codegen.ts'

install-deps:
	npm

build:
	rm -rf dist
	tsc

test:
	npm test --watch

lint:
	npm run eslint .

publish:
	npm publish

.PHONY: test

start:
	yarn run babel-node dist/src/bin/codegen.js './__tests__/schema.json'
