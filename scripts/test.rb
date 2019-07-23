response = `git diff --name-only --cached`
list = response.split("\n")
list.each do |file|
  system("svgo #{file}") if File.extname(file) == ".svg"
end
