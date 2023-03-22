class String
    def camelcase
      words = self.split(' ')
     word_array =  words.map {|word| word.capitalize}
      return word_array.join('')
    end
  end
  str1 = 'hello case'
  str2 = 'camel case word'
  
  puts str1.camelcase # output: 'HelloCase'
  puts str2.camelcase # output: 'CamelCaseWord'

  
  
  