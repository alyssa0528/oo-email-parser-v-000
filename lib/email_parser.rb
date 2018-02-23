# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails 
  @@parse = []
  
  def initialize(emails) #emails is a string of emails
    email_array = emails.split(/[\s,]/)
    email_array.each do |email_address|
      if email_address != "" 
      @@parse << email_address
      end 
    end
  end
  
  def parse
   @@parse.uniq #returns array of only unique addresses
  end 
  
end 