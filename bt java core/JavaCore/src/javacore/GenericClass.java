package javacore;

public class GenericClass<T> {

    public <T> void displayValue(T[] t) {
        for (T i : t) {
            System.out.print(" " + i);
        }
    }
}
