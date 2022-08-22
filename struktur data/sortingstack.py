def Stack():
    a=[]
    return a  
def push(a,data):
    a.append(data)  
def pop(a):
    data = a.pop()
    return data  
def peek(a):
    return a[len(a)-1]
def isEmpty(a):
    return a == []  
def size(a):
    return len(a)
def sortedstack(a,b):
    stack = Stack()
    list = []
    while a != [] or b != []:
        if a == []:
            push(stack,b[0])
            del b[0]
        elif b == []:
            push(stack,a[0])
            del a[0]
        for i in range(len(a)+len(b)):
            if a != [] and b != []:
                # print(a)
                # print(b)
                # print(stack)
                if a[0] < b[0]:
                    push(stack,b[0])
                    del b[0]
                elif a[0] > b[0]:
                    push(stack,a[0])
                    del a[0]
                else:
                    push(stack,a[0])
                    del a[0]
                    push(stack,b[0])
                    del b[0]
    # while not isEmpty(stack):
    #     temp = pop(stack)
    #     list.append(temp)
    for i in range(size(stack)-1):
        if stack[i]>stack[i+1]:
            print(stack[i])
            print(stack[i+1])
            stack[i],stack[i+1] = stack[i+1],stack[i]
    # print(stack)

a = [45,30,11,10,8,4]
b = [9,6,3,5,2,7]
sortedstack(a,b)

