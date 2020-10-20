>++++[-<+++++++++++>]                 (44 = 4 x 11)
>,[>++++++[-<-------->]>+++++++++[-   read a number
<<<[->+>+<<]>>[-<<+>>]>]<<[-<+>],]     ** part 2 **
<<+++++.-----.+++++.-----             print 49;44;49 (1 comma 1) using comma char (faster)
>-->+>+                               decrease counter by 2 and start sequence with 2 ones
<<[                                   while counter is not null
  -                                   decrease counter
  <.                                  print comma
  >>>[->+>+<<]                        copy second value (mem : 1st 0 2nd 2nd)
  <[->>>+<<<]                         sum 1st and 2nd values to get 3rd (mem: 0 0 2nd 3rd)
  >>[-<<+>>]                          move 2nd value (mem: 2nd 0 0 3rd)
  >[->+<<<+>>]                        copy/move 3rd value (mem: 2nd 3rd 0 0 3rd; note: at least one 0 needed before a value to print it)
  >[>>>>++++++++++<<<<[->+>>+>-[<-]<[ print value as decimal number
  ->>+<<<<[->>>+<<<]>]<<]>+[-<+>]>>>[  ** part 2 **
  -]>[-<<<<+>>>>]<<<<]<[>++++++[<++++  ** part 3 **
  ++++>-]<-.[-]<]                      ** part 4 **
<<<<]                                 loop
