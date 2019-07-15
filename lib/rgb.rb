def to_hex(r,g,b)
  [r,g,b].inject('#') do |hex,n|
    hex + n.to_s(16).rjust(2,'0')
  end
end

def to_ints(hex)
#  [0,0,0]
#  r = hex[1..2]
#  g = hex[3..4]
#  b = hex[5..6]
#  ints = []
#   r,g,b = hex[1..2],hex[3..4],hex[5..6]
#   r,g,b = hex.scan(/\w\w/)
#  [r,g,b].each do |s|
#    ints << s.hex
#  end
#  ints
#  [r,g,b].map do |s|
#  hex.scan(/\w\w/).map do |s|
#   s.hex
#  end
  hex.scan(/\w\w/).map(&:hex)
end
