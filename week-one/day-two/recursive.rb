def subtraction( num )
  unless num == 0
    num -= 1
    puts num
    subtraction( num )
  end
end
