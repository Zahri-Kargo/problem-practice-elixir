name = IO.gets("Name: ")
name = String.replace(name,"\n","")
text = "Hello " <> name

IO.puts(text)
IO.puts("Hello #{name}")
