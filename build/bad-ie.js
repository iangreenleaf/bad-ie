
     var badIeJQuery = jQuery

var root = badIeJQuery("script").last().attr('src');
root = root.replace(/\/[^\/]*$/, '');
badIeJQuery(document).ready(function($) {
  var fragment = "<div id='ie_upgrade_message'>  <h1>Your browser is letting you down.</h1>  <div class='explanation'>Switch to a different browser and experience a safer, more beautiful Internet.</div>  <ul class='suggested_browsers'>    <li class='firefox'>      <a href='https://www.mozilla.com/en-US/firefox/new/'>Firefox</a>    </li>    <li class='chrome'>      <a href='http://www.google.com/chrome'>Chrome</a>    </li>  </ul></div>";
  $("body").prepend($(fragment));
  var css = $("<link type='text/css' rel='stylesheet' media='all' href='" + root + "/style.css' />");
  $("head").append(css);
});
