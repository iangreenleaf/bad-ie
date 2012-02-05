all: html javascript

javascript: warning bad-ie.js.erb
	erb bad-ie.js.erb > build/bad-ie.js
	INCLUDE_JQUERY=true erb bad-ie.js.erb > build/bad-ie-standalone.js

html: warning test

warning: warning.haml
	haml warning.haml build/warning.html

test: warning test.haml
	haml test.haml test/index.html
