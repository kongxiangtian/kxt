package com.springmvc.service;

import com.springmvc.pojo.Item;

import java.util.List;

public interface IItemService {

    int deleteItemById(int id);

    int updateItem(Item item);

    int addItem(Item item);

    List<Item> getAllItem();

    Item getItemById(int id);
}
