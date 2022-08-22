import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class Kt {
    public static String buatNomor(int[] numbers) {
        String hasil = "";
        for (int i = 0; i <= numbers.length - 1; i++) {
            if (i <= 2) {
                if (i == 0) {
                    hasil += '(';
                    hasil += numbers[i];

                } else if (i == 2) {
                    hasil += numbers[i];
                    hasil += ')';
                } else {
                    hasil += numbers[i];
                }
            } else if (i <= 5) {
                if (i == 3) {
                    hasil += ' ';
                    hasil += numbers[i];
                } else if (i == 5) {
                    hasil += numbers[i];
                    hasil += '-';
                } else {
                    hasil += numbers[i];

                }
            } else {
                hasil += numbers[i];
            }
        }
        System.out.println(hasil);
        return hasil;
    }
}

/// cara kedua
// public class Kata {
// public static String createPhoneNumber(int[] numbers) {
// return String.format("(%d%d%d)
/// %d%d%d-%d%d%d%d",numbers[0],numbers[1],numbers[2],numbers[3],numbers[4],numbers[5],numbers[6],numbers[7],numbers[8],numbers[9]);
// }
// }

public class PhoneTest {
    @Test
    public void tests() {
        assertEquals("(123) 456-7890", Kt.buatNomor(new int[] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 }));
    }
}