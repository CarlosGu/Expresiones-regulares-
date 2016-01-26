def banco(string)
  if string[5].to_i && string[9].to_i == 0
    p "Numero invalido"
  else
    string
  end
end

def number_cuent(string)
  if string[5].to_i && string[9].to_i == 0
    nil
  else
    string
  end
end

def number_arr(string)
  arr = []
  if string[5].to_i && string[9].to_i == 0
    arr 
  else
    arre = string.scan(/./)
    arre.select{ |x| x != "-" }
  end
end

def number_x(string)
  cont = 0 
  string.scan(/./)
  for i in 1..string.length-4
    if string[cont].to_i != 0
      string[cont] =  "X"
    end
    cont += 1
  end 
  string
end

def format(string)
  if string[4] && string[8] == "."
    string[4] = "-"
    string[8] = "-"
  else
    string
  end
  string
end

p banco("1234-567-890") == "1234-567-890"
p number_cuent("1234-567-890") == "1234-567-890"
p number_arr("4567-123-123") == ["4", "5", "6", "7", "1", "2", "3", "1", "2", "3"]
p number_x("4567-123-123") == "XXXX-XXX-123"
p format("1234.567.891") == "1234-567-891"