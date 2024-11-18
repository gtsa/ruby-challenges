def to_camel_case(str)
  list = str.split(/[-_]/)
  [list.first, *list.drop(1).map(&:capitalize)].join
end
