require "json"
x = {:hello => "goodbye", 
     :nam => "jaime", 
     :id => "123", 
     :game=>"Zelda"}
y = {:hello => "goodbye", :name => "kike", :id => "124", :game=>"Mario"}
File.open("data.json", "w") do |f|
  f.puts(x.to_json)
  f.puts(y.to_json)
end