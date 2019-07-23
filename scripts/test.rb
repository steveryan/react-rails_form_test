response = `git diff --name-only --cached`
list = response.split("\n")
list.each do |file|
  puts "minimizing #{file}" if File.extname(file) == ".svg"
  system("svgo #{file}") if File.extname(file) == ".svg"
end
