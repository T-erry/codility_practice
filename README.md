## BDD (Behavior Driven Development)

 Given: A string
when: The first letter of each word in an array is capitalized with no spaces
Then: return all words as strings joined together and camelcased.

### Example1
'hello case'.camelcase => HelloCase

## Example2
'camel case word'.camelcase => CamelCaseWord

## PseudoCode:
 1. Split the string into an array of words. Given: 'hello case' => ["hello", "case"]
 2. Iterate through the words array and capitalize the first letter of each word. words.map {|word| word.capitalize }
 3. Join the capitalized words together without any spaces
 4. Return words.join('') => 'HelloCase'





