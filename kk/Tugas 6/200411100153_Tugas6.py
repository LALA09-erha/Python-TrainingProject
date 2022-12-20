import numpy as np

def neighborhoodFn (wincv,cv):
    std=2
    temp=np.linalg.norm(wincv-cv)
    result=np.exp(-1*temp/(2*std**2))
    return result

cv=np.array([[0.9, 0.7, 0.1, 0.2],[0.2, 0.2, 0.7, 0.9]])
data=np.array([[1, 1, 1, 0],[0, 0, 0, 1],[1, 0, 0, 0],[0, 0, 1, 1]])

jumlahepoch=1
learnRate=0.5

#proses learning
for k in range(jumlahepoch):
    for i in range (len(data)):
        tempdist=np.zeros(len(cv))     
for j in range (len(cv)):
    tempdist[j]=np.linalg.norm(data[i]-cv[j])
    minind=np.argmin(tempdist)
    
#update bobot sesuai dengan fungsi ketetanggaan             
for j in range (len(cv)):
    cv[j]=cv[j]+learnRate*neighborhoodFn(cv[minind],cv[j])
    print (cv)
    
#proses testing-clustering
for i in range (len(data)):
    tempdist=np.zeros(len(cv))
for j in range (len(cv)):
    tempdist[j]=np.linalg.norm(data[i]-cv[j])
    minind=np.argmin(tempdist)
    print(minind)