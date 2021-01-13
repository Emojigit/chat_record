file = io.open(minetest.get_worldpath().."/chat_record.txt", "a")
local separator = "\n-------------\n  Separator\n-------------\n \n"
file:write(separator)
minetest.register_on_chat_message(function(name, message)
	local time = os.date('%Y-%m-%d %H:%M:%S')
	local text = string.format("%s: <%s> %s",tostring(time),name,message)
	file:write(text.."\n")
end)

minetest.register_on_shutdown(function()
    file:close()
end)
