def ftoc(ftemp)
  ctemp = (ftemp.to_f - 32)*(5.0/9)
  ctemp
end

def ctof(ctemp)
  ftemp = ((ctemp.to_f)*(9.0/5))+32
  ftemp
end
