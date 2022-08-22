def queue():
    s = []
    return s
def enqueue(s,i):
    s.insert(0,i)
    return s
def dequeue(s):
    return s.pop()
def rear(s):
    return (s[0])
def front(s):
    return (s[len(s)-1])
def size(s):
    return len(s)
def isEmpty(s):
    return s==[]
def inputTask():
  task = {}
  a = int(input("masukkan jumlah task: "))
  for i in range(a):
      nama = input("nama task = ")
      waktu = int(input('waktu task = '))
      task[nama] = [waktu,0]
  return task
def sculling(limit,task):
  taskq = queue()
  for nama in task.keys():
      enqueue(taskq,nama)
  total = 0
  while not(isEmpty(taskq)):
      temp = dequeue(taskq)
      remaintine = task[temp][0] -limit
      if remaintine > 0:
          enqueue(taskq,temp)
          proses = limit
      else:
          proses = task[temp][0]
          remaintine = 0
      total = total + proses
      task[temp][0] = remaintine
      task[temp][1] = total
  print(taskq)
  return task

a =  inputTask()
print(sculling(3,a))