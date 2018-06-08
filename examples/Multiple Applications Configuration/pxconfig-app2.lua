---------------------------------------------
-- PerimeterX(www.perimeterx.com) Nginx plugin
-- Version 1.1.4
-- Release date: 07.11.2016
----------------------------------------------

local _M = {}

_M.px_enabled = true

-- ##  Configuration Block ##
_M.px_appId = 'APP_ID_APP2'
_M.cookie_secret = 'COOKIE_SECRET_APP2'
_M.auth_token = 'JWT_AUTH_TOKEN_APP2'
_M.blocking_score = 50
_M.cookie_encrypted = true
_M.enable_server_calls = true
_M.send_page_requested_activity = true
_M.block_enabled = false 
_M.captcha_enabled = true
_M.custom_block_url = nil
_M.score_header_name = 'X-PX-SCORE'
_M.score_header_enabled = false
_M.px_debug = true

_M.s2s_timeout = 1000
_M.px_maxbuflen = 10
_M.px_server = _M.px_appId == 'APP_ID' and 'sapi.perimeterx.com' or 'sapi-' .. string.lower(_M.px_appId) .. '.glb1.perimeterx.net'
_M.px_port = 443
_M.ssl_enabled = true
_M.nginx_collector_path = '/api/v1/collector/s2s'
_M.risk_api_path = '/api/v1/risk'
_M.captcha_api_path = '/api/v1/risk/captcha'
_M.enabled_routes = {}

-- ## Filter Configuration ##

_M.whitelist = {
	uri_full = { _M.custom_block_url },
	uri_prefixes = {},
	uri_suffixes = {'.css', '.bmp', '.tif', '.ttf', '.docx', '.woff2', '.js', '.pict', '.tiff', '.eot', '.xlsx', '.jpg', '.csv', '.eps', '.woff', '.xls', '.jpeg', '.doc', '.ejs', '.otf', '.pptx', '.gif', '.pdf', '.swf', '.svg', '.ps', '.ico', '.pls', '.midi', '.svgz', '.class', '.png', '.ppt', '.mid', 'webp', '.jar'},
	ip_addresses = {},
	ua_full = {},
	ua_sub = {}
}

-- -- ## END - Configuration block ##

return _M
