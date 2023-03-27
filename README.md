# Camel-case
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


# merge-overlapping

## BDD (Behavior Driven Development)

 Given: two strings
when: The two strings are merged together 
Then: The end of the first string with the start of the second string are an exact match.

### Example1
"abcde" + "cdefgh" => "abcdefgh"

## Example2
"abc" + "def" => "abcdef"

## PseudoCode:
 1. We iterate over the possible lengths of the overlap between the two strings, starting from the length of the first string and decreasing by 1 until we reach 1. This is done using the downto method on the length of the first string.
2. For each overlap length, we check if the end of the first string matches the beginning of the second string up to that length using the end_with? method. If there is a match, we concatenate the two strings, with the overlap removed using Ruby's slicing syntax ([i..-1]), and return the result.

3. If no overlap was found, we simply concatenate the two strings using the + operator and return the result.




