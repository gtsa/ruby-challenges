def maskify(cc)
  cc.length < 4 ? cc : ["#"*(cc.length-4),*cc.chars[-4..-1]].join
end
