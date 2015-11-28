require "wrong"
require "pry"
require_relative "../lib/image"


include Wrong


step "create a <width> by <height> image" do |width,height|
  @image = Image.new(width.to_i,height.to_i)
end

step "set pixel colors <table>" do |table|
  table.rows.each do |row|
    pixel =@image.set_color(row[0],row[1],row[2])
    assert{pixel.color == row[2]}
  end
end

step "set invalid pixel colors <table>" do |table|
  table.rows.each do |row|
    assert{rescuing{@image.set_color(row[0],row[1],"A")}.message == row[2]}
  end
end

step "set pixel vertical colors <table>" do |table|
  table.rows.each do |row|
    x = row[0].to_i
    for y in (row[1].to_i..row[2].to_i) do
      pixel = @image.set_color(x,y,row[3])
      assert{pixel.color == row[3]}
    end

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
