-- HEAD --
local shortport = require "shortport"
local http = require "http"
local table = require "table"

description = [[
Finds and prints open ports plus their corresponding IP addresses
]]

author = "Consin Hu"
license = "Same as Nmap -- See https://nmap.org/book/man-legal.html"
categories = {"discovery", "safe", "default"}

-- RULE --
 
portrule = function(host, port)
	return port.protocol == "tcp"
		and port.state == "open"
end


-- ACTION --

action = function(host, port)
	local ouput = {}
	if port.state == "open" then
		return("This port is open and its IP Address is: " .. host.ip)
	end
end
