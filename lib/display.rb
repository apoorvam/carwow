class Display
  def self.render(image)
      output = ""
        columns = 1
        (Image::MINIMUM_HEIGHT..image.height).each do |y|
        (Image::MINIMUM_WIDTH..image.width).each do |x|
          color = image.get_pixel_at(Pixel::Coordinate.new(x,y)).color
          output << "#{color}"
          if columns == image.width
            output << "\n"
            columns = 1
          else
            columns+=1
          end
        end
      end

      output
  end
end
