require "wrong"
require "pry"
require_relative "../lib/image"


include Wrong


step "create a <width> by <height> image" do |width,height|
  @image = Image.new(width.to_i,height.to_i)
end

step "set pixel colors <table>" do |table|
  table.rows.each do |row|
    pixel =@image.set_color(Pixel::Coordinate.new(row[0],row[1]),row[2])
    assert{pixel.color == row[2]}
  end
end

step "set invalid pixel colors <table>" do |table|
  table.rows.each do |row|
    assert{rescuing{@image.set_color(Pixel::Coordinate.new(row[0],row[1]),"A")}.message == row[2]}
  end
end

step "set pixel vertical colors <table>" do |table|
  table.rows.each do |row|
    @image.set_column_color(row[0].to_i,row[1].to_i,row[2].to_i,row[3])
    for y in (row[1].to_i..row[2].to_i) do
      assert{@image.get_pixel_at(Pixel::Coordinate.new(row[0],y)).color == row[3]}
    end
  end
end

step "set pixel horizontal colors <table>" do |table|
  table.rows.each do |row|

    @image.set_row_color(row[0].to_i,row[1].to_i,row[2].to_i,row[3])

    for x in (row[1].to_i..row[2].to_i) do
      assert{@image.get_pixel_at(Pixel::Coordinate.new(x,row[0])).color == row[3]}
    end
  end
end

step 'clear image' do

  @image.clear

  @image.pixels.each do |pixel|
    assert{pixel.color == "O"}
  end

end

step "define regions <table>" do |table|
  table.rows.each do |row|
    region = @image.fill(row[0].to_i,row[1].to_i,row[2])
    assert{region.count == 1}
  end
end


step 'initialize valid images <table>' do |table|
  table.rows.each do |row|
    image = Image.new(row[0].to_i,row[1].to_i)
    assert{image.pixels.count == row[2].to_i}
  end
end

step 'initialize invalid images <table>' do |table|
  table.rows.each do |row|
    assert{rescuing{Image.new(row[0].to_i,row[1].to_i)}.message == row[2]}
  end
end
