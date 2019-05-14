#
#
#



def caesar_cipher(str, shift)
  str_array = str.split('');
  out_str = "";

  a_code = 'a'.ord;
  z_code = 'z'.ord;
  cap_a_code = 'A'.ord;
  cap_z_code = 'Z'.ord;
  
  shifted = '';
  
  str.each_byte {|c|
    shifted = c;

    if c >= a_code && c <= z_code
      shifted = c + shift;

      if shifted > z_code
        shifted = (shifted - a_code) % 26 + a_code
      end
      
      if shifted < a_code
        shifted = (shifted - a_code) + z_code + 1
      end

    elsif c >= cap_a_code && c <= cap_z_code
      shifted = c + shift;

      if shifted > cap_z_code
        shifted = (shifted - cap_a_code) % 26 + cap_a_code
      end
      
      if shifted < cap_a_code
        shifted = (shifted - cap_a_code) + cap_z_code + 1
      end

    end
    
    out_str = out_str + shifted.chr;
  }
  puts out_str
  puts "a: #{'a'.ord}, z: #{'z'.ord}"
  out_str
end

caesar_cipher('xyz', 3)
caesar_cipher('abc', -3)
caesar_cipher('XYZ', 3)
caesar_cipher('ABC', -3)
caesar_cipher('edu', -3)
caesar_cipher('hello world', -3)
caesar_cipher('ebiil tloia', 3)
caesar_cipher('now, and, then', 3)
caesar_cipher('qrz, dqg, wkhq', -3)


