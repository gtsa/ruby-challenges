def tribonacci(signature,n)
  i = 3
  while i < n do
    signature.append(signature[-3..-1].sum)
    i += 1
  end
  signature[...n]
end
