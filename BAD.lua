local HttpService = game:GetService("HttpService")

local url = "https://raw.githubusercontent.com/Doomedheart12333/DataWords/refs/heads/main/BAD.lua"

local success, response = pcall(function()
	return HttpService:GetAsync(url)
end)

if success then
	loadstring(response)() -- this will print: print("This file was retrived from github with a loadstring!")
else
	warn("Failed to retrieve file:", response)
end
