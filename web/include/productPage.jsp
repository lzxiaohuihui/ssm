<%--
  Created by IntelliJ IDEA.
  User: 小灰灰
  Date: 2019/11/8
  Time: 21:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="productPage">
    <div class="product">




        <%
            for (Item item : itemList){


        %>
        <div class="productUnit" price="<%=item.getPromotionPrice()%>" name="<%=item.getName()%>">
            <div class="productItem">
                <a href="item.jsp?cid=<%=item.getCid()%>" class="productImage"> <img src="img/item/<%=item.getCid()*5%>.jpg" width="190px" height="190px" alt=""></a>
                <span class="productPrice">￥<%=item.getPromotionPrice()%></span>
                <a href="item.jsp?cid=<%=item.getCid()%>" class="productDetail"><%=item.getName()%></a>
                <a href="item.jsp?cid=<%=item.getCid()%>" class="productMall">天狗专卖</a>
                <div class="showProductInfo">
                    <div class="productDealMonth">月销量
                        <span class="productDealMonthNumber">1笔</span>
                    </div>
                    <div class="productReview">评价
                        <span class="productReviewNumber">10</span>
                    </div>
                    <a href="#"><span class="wangwang"><img  src="img/site/wangwang.png" alt=""></span></a>
                </div>
            </div>
        </div>
        <%
            }
        %>

    </div>
</div>