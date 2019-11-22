print("Hello World!")
print(os.execute('git add .'))
print(os.execute('git commit -m "test"'))
-- io.popen('git add .')
-- io.popen('git commit -m "test"')
-- local t = io.popen('git push origin master')
-- local a = t:read("*all")


