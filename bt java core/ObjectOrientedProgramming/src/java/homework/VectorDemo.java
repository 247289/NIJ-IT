/*
 Viết một Chương trình Java cho phép thao tác với VectorDemo. Tạo ra một đối tượng VectorDemo và thực hiện các thao tác sau:
a. Add thêm 10 element vào trong VectorDemo, mỗi thành phần sẽ là một String, sau đó in ra toàn bộ nội dung của VectorDemo.
b. Xóa đi element nằm ở vị trí thứ 5 trong VectorDemo, rồi in ra kích thước của VectorDemo.
c. Thay thế thành phần nằm ở vị trí thứ 3 bằng một thành phần mới là một String(“Vo Danh Khach”) rồi in ngay ra nội dung của thành phần vừa mới được cập nhật.
d. Kiểm tra xem VectorDemo có chứa thành phần “Hoang Duoc Su” hay không.
e. Xóa hết tất cả các thành phần của VectorDemo nói trên.
f. Lấy về thông tin của thành phần đầu tiên, thành phần cuối cùng trong VectorDemo, sau đó in ra thông tin của 2 thành phần này.
g. Gọi hàm của lớp VectorDemo để lấy ra một mảng chứa tất cả các thành phần của VectorDemo, sau đó in ra nội dung của mảng này.
h. Chèn thêm một thành phần có nội dung là “Vô Ảnh Cước” vào trước thành phần cuối cùng của VectorDemo.
i. Lấy ra chỉ số của thành phần nằm ở vị trí thứ 6 của VectorDemo, sau đó in ra nội dung của thành phần này.
Mỗi mục sẽ được thực hiện trong một menuitem, và được viết trong một phương thức riêng biệt.

 */
package java.homework;

/**
 *
 * @author VLIT
 */
public class VectorDemo<E> {
    //using Structure Stack :)
    private Element<E> e =null;

    public E pop( ) {
        E result = e.value;
        e = e.next;
        return result;
    }

    public boolean hasNext(){
       return e != null;
    }

    public void push(E v) { e = new Element(v, e); }
    
    class Element<T>{
        public T value;
        public Element<T> next;

        public Element(T t) {
            value = t;
        }
        Element(T v, Element<T> n) {
            value = v;
            next = n;
        }
        
    }
}
