#this code changes :) :( in your emoticons
print("write me ")
msg = gets
msg = msg.gsub(":)","\u{1F603}")
msg = msg.gsub(":(","\u{1F61E}")
print(msg)