puts "image builder"
puts "to start please enter i"

image = nil

def execute(image,message)
  puts "ooops! you dont have a " if image.nil?
  yield image if block_given?
  puts message
end

def cancelable
  begin
    yield
  rescue SystemExit, Interrupt
  
  end
end


cancelable do
  loop do
    case gets.chomp
    when "i"
      puts "Create a new M x N image with all pixels coloured white (O)"
    when "c"
      execute(image,"Clears the table, setting all pixels to white (O)") do |image|

      end
    when "l"
      execute(image,"Colours the pixel (X,Y) with colour C.") do |image|

      end
    when "v"
      execute(image,"Draw a vertical segment of colour C in column X between rows Y1 and Y2 (inclusive)") do |image|

      end
    when "h"
      execute(image,"Draw a horizontal segment of colour C in row Y between columns X1 and X2 (inclusive).") do |image|

      end
    when "f"
      execute(image,"Fill the region R with the colour C. R is defined as: Pixel (X,Y) belongs to R.") do |image|

      end
    when "s"
      execute(image,"Show the contents of the current image") do |image|

      end
    when "x"
      puts "Terminate the session"
      exit
    else
      puts "oops! unknown command, please use i,c,l,v,h,f,s,x"
    end

  end
end
