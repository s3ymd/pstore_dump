require 'pstore'

db = PStore.new('/tmp/books')

db.transaction do
  (1..10).each do |i|
    db[i] = Book.new("書籍#{i}", 1000 * i)
  end
end

