# frozen_string_literal: true

calories, elf_index = ARGF.each_line.map(&:chomp).map { |l|
  l == "" ? nil : Integer(l)
}.each_with_object([[]]) { |item, collection|
  if item
    collection.last << item
  else
    collection << []
  end
}.map(&:sum).each_with_index.max { |(calories1, _), (calories2, _)| calories1 <=> calories2 }

puts "Elf carrying the most is #{elf_index + 1}: #{calories}"
