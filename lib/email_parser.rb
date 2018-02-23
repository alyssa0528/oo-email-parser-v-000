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
    email_array = emails.split(/[\s,]/) #split the strings and spit out an array, store in email_array
    email_array.each do |email_address| #loop through array
      if email_address != "" #remove the empty strings
      @@parse << email_address #add address to @@parse class variable (an array)
      end 
    end
   @@parse.uniq #returns array of only unique addresses
  end 
  
end 