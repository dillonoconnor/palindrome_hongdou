# frozen_string_literal: true

require_relative "palindrome_hongdou/version"

module PalindromeHongdou
  class Error < StandardError; end
  
  def self.is_palindrome?(str)
    str == str.reverse    
  end

  def self.is_permutated_palindrome?(str)
    return true if str == str.reverse

    char_counts = {}

    str.split("").each do |c|
      char_counts[c].nil? ? char_counts[c] = 1 : char_counts[c] += 1
    end

    return true if char_counts.values.count(&:odd?) == 1 && str.length.odd?
    return true if char_counts.values.count(&:odd?) == 0 && str.length.even?
    false
  end
end
