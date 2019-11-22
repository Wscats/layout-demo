print("Hello World!")
io.popen('git add .')
io.popen('git commit -m "test"')
local t = io.popen('git push origin master')
local a = t:read("*all")
print(a)

