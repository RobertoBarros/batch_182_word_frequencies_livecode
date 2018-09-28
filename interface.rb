require_relative "./frequencies"

# Read the article file
jokes = File.read("piadas.txt")

freq = frequencies(jokes)

# ordena pelo value
# seleciona somente palavras com mais de 4 letras
# Somente os últimos 5 elementos
# reverse para ordenar do maior para o menor
# Print the top 5 words by frequencies
freq.sort_by { |key, value| value }
    .select{ |word| word[0].size > 4 }
    .last(20)
    .reverse
    .each do |num_of|
 puts "A palavra #{num_of[0]} aparece #{num_of[1]} vezes"
end
