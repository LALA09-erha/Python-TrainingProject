from ast import Return
from operator import truediv


def arithmetic_arranger(*arg):
    if(len(arg) > 2):
        print( 'argument invalid')
    elif(len(arg) ==1):
        if(len(arg[0])>5):
            return ("Error: Too many problems.")
        else:
            for i in range(len(arg[0])):
                problem = arg[0][i].split()
                for x in range(len(problem)):
                    if(x == 1):
                        if((problem[x] == '+' or problem[x]== '-')):
                            if(problem[x-1].isdigit() or problem[x+1].isdigit()):
                                if(len(problem[x-1]) <= 4 and len(problem[x+1]) <=4):
                                    # print(problem[x-1])
                                    # print(problem[x+1])
                                    print(f""" {problem[x-1].rjust(5)}
{problem[x]}{problem[x+1].rjust(5)}
------""")
                                else: 
                                    return ("Error: Numbers cannot be more than four digits.")
                            else:
                                return ("Error: Numbers must only contain digits.")
                        else:
                           return ("Error: Operator must be '+' or '-'.")


    elif(arg[1]== True):
        if(len(arg[0])>5):
            return ("Error: Too many problems.")
        else:
            for i in range(len(arg[0])):
                problem = arg[0][i].split()
                for x in range(len(problem)):
                    if(x == 1):
                        if((problem[x] == '+' or problem[x]== '-')):
                            if(problem[x-1].isdigit() or problem[x+1].isdigit()):
                                if(len(problem[x-1]) <= 4 and len(problem[x+1]) <=4):
                                    if(problem[x] == '+'):
                                        print(f""" 

{problem[x-1].rjust(6)}
{problem[x]}{problem[x+1].rjust(5)}
------
{str(int(problem[x-1])+int(problem[x+1])).rjust(6)}""")
                                    else:
                                        print(f""" 

{problem[x-1].rjust(6)}
{problem[x]}{problem[x+1].rjust(5)}
------
{str(int(problem[x-1])-int(problem[x+1])).rjust(6)}""")
                                else: 
                                    return ("Error: Numbers cannot be more than four digits.")
                            else:
                                return ("Error: Numbers must only contain digits.")
                        else:
                           return ("Error: Operator must be '+' or '-'.")

arithmetic_arranger(["32 - 8111", "3801 - 2", "45 + 43", "123 + 49","45 + 2" ,"45 + 2"],True)
