/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StructAdmin;

import Controller.BookDBAdmin;
import Model.Book;

/**
 *
 * @author Admin
 */
public class UpdateBookAction {

    private String id;
    private String title;
    private String author;
    private String category;
    private float price;
    private int quantity;
    private String description;
    private String cover = "";

    private final String SUCCESS = "success";

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }
    private final String FAIL = "fail";

    public UpdateBookAction() {
    }

    public String execute() throws Exception {
        try {
            Book b = new Book(id, title, category, price, quantity, author, description, cover);
            boolean result = BookDBAdmin.updateBook(b);
            String URL = FAIL;
            if (result) {
                URL = SUCCESS;
            }
            return URL;
        } catch (Exception e) {
            return FAIL;
        }
    }

}
