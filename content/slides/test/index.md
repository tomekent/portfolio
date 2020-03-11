---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Test"
summary: ""
authors: []
tags: []
categories: []
date: 2020-02-26T09:46:05Z
slides:
  # Choose a theme from https://github.com/hakimel/reveal.js#theming
  theme: black
  # Choose a code highlighting style (if highlighting enabled in `params.toml`)
  #   Light style: github. Dark style: dracula (default).
  highlight_style: dracula
---

# Title

Author Name

---

## Python
... Hey
```python
if x<x_lim:
    run_me(x)
else:
    run_you(x)
```



<body>
       <style type="text/css">
           #header-left {
               position: absolute;
               top: 0%;
               left: 0%;
           }
           #header-right {
               position: absolute;
               top: 0%;
               right: 0%;
           }
           #footer-left {
               position: absolute;
               bottom: 0%;
               left: 0%;
           }
       </style>

       <div id="hidden" style="display:none;">
           <div id="header">
               <div id="header-left">…</div>
               <div id="header-right">…</div>
               <div id="footer-left">…</div>
           </div>
       </div>

       <div class="reveal">
           <div class="slides">
               …
           </div>
       </div>

       <script src="reveal.js/lib/js/head.min.js"></script>
       <script src="reveal.js/js/reveal.js"></script>

       <script>
           …
       </script>

       <script src="jquery/jquery-2.1.3.min.js"></script>

       <script type="text/javascript">
           var header = $('#header').html();
           if ( window.location.search.match( /print-pdf/gi ) ) {
               $('.slides > section').prepend(header);
           }
           else {
               $('.slides').prepend(header);
           }
       </script>
   <body>
