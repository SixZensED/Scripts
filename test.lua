local robloxapi = {}

function robloxapi:GetXcsrfToken()
	local Request = http_request or request or HttpPost or syn.request

	local url = "https://auth.roblox.com/v1/usernames/validate"
	local requestData = {Url = url, Method = "POST"}
	local response = Request(requestData)

	if response and response.Headers then
		local csrfToken = response.Headers["x-csrf-token"]
		return csrfToken
	else
		print("Failed to make the HTTP request")
	end
end


function robloxapi:test(cookie)
	local Request = http_request or request or HttpPost or syn.request
	local test  = {
		["cookie"] = ".ROBLOSECURITY=" ..cookie
	}
	local url = "https://auth.roblox.com/v1/usernames/validate"
	local requestData = {Url = url, Method = "POST",Headers = test}
	local response = Request(requestData)

	return response
end


return robloxapi
