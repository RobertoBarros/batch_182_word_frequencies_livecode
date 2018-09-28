def frequencies(text)

# separar as palavras
  words = text.split(" ")
# contar as palavras
# each
# criar um hash {} pra armazenar o resultad
  hist = {}
  words.each do |word|
    if hist.key?(word)
      hist[word] += 1
    else
      hist[word] = 1
    end
  end
  return hist
end