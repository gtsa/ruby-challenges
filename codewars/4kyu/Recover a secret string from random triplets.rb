def recover_secret triplets
  graph = Hash.new { |hash, key| hash[key] = Set.new }
  all_chars = Set.new

  triplets.each do |triplet|
    graph[triplet[1]] << triplet.first
    graph[triplet[2]] << triplet[1]
    all_chars.merge( [triplet.first, triplet[1], triplet[2]] )
  end

  secret = []

while !all_chars.empty?
    no_deps = all_chars.select{|ch| graph[ch].empty? }

    char = no_deps.first
    secret << char
    all_chars.delete(char)

    graph.each { |key, dependencies| dependencies.delete(char) }
  end

  secret.join
end
