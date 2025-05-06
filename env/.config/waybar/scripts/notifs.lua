#!/usr/bin/lua

function Get_notifs()
	-- Runs bash script and pushes stdout to a tmp file
	local file = io.popen("makoctl list")

	-- Checks if the file is nil
	if file then
		-- Read the file to a string that escapes newlines
		local result = file:read("*a")
		result = result:gsub("\n", "\\n")
		return result
	else
		print("Error: empty notification list")
	end
end

function Main()
	-- Output json format for ../config
	local json = string.format('{"tooltip":"%s"}', Get_notifs())
	print(json)
end

Main()
