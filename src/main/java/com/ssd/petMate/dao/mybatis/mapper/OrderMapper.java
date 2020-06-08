package com.ssd.petMate.dao.mybatis.mapper;

import java.util.List;

import com.ssd.petMate.domain.Order;

public interface OrderMapper {

  List<Order> getOrderList(int userID); // 주문 목록 가져오기
  
  Order getOrder(Order order); //주문 정보 가져오기
  
  void insertOrder(Order order); //주문 추가하기
  
}
