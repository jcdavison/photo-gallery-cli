def img_tag(path_to_file)
  "<img src=\"#{path_to_file}\">"
end

def html_page(content)
  layout = <<-HTML
    <!DOCTYPE html>
    <html>
    <head>
      <title>My Gallery</title>
    </head>
    <body>
      <h1>My Gallery</h1>
      #{content}
    </body>
    </html>
  HTML
  layout
end

file = ARGV[0]

path =  File.absolute_path(file)
puts html_page(img_tag(path))
