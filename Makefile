all: html javascript css

javascript: warning bad-ie.js.erb
	erb bad-ie.js.erb > build/bad-ie.js
	INCLUDE_JQUERY=true erb bad-ie.js.erb > build/bad-ie-standalone.js

css: style.scss
	sass style.scss build/style.css

html: warning test

warning: warning.haml
	haml warning.haml build/warning.html

test: warning test.haml
	haml test.haml test/test.html
	INCLUDE_JQUERY=true haml test.haml test/standalone.html
	ALWAYS_DISPLAY=true haml test.haml test/always.html

gh-pages: all
	git update-ref refs/heads/gh-pages master
	git push -f origin gh-pages
