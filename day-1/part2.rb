# frozen_string_literal: true

calories = ARGF.each_line.map(&:chomp).map { |l|
  l == "" ? nil : Integer(l)
}.each_with_object([[]]) { |item, collection|
  if item
    collection.last << item
  else
    collection << []
  end
}.map(&:sum).each_with_index.sort_by { |(calories, _)| calories }.last(3).map(&:first).sum

puts "Total calories for top 3 elves: #{calories}"
