require_relative "lib/image.rb"

puts "image builder"
puts "to start please enter i"

def apply(image,message)
  begin
    puts "ooops! you dont have a " if image.nil?
    yield image if block_given?
    puts message
  rescue ImageError => e
    puts e.message
  rescue  ArgumentError => e
    puts "ooops! please enter a number"
  end

end

def get_number
  int = Integer(gets.chomp)
end

def cancelable
  begin
    yield
  rescue SystemExit, Interrupt

  end
end

image = nil

cancelable do
  loop do
    case gets.chomp.downcase
    when "i"
      begin
        print "M:"
        m = get_number
        print "N:"
        n = get_number
        image= Image.new(m.to_i,n.to_i)
        puts "Created a new #{m} x #{n} image with all pixels coloured white (O)"
      rescue ArgumentError => e
        puts "oooops! one of you parameters is not a number"
      rescue ImageError => e
        puts e.message
      end

    when "c"
      apply(image,"Clears the table, setting all pixels to white (O)") do |image|
        image.clear()
      end
    when "l"
      apply(image,"Colours the pixel (X,Y) with colour C.") do |image|
        print "x:"
        x = get_number
        print "y:"
        y = get_number
        print "color:"
        color = gets.chomp.upcase
        image.set_color(Pixel::Coordinate.new(x,y),color)
      end
    when "v"
      apply(image,"Draw a vertical segment of colour C in column X between rows Y1 and Y2 (inclusive)") do |image|
        print "x:"
        x = get_number
        print "from:"
        from = get_number
        print "to:"
        to = get_number
        print "color:"
        color = gets.chomp.upcase
        image.set_column_color(x,from,to,color)
      end
    when "h"
      apply(image,"Draw a horizontal segment of colour C in row Y between columns X1 and X2 (inclusive).") do |image|
        print "y:"
        y = get_number
        print "from:"
        from = get_number
        print "to:"
        to = get_number
        print "color:"
        color = gets.chomp.upcase
        image.set_row_color(y,from,to,color)
      end
    when "f"
      apply(image,"Fill the region R with the colour C. R is defined as: Pixel (X,Y) belongs to R.") do |image|
        print "x:"
        x = get_number
        print "y:"
        y = get_number
        print "color:"
        color = gets.chomp.upcase
        region = image.fill(Pixel::Coordinate.new(x,y),color)
        puts "region count: #{region.count}"
      end
    when "s"
      apply(image,"Show the contents of the current image") do |image|
        output = Display.render(image)
        puts output.clone.prepend("\n")
      end
    when "x"
      puts "Terminate the session"
      exit
    else
      puts "oops! unknown command, please use i,c,l,v,h,f,s,x"
    end

  end
end
