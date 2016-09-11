<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <base href="{{ base_url }}" id="base_href" data-fierce-base="{{ "#{base_url}#{fierce_src}" }}">
  
  <meta name="viewport" content="width=device-width">
  <meta name="viewport" content="initial-scale=1.0">
  
  <title>{{ pageTitle | default("") }}</title>
  
  {% include_css 'css/public.css' %}
  
  {% for cssUrl in cssUrls %}
    {% include_css cssUrl %}
  {% endfor %}
  
  {% for scriptUrl in scriptUrls %}
    {% include_script scriptUrl %}
  {% endfor %}
  
  {# created using realfavicongenerator.com #}
  <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png">
  <link rel="icon" type="image/png" href="favicon/favicon-32x32.png" sizes="32x32">
  <link rel="icon" type="image/png" href="favicon/favicon-16x16.png" sizes="16x16">
  <link rel="manifest" href="favicon/manifest.json">
  <link rel="mask-icon" href="favicon/safari-pinned-tab.svg" color="#5bbad5">
  <link rel="shortcut icon" href="favicon/favicon.ico">
  <meta name="msapplication-config" content="favicon/browserconfig.xml">
  <meta name="theme-color" content="#ffffff">
  
  {% if not dev_mode %}
    <!-- Google Analytics -->
  {% endif %}
</head>
<body class="{{ page_class }}">

<div id="header">
  <input type="checkbox" id="nav-toggle">
  <label id="nav-toggle-label-1" for="nav-toggle">&nbsp;</label>
  <label id="nav-toggle-label-2" for="nav-toggle">&nbsp;</label>
  <label id="nav-toggle-label-3" for="nav-toggle">&nbsp;</label>
  <label id="nav-toggle-label-4" for="nav-toggle">&nbsp;</label>

  {% nav %}
</div>

<div id="content">
  {{ contentViewHtml|raw }}
</div>

</body>
</html>
