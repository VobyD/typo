Given /^the following articles exists:$/ do |table|
  # table is a Cucumber::Ast::Table
  #pending # express the regexp above with the code you wish you had
  table.hashes.each do |article|  
     Article.create(article)
  end
  
  #articles=Article.all
  #articles.each do |x|
  #  p x
  #end
end

