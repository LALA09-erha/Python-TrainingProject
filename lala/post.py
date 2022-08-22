from stack import Stack

def infix_to_postfix(infix):

              postfix = ""
              #-------Creation of Stack objectnext
              st = Stack()

              for symbol in infix:
                            #-------Ignore blanks--------
                            if symbol == " " or symbol == "\t":
                                          continue
                            if symbol == "(" or "{" or "[":
                                          print(symbol)
                                          st.push(symbol)
                            elif symbol in "}])":
                                          next = st.pop()
                                          print(next)
                                          while next != "(" or "{" or "[":
                                                    postfix = postfix + next
                                                    next = st.pop()
                            elif symbol in "+-*/%^":
                                          while not st.is_empty() and precedence(st.peek()) >= precedence(symbol):
                                                        postfix = postfix + st.pop()
                                          st.push(symbol)
                            else:
                                          postfix = postfix + symbol
              while not st.is_empty():
                            postfix = postfix + st.pop()
              print(postfix)
              return postfix

def precedence(symbol):
              if symbol == "(":
                            return 0
              elif symbol in "+-":
                            return 1
              elif symbol in "*%/":
                            return 2
              elif symbol == "^":
                            return 3
              else:
                            return 0

def evaluate_postfix(postfix):
              st = Stack()
              for symbol in postfix:
                            if symbol.isdigit():
                                          st.push(int(symbol))
                            else:
                                          x = st.pop()
                                          y = st.pop()

                                          if symbol == "+":
                                                        st.push(y + x)
                                          elif symbol == "-":
                                                        st.push(y - x)
                                          elif symbol == "*":
                                                        st.push(y * x)
                                          elif symbol == "/":
                                                        st.push(y / x)
                                          elif symbol == "%":
                                                        st.push(y % x)
                                          elif symbol == "^":
                                                        st.push(y ** x)
              return st.pop()

#---------------main program-------------
# while True:
#               print("Enter infix expression (q to quit) : ", end = " ")

#               expression = input()
#               if expression == 'q':
#                             break

#               postfix = infix_to_postfix(expression)
#               print("Postfix expression : ", postfix)
            #   print("Value of expression : ", evaluate_postfix(postfix))
print("Enter infix expression (q to quit) : ", end = " ")

expression = input()
# if expression == 'q':
#               br
postfix = infix_to_postfix(expression)
print("Postfix expression : ", postfix)