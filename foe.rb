pf = [70, 110, 200, 290, 400, 510, 620, 740, 860, 970]

niveau_10_base = []


@u0 = 650

def pf_niveau(niveau)
  cout = (@u0 * 1.025**(niveau - 10)).ceil
end

(11..20).to_a.each do |niveau|
  p pf_niveau(niveau)
end
