package org.example.demo1.repo;

import org.example.demo1.modells.Book;

import java.util.ArrayList;
import java.util.Objects;

public class repo {
    private static repo instance;
    private ArrayList<Book> booklist;

    public static repo getInstance() {
        if(instance==null){
            instance = new repo();
        }
        return instance;
    }
    private repo(){
        booklist = new ArrayList<>();
        booklist.add(new Book("ISBN2","Author1","Java1"));
        booklist.add(new Book("ISBN3","Author2","Java2"));
        booklist.add(new Book("ISBN4","Author3","Java3"));
    }

    public ArrayList<Book> getBookList(){
        return booklist;
    }

    public Book bookSearchByIsbn(String isbn){
        for (Book b : booklist){
            if(Objects.equals(b.getIsbn(), isbn)) return b;
        }
        return null;
    }

    public ArrayList<Book> getBookListByName(String nev) {
        ArrayList<Book> valogatott=new ArrayList<>();
        for (Book b : booklist){
            if(Objects.equals(b.getBuyer(), nev)) valogatott.add(b);
        }
        return valogatott;
    }
}
