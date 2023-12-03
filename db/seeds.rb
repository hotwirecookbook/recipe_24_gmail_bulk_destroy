100.times do
  Email.create(
    subject_line: Faker::Quote.famous_last_words
  )
end