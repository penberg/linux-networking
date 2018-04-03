namespace :book do
  desc 'build basic book formats'
  task :build do
    puts "Converting to HTML..."
    `bundle exec asciidoctor linux-net.asc`
    puts " -- HTML output at linux-net.html"

    puts "Converting to EPub..."
    `bundle exec asciidoctor-epub3 linux-net.asc`
    puts " -- Epub output at linux-net.epub"

    puts "Converting to Mobi (kf8)..."
    `bundle exec asciidoctor-epub3 -a ebook-format=kf8 linux-net.asc`
    puts " -- Mobi output at linux-net.mobi"

    puts "Converting to PDF... (this one takes a while)"
    `bundle exec asciidoctor-pdf linux-net.asc 2>/dev/null`
    puts " -- PDF output at linux-net.pdf"
  end
end

task :default => "book:build"
