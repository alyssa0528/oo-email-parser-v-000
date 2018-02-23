require 'pry'

# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails 
  @@parse = []
  
  def initialize(emails) #emails is a string of emails
    @emails = emails #writer method 
  end
  
  def parse
    @emails.split.map do |email| #take the string of emails, splits them into substrings at whitespace points, and throws them into an array; loops through that array
      email.split(',') #takes each email element in the array and further splits it at commas
    end.flatten.uniq #flattens array and only shows unique elements
  end
end 