# membuat perhitungan pembelajaran perceptron
# menggunakan library numpy
# x = input
# y = target
# w = bobot
# b = bias
# lr = learning rate
    
import numpy as np
# fungsi aktivasi sign ()
def activation(x):
    # print("QQ")
    if(x > 0):
        return 1
    elif (x < 0):
        return -1
    else:
        return 0


# fungsi pembelajaran
def learn(x, y, w, b, lr):
    print("data x = ", x)
    print("data y = ", y)
    # print("data lr = ", lr)
    print("data w = ", w)
    print("data b = ", b)
    print('net = ', np.dot(x, w) + b)
    # hitung output
    output = activation(np.dot(x, w) + b)
    # hitung error
    error = y - output
    print('output = ', output)
    # print('error = ', error)

    if(y == output):
        # print('y sama dengan output')
        pass
    else:
        # update bobot dan bias
        w[0]+= lr *y * x[0]
        w[1]+= lr *y * x[1]
        b+= lr *y
        # w+= lr *y * x
        # b+= lr *y

    # # update bobot dan bias
    # w += lr * error * x
    # b += lr * error
    print('w baru= ', w)
    print('b baru= ', b)
    print('-----------------')
    return w, b

# fungsi prediksi
def predict(x, w, b):
    # hitung output
    output = activation(np.dot(x, w) + b)
    return output

# fungsi main
def main():
    # input
    x = np.array([[1, 1], [1, 0], [0, 1], [0, 0]])
    # target
    y = np.array([1, -1, -1, -1])
    # bobot
    w = np.array([0, 0])
    # bias atau theta
    b = 0
    # learning rate atau alpha
    lr = 1
    # jumlah iterasi
    epoch = 9
    # proses pembelajaran
    for i in range(epoch):
        print("Epoch ke-", i+1)
        for j in range(len(x)):
            # if(i ==0):
            #     pass
            # else:
            w, b = learn(x[j], y[j], w, b, lr)
            # print(w, b)

            temp = []
            for k in range(len(x)):
                temp.append(predict(x[k], w, b))

        # Jika hasil prediksi sama dengan target, maka berhenti
        if(temp == y).all():
            print("Berhenti pada epoch ke-", i+1)
            break

    # # proses prediksi
    # total = 0
    # for i in range(len(x)):
    #     print(predict(x[i], w, b))    
    #     # Menghitung akurasi prediksi 
    #     akurasi = 0
    #     for i in range(len(x)):
    #         if(predict(x[i], w, b) == y[i]):
    #             akurasi += 1
        
    #     total += akurasi/len(x)*100
    # # Menghitung akurasi total
    # print("Akurasi total = ", total/len(x), "%")


if __name__ == "__main__":
    main()
