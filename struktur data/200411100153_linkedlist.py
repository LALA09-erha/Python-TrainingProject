class Node:
    def __init__(self, init_data):
        self.data = init_data
        self.next = None
    def getData(self):
        return self.data
    def getNext(self):
        return self.next
    def setData(self, newdata):
        self.data = newdata
    def setNext(self, new_next):
        self.next = new_next


class OrderedLinkedList:
    def __init__(self):
        self.head = None
    def isEmpty(self):
        return self.head==None
    
    def size(self):
        curent = self.head
        count = 0
        while curent != None:
            count = count + 1
            curent = curent.getNext()
        return count
    
    def display(self):
        curent = self.head
        while curent != None:
            print(curent.getData())
            curent = curent.getNext()
    def remove(self, item):
        curent = self.head
        previous = None
        found = False
        while not found:
            if curent.getData() == item:
                found = True
            else:
                previous = curent
                curent = curent.getNext()
        if previous == None:
            self.head = curent.getNext()
        else:
            previous.setNext(curent.getNext())       
    def search(self,item):
        curent = self.head
        found = False
        stop=False
        while curent != None and not found and not stop:
            if curent.getData() == item:
                found = True
            else:
                if curent.getData() > item:
                    stop = True
                else:
                    curent = curent.getNext()
        return found
    def add(self, item):
        curent=self.head
        previous = None
        stop = False
        while curent != None and not stop:
            if curent.getData() > item:
                stop = True
            else:
                previous = curent
                curent = curent.getNext()
        
        temp = Node(item)
        if previous == None:
            temp.setNext(self.head)
            self.head = temp
        else: 
            temp.setNext(curent)
            previous.setNext(temp)
    def insertPrevios(self,data,ndata):
        #jika ujung dari linked list menunjuk ke none maka
        if self.head is None :
            print(data,'Tidak ada item di dalam data')
        #jika tidak 
        else:
            #di Cek apakah value data sama dengan value dari ujung linked list
            if data == self.head.data :
                #jika iya, maka menambahkan node baru dengan variabel new data dan item ndata
                newData = Node(ndata)
                #lalu pointer next dari node newData akan mengarah value/ angka yang berada di ujung sebelumnya
                newData.next = self.head
                #lalu value ujung / head dari linked list akan menjadi atau sama dengan value newData
                self.head = newData
                return
            #jika tidak termasuk kedalam perkondisian maka,
            temp = self.head #value head dari linked list akan di simpan ke temp
            #jika pointer dari temp tidak menunjuk ke none maka masuk ke while
            while temp.next is not None:
                #di dalam while jika value dari temp.next.data artinya angka selanjutnya dari linked list 
                # sama dengan data maka break
                if temp.next.data == data:
                    break
                #jika tidak, maka temp akan menenjukkan ke angka selanjutnya/ item selanjutnya
                temp = temp.next
            #jika pointer temp menunjukkan ke none maka akan mengembalikan nilai print
            if temp.next is None:
                print(data, "item tidak ada di data")
            #jika tidak, maka
            else:
                newData = Node(ndata) # menambahkan node baru dengan variabel new data dan item ndata
                newData.next = temp.next #lalu pointer next dari node newData akan mengarah item / angka yang di temukan
                temp.next = newData #lalu item yang di temukan dari linked list akan menjadi atau sama dengan value newData
    def insertNext(self,data,ndata):
        temp = self.head #value head dari linked list akan di simpan ke temp
        while temp is not None: #jika pointer dari temp tidak menunjuk ke none maka masuk ke while
            #di dalam while jika value dari temp.data artinya angka selanjutnya dari linked list 
            # sama dengan data maka break
            if temp.data == data:
                break
            #jika tidak ke perkondian, maka temp akan menenjukkan ke angka / item selanjutnya
            temp = temp.next
        #jika  temp valuenya  none maka akan mengembalikan nilai print
        if temp is None:
            print("item tidak ada di data")
        #jika tidak, maka
        else:
            newData = Node(ndata)# menambahkan node baru dengan variabel new data dan item ndata
            newData.next = temp.next #lalu pointer next dari node newData akan mengarah item / angka yang di temukan
            temp.next = newData #lalu item yang di temukan dari linked list akan menjadi atau sama dengan value newData

myList=OrderedLinkedList()
myList.add(10)
myList.insertPrevios(10, 100)
myList.insertNext(10, 100)
myList.display()