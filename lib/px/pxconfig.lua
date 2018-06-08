----------------------------------------------
-- PerimeterX(www.perimeterx.com) Nginx plugin
-- Version 1.5.0
-- Release date: 05.04.2016
----------------------------------------------

local _M = {}

_M.px_enabled = true

-- ##  Configuration Block ##

_M.px_appId = 'PX_APP_ID'
_M.cookie_secret = 'COOKIE_SECRET'
_M.auth_token = 'PX_AUTH_TOKEN'
_M.blocking_score = 60
_M.cookie_encrypted = true
_M.enable_server_calls = true
_M.send_page_requested_activity = true
_M.block_enabled = true
_M.captcha_enabled = true
_M.px_debug = true
_M.sensitive_routes_prefix = {}
_M.sensitive_routes_suffix = {}

_M.s2s_timeout = 1000
_M.px_maxbuflen = 10
_M.score_header_name = 'X-PX-SCORE'
_M.px_port = 443
_M.ssl_enabled = true
_M.custom_block_url = nil
_M.enabled_routes = {}
_M.custom_logo = nil
_M.css_ref = nil
_M.js_ref = nil
-- -- ## END - Configuration block ##

-- ## Filter Configuration ##

_M.whitelist = {
    uri_full = { _M.custom_block_url },
    uri_prefixes = {},
    uri_suffixes = { '.css', '.bmp', '.tif', '.ttf', '.docx', '.woff2', '.js', '.pict', '.tiff', '.eot', '.xlsx', '.jpg', '.csv', '.eps', '.woff', '.xls', '.jpeg', '.doc', '.ejs', '.otf', '.pptx', '.gif', '.pdf', '.swf', '.svg', '.ps', '.ico', '.pls', '.midi', '.svgz', '.class', '.png', '.ppt', '.mid', 'webp', '.jar' },
    ip_addresses = {},
    ua_full = {},
    ua_sub = {}
}

return _M
