
MORSE_CODE = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', ' ' => ' '
  }
  
  def decode_char(morse_char)
    MORSE_CODE[morse_char]
  end
  
  def decode_word(morse_word)
    morse_chars = morse_word.split(" ")
    decoded_word = ""
    morse_chars.each do |morse_char|
      decoded_char = decode_char(morse_char)
      decoded_word += decoded_char
    end
    decoded_word
  end
  
#   def decode_message(morse_message)
#     morse_words = morse_message.split("   ") # Three spaces indicate word separation
#     decoded_message = ""
#     morse_words.each do |morse_word|
#       decoded_word = decode_word(morse_word)
#       decoded_message += decoded_word + " "
#     end
#     decoded_message.strip # Remove leading/trailing spaces
#   end
  
#   # Test the method with the old bottle message
#   morse_message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
#   decoded_message = decode_message(morse_message)
#   puts decoded_message
  