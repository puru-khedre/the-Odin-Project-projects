def caesar_cipher text, shift
  text_arr = text.split("")
  converted = text_arr.reduce String.new do |accu, ele|
    shift.times {ele = ele.next}
    accu<<ele[-1]
  end
end

puts caesar_cipher "What a string!", 5