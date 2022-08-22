# class Stacks:
#     def __init__(self):
#         self.items = []
#     def push(self,data):
#         self.items.append(data)
#     def pop(self):
#         return self.items.pop()
#     def peek(self):
#         return self.items[-1]
#     def is_empty(self):
#         return self.items == []
    
#     def printStack(self):
#         return self.items
# # converts infix expression to postfix expression
# def infix_to_postfix(st,priority,inf):
#     pst = []
#     for el in inf:
#         if el == ' ':
#             continue
#         # print("checking: ",el)
#         # opening parenthesis
#         if el == '(':
#             st.push(el)
#         elif el == ')':
#             while not st.is_empty():
#                 if st.peek() == '(':
#                     st.pop()
#                     break
#                 else:
#                     pst.append(st.pop())
#         # if it's an operand
#         elif el not in priority.keys() and (el != '(' or el != ')'):
#             # print("operand:",el)
#             pst.append(el)
# # if it's an operator and stack is empty
#         elif el in priority.keys() and  st.is_empty():
#             # print("operator: ",el)
#             st.push(el)
#          # if it's an operator of higher priority than the priority of TOS element
#         elif el in priority.keys() and not st.is_empty() and st.peek() =='(':
#             # print("operator:",el)
#             st.push(el)
# # if it's an operator of higher priority than the priority of TOS element
#         elif el in priority.keys() and not st.is_empty() and priority[el] >= priority[st.peek()]:
#             # print("operator: ",el)
#             st.push(el)
#         # if it's an operator of lower priority than the priority of TOS element
#         elif el in priority.keys() and not st.is_empty() and priority[el] < priority[st.peek()]:
#             # print("operator: ",el)
#             while not st.is_empty():
#                 if st.peek() == '(':
#                     break
#                 elif priority[st.peek()] >= priority[el]:
#                     pst.append(st.pop())
#                 else:
#                     break
#             st.push(el)
#         # print("stack: ",st.printStack())
#         # print("postfix:",pst)
#     while not st.is_empty():
#         pst.append(st.pop())
#     return pst
# def reverse(exp):
#     rev_exp = []
#     for i in range(len(exp)-1,-1,-1):
#         if exp[i] == '(':
#             e = ')'
#         elif exp[i] == ')':
#             e = '('
#         else:
#             e = exp[i]
#         rev_exp.append(e)
#     return rev_exp
# def infix_to_prefix(st,priority,inf):
#     rev_exp = reverse(inf)
#     pst = infix_to_postfix(st,priority,rev_exp)
#     return reverse(pst)
# if __name__=="__main__":
#     priority = {}
#     priority['+'] = 1
#     priority['-'] = 1
#     priority['*'] = 2
#     priority['/'] = 2
#     priority['^'] = 3
    
#     st = Stacks()
#     inf = input("Enter the infix expression:")
#     #print("input: a+b*(c^d-e)^(f+g*h)-i")
#     #inf = "a+b*(c^d-e)^(f+g*h)-i"
#     op = int(input("Postfix(1) or Prefix(2) or both(3)? (1,2 or 3) "))
#     while True:
#         if op == 1:
#             print("Postfix expression: ",infix_to_postfix(st,priority,inf))
#             break
#         elif op == 2:
#             print("Prefix expression: ",infix_to_prefix(st,priority,inf))
#             break
#         elif op == 3:
#             print("Postfix expression: ",infix_to_postfix(st,priority,inf))
#             print("Prefix expression: ",infix_to_prefix(st,priority,inf))
#             break
#         else:
#             op = int(input("Postfix(1) or Prefix(2) or both(3)? (enter 1,2 or 3): ")) 
class stack:
    def __init__(self):
        self.item = []
    
    def push(self,it):
        self.item.append(it)
    def peek(self):
        if self.isempty() == True:
            return 0
        return self.item[-1]
    
    def pop(self):
        if self.isempty() == True:
            return 0
        return(self.item.pop())
    
    def length(self):
        return (len(self.item))
    
    
    def isempty(self):
        if self.item == []:
            return True
        else:
            return False
    
    def display(self):
        if self.isempty()== True:
            return
        temps = stack()
        while(self.isempty() != True):
            x = self.peek()
            print("~",x)
            temps.push(x)
            self.pop()
        while(temps.isempty() != True):
            x = temps.peek()
            self.push(x)
            temps.pop()
    
    
    def isOperand(self, ch): 
        return ch.isalpha()
    def notGreater(self, i):
        precedence = {'+':1, '-':1, '*':2, '/':2, '%':2, '^':3}
        if self.peek() == '(':
            return False
        a = precedence[i]
        b = precedence[self.peek()] 
        if a  <= b:
            return True
        else:
            return False
            


def infixToPostfix(self, exp):
    output = ""
    
    for i in exp:
        
        if self.isOperand(i) == True: # check if operand add to output
            print(i,"~ Operand push to stack")
            output = output + i

        # If the character is an '(', push it to stack 
        elif i  == '(':
            self.push(i)
            print(i," ~ Found ( push into stack")

        elif i == ')':  # if ')' pop till '('
            while( self.isempty() != True and self.peek() != '('):
                n = self.pop() 
                output = output + n
                print(n, "~ Operator popped from stack")
            if (self.isempty() != True and self.peek() != '('):
                print("_________")
                return -1
            else:
                x = self.pop()
                print(x, "Popping and deleting (")
        else: 
            while(self.isempty() != True and self.notGreater(i)):
                c = self.pop()
                output = output + c
                print(c,"Operator popped after checking precedence from stack")
            self.push(i)
            print(i,"Operator pushed to stack")

    # pop all the operator from the stack 
    while self.isempty() != True:
        xx = self.pop()
        output = output + xx
        print(xx,"~ pop at last")
    print(output)
    self.display()
st = stack()
st.infixToPostfix("a+(b*c)")