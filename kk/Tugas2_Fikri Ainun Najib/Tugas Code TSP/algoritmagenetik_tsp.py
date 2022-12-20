import math
import random as rd
import numpy as np
import random


def nilaiFitness(kombinasi):
    fitness = 0
    for i in range(1,len(kombinasi)):
        fitness = fitness + math.sqrt((math.pow((node[kombinasi[i]][0] - node[kombinasi[i-1]][0]),2))+math.pow((node[kombinasi[i-1]][1] - node[kombinasi[i]][1]),2))
    return -fitness

def tournamentParent(populasi, panjangTournament):
    idxSample = np.arange(len(populasi))
    np.random.shuffle(idxSample)
    idxSample = idxSample[0:panjangTournament]
    fitnesses = [(nilaiFitness(pop[idxSample[i]])) for i in range(panjangTournament)]
    mergedArray = [(idxSample[i], fitnesses[i]) for i in range(panjangTournament)]
    mergedArray = sorted(mergedArray,key = lambda a : a[1], reverse = True)
    return mergedArray[0][0], mergedArray[1][0]

def generateKromosom(city_list, n_population):

    # population_set = []
    # for i in range(city_list):
    #     #Randomly generating a new solution
    #     sol = random.sample(range(0,n_population),n_population)
    #     # sol_i = np.random.choice(n_population, n_population, replace=False)
    #     population_set.append(sol)
    population_set = [[1,4,0,3,2],[2,1,3,4,0],[1,3,2,4,0],[0,4,1,2,3]]
    return population_set

# def generateKromosom(jumlahPopulasi, panjangKromosom):
#     populasi = []
#     tmpStartEndNode = np.array([0])
#     for i in range(jumlahPopulasi):
#         kromosom = []
#         kromosom = np.arange(1,panjangKromosom)
#         np.random.shuffle(kromosom)
#         kromosom = np.concatenate((tmpStartEndNode,kromosom), axis = 0)
#         kromosom = np.concatenate((kromosom,tmpStartEndNode), axis = 0)
#         populasi.append(list(kromosom))
    
#     print(populasi)
#     return populasi

def crossover(kromosom1, kromosom2, pC):
    prob = np.random.random()
    point = np.random.randint(1,len(kromosom1)-1)
    tmpKromosom1 = []
    tmpKromosom2 = []
    cekKromosom1 = []
    cekKromosom2 = []
    if(prob <= pC):
        tmpKromosom1 = kromosom1[:point]
        tmpKromosom2 = kromosom2[:point]
        cekKromosom1 = kromosom1[point:]
        cekKromosom2 = kromosom2[point:]
        for i in range(point, len(kromosom2)):
            if(kromosom2[i] in tmpKromosom1):
                for j in range(len(kromosom1)):
                    if((kromosom1[j] not in tmpKromosom1) and (kromosom1[j] not in cekKromosom2)):
                        tmpKromosom1 = tmpKromosom1 + [kromosom1[j]]
                        break
                        
            else:
                tmpKromosom1 = tmpKromosom1 + [kromosom2[i]]
        for i in range(point, len(kromosom1)):
            if(kromosom1[i] in tmpKromosom2):
                for j in range(len(kromosom2)):
                    if((kromosom2[j] not in tmpKromosom2) and (kromosom2[j] not in cekKromosom1)):
                        tmpKromosom2 = tmpKromosom2 + [kromosom2[j]]
                        break
            else:
                tmpKromosom2 = tmpKromosom2 + [kromosom1[i]]
        
        tmpKromosom1 = tmpKromosom1 + kromosom1[len(kromosom1)-1:len(kromosom1)]
        tmpKromosom2 = tmpKromosom2 + kromosom2[len(kromosom2)-1:len(kromosom2)]
    else:
        tmpKromosom1 = kromosom1
        tmpKromosom2 = kromosom2
    return tmpKromosom1, tmpKromosom2

def mutasi(kromosom, pM):
    for i in range(1,len(kromosom)-1):
        tmp = 0
        prob = np.random.random()
        if(prob <= pM):
            while(tmp == 0):
                tmp = np.random.randint(1,len(kromosom)-2)
            for j in range(1, len(kromosom)-1):
                if(tmp == kromosom[j]):
                    kromosom[j] = kromosom[i]
                    kromosom[i] = tmp
                    break
    return kromosom

def steadyState(jumlahGeneration ,populasi, jumlahPopulasi, panjangTournament):
    for j in range(jumlahGeneration):
        gabungan = []
        child = []
        fitnesses = []
#         print(populasi)
        for i in range(round(len(populasi)/2)):
            idxParent1, idxParent2 = tournamentParent(populasi, panjangTournament)
            anak1 = populasi[idxParent1][:]
            anak2 = populasi[idxParent2][:]
            
            #Crossover
            anak1,anak2 = crossover(anak1,anak2,pC)
            
            #Mutasi
            anak1 = mutasi(anak1,pM)
            anak2 = mutasi(anak2,pM)
            
            child.append(anak1)
            child.append(anak2)
            
        gabungan = populasi + child
        for i in range(len(gabungan)):
            fitnesses.append(nilaiFitness(gabungan[i]))
        mergedArray = [(gabungan[i], fitnesses[i]) for i in range(len(gabungan))]
        mergedArray = sorted(mergedArray, key = lambda a : a[1], reverse = True)
        pop = []
        tmp = []
        t = 0
        jumlah = 0
        
#         print(mergedArray)
        for i in range(len(gabungan)):
            if(i >= 1):
                nilai = nilaiFitness(gabungan[i])
                if(nilai == mergedArray[jumlah-1][1]):
                    tmp.append(mergedArray[i][0])
                    t += 1
                else:
                    pop.append(mergedArray[i][0])
                    jumlah+=1
            else:
                pop.append(mergedArray[i][0])
                jumlah+=1
            if(jumlah == jumlahPopulasi):
                break
        
        z = 0
        while(jumlah < jumlahPopulasi):
            pop.append(tmp[z])
            z+=1
            jumlah+=1
        populasi = []
        populasi = pop
#         print(len(pop))
        
#         nilai = -nilaiFitness(populasi[0])
#         print()
#         print(nilai)
    return populasi

node = [[2,3],
        [4,7],
        [9,0],
        [10,8],
        [16,5]]

jumlahGenerasi = 1
jumlahIndividu = 4
panjangTournament = round(jumlahIndividu/2)
pC = 0.7
pM = 0.1

pop = generateKromosom(jumlahIndividu,5)
pop = list(pop)
pop = steadyState(jumlahGenerasi, pop, jumlahIndividu, panjangTournament)
print(pop)

print("Rute terbaik : "+str(pop[0]))
print("Cost (jarak) : "+str(-nilaiFitness(pop[0])))