# frozen_string_literal: true
require "palindrome_hongdou"

RSpec.describe PalindromeHongdou do
  it "has a version number" do
    expect(PalindromeHongdou::VERSION).not_to be nil
  end

  it "returns true for palindromes" do
    expect(self.is_palindrome?("deified")).to be_truthy
  end

  it "returns false for non-palindromes" do
    expect(self.is_palindrome?("baseball")).to be_falsey
  end

  it "returns true for permutated palindromes" do
    expect(self.is_permutated_palindrome?("dfidiee")).to be_truthy
  end

  it "returns false for non-permutated-palindromes" do
    expect(self.is_permutated_palindrome?("dfidieee")).to be_falsey
  end
end
