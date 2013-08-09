# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Comment.create([
  { name: 'Claudio', message: "I pray you leave me.", :score => 1 },
  { name: 'Benedick', message: "Ho, now you strike like the blind man - 'twas the boy that stole your meat, and you'll beat the post.", :score => 2 }
  { name: 'Claudio', message: "If it will not be, I'll leave you. [Leaves]", :score => 18023 },
])
