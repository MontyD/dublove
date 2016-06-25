<!DOCTYPE html>

<html lang="$ContentLocale">
  <head>
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    $MetaTags(false)
    <!--[if lt IE 9]>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
    <![endif]-->
    <link href='https://fonts.googleapis.com/css?family=Josefin+Sans:400,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Bad+Script' rel='stylesheet' type='text/css'>
    <script type="text/javascript">
    !function(){function e(e,n,t){"use strict";var o=window.document.createElement("link"),a=n||window.document.getElementsByTagName("script")[0],i=window.document.styleSheets;return o.rel="stylesheet",o.href=e,o.media="only x",a.parentNode.insertBefore(o,a),o.onloadcssdefined=function(e){for(var n,t=0;t<i.length;t++)i[t].href&&i[t].href===o.href&&(n=!0);n?e():setTimeout(function(){o.onloadcssdefined(e)})},o.onloadcssdefined(function(){o.media=t||"all"}),o}function n(e,n){e.onload=function(){e.onload=null,n&&n.call(e)},"isApplicationInstalled"in navigator&&"onloadcssdefined"in e&&e.onloadcssdefined(n)}!function(t){var o=function(a,i){"use strict";if(a&&3===a.length){var r=t.navigator,d=t.document,s=t.Image,c=!(!d.createElementNS||!d.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect||!d.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#Image","1.1")||t.opera&&-1===r.userAgent.indexOf("Chrome")||-1!==r.userAgent.indexOf("Series40")),l=new s;l.onerror=function(){o.method="png",o.href=a[2],e(a[2])},l.onload=function(){var t=1===l.width&&1===l.height,r=a[t&&c?0:t?1:2];t&&c?o.method="svg":t?o.method="datapng":o.method="png",o.href=r,n(e(r),i)},l.src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==",d.documentElement.className+=" grunticon"}};o.loadCSS=e,o.onloadCSS=n,t.grunticon=o}(this)}();
    grunticon(["$ThemeDir/icons/icons.data.svg.css", "$ThemeDir/icons/icons.data.png.css", "$ThemeDir/icons/icons.fallback.css"], grunticon.svgLoadedCallback);
    </script>
    <noscript>
        <link href="$ThemeDir/icons/icons.data.svg.css" rel="stylesheet">
    </noscript>
  </head>
  <body>

    $Layout

  </body>

</html>
