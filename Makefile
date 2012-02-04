all: warning javascript

warning: warning.haml
	haml warning.haml build/warning.html

javascript: warning bad-ie.js.erb
	erb bad-ie.js.erb > build/bad-ie.js
