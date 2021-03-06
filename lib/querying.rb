def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE Books.series_id = 1 ORDER BY year ASC;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1;"
end

def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, Subgenres.name FROM series
  INNER JOIN authors ON series.author_id = authors.id
  INNER JOIN subgenres ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT Series.title FROM series
  INNER JOIN characters ON Characters.series_id = series.id
  WHERE Characters.species = 'human'
  GROUP BY Characters.species
  ORDER BY max(Characters.species) LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT Characters.name, COUNT(Books.title) FROM characters
  INNER JOIN character_books ON Character_books.character_id = Characters.id
  JOIN books ON Character_books.book_id = books.id
  GROUP BY characters.name ORDER BY COUNT(books.title) DESC;"
end
