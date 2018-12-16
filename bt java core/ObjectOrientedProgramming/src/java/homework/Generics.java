/*
 Bài 15: Viết một Chương trình Java tạo ra một generic class, và tạo ra một generic method cho phép in ra chiều dài.
Method này sẽ bao gồm một tham số là một Vector chỉ chấp nhận các phần tử có kiểu dữ liệu là subtype của kiểu Number.
Tạo ra vài đối tượng ứng với các type parameter khác nhau như: Integer, Float, Double v.v… để kiểm nghiệm những lợi ích của generic.
 */
package java.homework;

import java.util.ArrayList;

/**
 *
 * @author VLIT
 */
public class Generics<T> {
    private T t;

    public T getT() {
        return t;
    }

    public void setT(T t) {
        this.t = t;
    }
    //in ra chiều dài mảng truyền vào
    public <T> int ShowValue(T[] val) {
        return val.length;
    }
    //subtype number
    //--here
}
