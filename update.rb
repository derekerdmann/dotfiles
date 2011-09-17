require 'fileutils'

scriptname = File.basename __FILE__

ignore = %W( . .. .hg .git #{scriptname} )
ignoreext = %W( .swp )

src = File.expand_path( File.dirname( __FILE__) )
dest = ARGV[0]
dest ||= File.expand_path( "~" )

puts "Source: #{src}"
puts "Destination: #{dest}"

Dir.entries( src ).each do |item|

  next if ignore.include? item
  next if ignoreext.include? File.extname( item )

  puts "Copying #{item}"

  FileUtils.cp_r item, dest
end
