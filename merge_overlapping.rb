def merge_strings(s1, s2)
    # Iterate over the possible lengths of the overlap between the two strings.
    (s1.length).downto(1) do |i|
      # Check if the end of the first string matches the beginning of the second string up to length i.
      if s1.end_with?(s2[0, i])
        # If there is a match, concatenate the two strings with the overlap removed, and return the result.
        return s1 + s2[i..-1]
      end
    end
    # If no overlap was found, concatenate the two strings and return the result.
    s1 + s2
  end

puts merge_strings("abcde", "cdefgh")  # "abcdefgh"
puts merge_strings("abaab", "aabab")  # "abaabab"
puts merge_strings("abc", "def")  # "abcdef"
puts merge_strings("abc", "abc")  # "abc"
puts merge_strings("abaabaab", "aabaabab")  # "abaabaabab"