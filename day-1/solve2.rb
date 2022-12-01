# frozen_string_literal: true

# (ab)use to_i to get 0 out for empty lines
puts ARGF.each_line.map { |n| n.to_i }.slice_when { |n| n == 0 }.flat_map { |n| n.inject(0, :+) }.sort.last(3).sum
