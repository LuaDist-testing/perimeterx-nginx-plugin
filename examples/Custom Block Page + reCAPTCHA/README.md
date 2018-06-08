reCATPCHA Example 
-----------------
> This folder contains an example of a reCAPTCHA implementation. The original PerimeterX reCAPTCHA page has been customized, with a different color background, some icons and some colored texts.

In order to use the contents of this page, first seperate the head and body tags from the rest of the html.

```html
<head>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
          media="screen, print" rel="stylesheet" type="text/css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <meta charset="utf-8">
    <title>
        Access to This Page Has Been Blocked
    </title>
    <style>
        h2 {
            color: white;
            font-size: 32px;
        }

        p {
            width: 60%;
            margin: 0 auto;
            font-size: 35px;
        }

        body {
            background-color: black;
            font-family: "Open Sans";
            margin: 5%;
            color: white;
            text-align: center;
        }

        img {
            widht: 180px;
        }

        a {
            color: #2020B1;
            text-decoration: blink;
        }

        a:hover {
            color: white;
        }

        i {
            color:#E5001D;
        }
    </style>
    <script src="https://www.google.com/recaptcha/api.js">
    </script>
    <!-- <script>
        window.px_vid = "' .. vid .. '"; function handleCaptcha(response) { var name = "_pxCaptcha"; var expiryUtc = new Date( Date.now() + 1000 * 10 ).toUTCString(); var cookieParts = [name, "=", response + ":" + window.px_vid + ":' .. uuid .. '", "; expires=", expiryUtc, "; path=/"]; document.cookie = cookieParts.join(""); location.reload(); }
    </script> -->
</head>

```
Uncomment the `<script>` tag at the end of the head element.
Create a one liner from the edited head tag (an easy way is to use an online tool such as [Compress HTML](http://www.textfixer.com/html/compress-html-compression.php)). and place it inside the `pxblock.lua` file under the `local head` variable.

Repeat the same process for the body elemnt.

```html
<body cz-shortcut-listen="true">
<div>
    <img src="http://storage.googleapis.com/instapage-thumbnails/035ca0ab/e94de863/1460594818-1523851-467x110-perimeterx.png">
    </img>
</div>
<h2>
    Custom Main Title
</h2>
<div style="font-size: 24px;">
    <br>
    <div style="color:#E5001D">
        <i class="fa fa-user-secret fa-6" aria-hidden="true" style="font-size: 130px"></i><br>
        For some reason, we think you are a bot !
    </div>
    <br>
    <div style="margin-bottom: 20px; color: gold">
        This may have happend because:
    </div>
    <div>
        <i class="fa fa-dot-circle-o" aria-hidden="true"></i> JavaScript is disabled or not running properly.
    </div>
    <div>
        <i class="fa fa-dot-circle-o" aria-hidden="true"></i> Your browsing behaviour is not likely to be that of a regular user.
    </div>
    <br>
    To read more about the bot defender solution:
    <a href="https://www.perimeterx.com/bot-defender">
        https://www.perimeterx.com/bot-defender
    </a>
    <br>
    If you think the blocking was done by mistake, contact the site administrator.
    <br>
    <br>
    <div>
        <div class="g-recaptcha" data-callback="handleCaptcha" data-sitekey="6Lcj-R8TAAAAABs3FrRPuQhLMbp5QrHsHufzLf7b"
             data-theme="dark" style="margin:0 auto; width:304px">
        </div>
        <span style="font-size: 14px; color:#E5001D ">Solve the reCAPTCHA above to prove you are not a bot!</span>
    </div>
    <br>
    <!-- ' .. ref_str .. ' -->
</div>
</body>
```

Uncomment the `' .. ref_str ..'` part, and convert to a one-liner.
Paste the one-liner into the `local body` variable.
