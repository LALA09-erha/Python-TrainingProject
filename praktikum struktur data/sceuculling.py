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
  task = queue()
  list = []
  a = int(input("Jumlah proses yang akan di jadwal di CPU : "))
  for  i in range(a): #memutar sebanyak a 
        inputan = input(f"nama task - {i}:  ")
        angka =  int(input(f"waktu task -{i}: "))
        list.extend((inputan.upper(),angka)) #memasukkan dua data langsung ke list, inputan dan value angka
  for i in range(1): #memutar sebanyak 1 kali
      for j in range(0,len(list)-1,2):
        enqueue(task,[list[j],list[j+1]]) #memasukkan dua value yang ada di list ke task
  return task
def sculling(limit,task):
  count =0
  print("antrian proses antrian", task)
  while not(isEmpty(task)): #berhenti jika kosong
    print('iterasi ke - ',count+1)
    count +=1
    tmp = dequeue(task) #value pop akan di tampung ke variabel tmp
    timeLimit = tmp[1] - limit #value time[1] - limit dan di tampung ke timeLimit
    if timeLimit > 0: #jika timelimit lebih besar dari 0 maka akan di kembalikan lagi ke task 
        enqueue(task,[tmp[0],timeLimit])
    else: #jika tidak maka timelimit = 0 
        timeLimit = 0
    tmp[1] = timeLimit #tmp[1] = timelimit
    if timeLimit==0: #jika timelimit = 0 maka akan print proses selesai
        print(f'proses {tmp[0]} selesai di proses')
        print('Data proses tersisa : ',task)
    else: #jika tidak maka print akan sedang di proses
        print(f'proses {tmp[0]} sedang di proses dan sisa waktu proses {tmp[0]}= {timeLimit}')
        print('Data proses tersisa : ',task)
        
task = inputTask()
CPU = int(input("Waktu Proses CPU : "))
sculling(CPU,task)