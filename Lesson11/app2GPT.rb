# Define a hash that maps English words to Russian translations
dictionary = {
  "hello" => "здравствуйте",
  "goodbye" => "до свидания",
  "cat" => "кот",
  "dog" => "собака",
  # Add more words and translations here...
}

# Prompt the user to enter an English word
puts "Enter an English word:"

# Read the user's input and convert it to lowercase
word = gets.chomp.downcase

# Look up the Russian translation for the word in the dictionary
translation = dictionary[word]

# If the translation is found, print it to the console
# Otherwise, print an error message
if translation
  puts "#{word.capitalize} translates to #{translation} in Russian."
else
  puts "Sorry, I don't know the translation for #{word}."
end
