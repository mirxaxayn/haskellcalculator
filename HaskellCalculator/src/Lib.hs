module Lib
  ( calculator,
  )
where

calculator :: IO ()
calculator = do
  --get first number
  putStrLn "Enter First Number :"
  num1 <- getLine
  let first = read num1 :: Float

  --get second number
  putStrLn "Enter Second Number :"
  num2 <- getLine
  let second = read num2 :: Float

  --choose which operations
  putStrLn "Enter Operator (+,-,*,/): "
  oper <- getChar

  print "Result : "

  --Check which operation perform
  if oper == '+'
    then print (add first second)
    else
      if oper == '-'
        then print (sub first second)
        else
          if oper == '*'
            then print (mul first second)
            else
              if oper == '/'
                then print (divi first second)
                else calculator

--Addition Function
add x y = x + y

--Subtraction Function
sub x y = x - y

--Multiplication Function
mul x y = x * y

--Division Function
divi x y = x / y