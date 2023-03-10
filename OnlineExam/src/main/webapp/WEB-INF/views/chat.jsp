<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script defer src="/js/chat.js"></script>
<link rel="stylesheet" href="/css/chat.css"/>
<input id="myId" type="hidden" value="${principal.user.id}">
<main>
    <div class="msg">
        <div class="msg__main">
            <div class="msg__main__user">
                <c:forEach var="room" items="${rooms}">
                <div class="msg__main__content slow" data-id="1">
                    <div class="msg__main__content__image"><img src="${room.recvUser.username}" width="30"></div>
                    <div class="msg__main__content__name"><span>${room.recvUser.username}</span>
                        <span>
                            <c:set value="${room.recvUser.username}" var="date"/>
                            <%
                                Date date = (Date)pageContext.getAttribute("date");
                                long now = Calendar.getInstance().getTimeInMillis() - date.getTime();
                                long minute = now / (1000 * 60);
                                long hour = now / (1000 * 60 * 60);
                                long day = now / (1000 * 60 * 60 * 24);
                                if(day >= 1) {
                                    out.print(day + "일전");
                                    return;
                                } else if(hour >= 1) {
                                    out.print(hour + "시간전");
                                    return;
                                } else  {
                                    out.print(minute + "분전");
                                }
                            %>
                        </span>
                    </div>
                </div>
                </c:forEach>
            </div>
            <div class="msg__main__plus">
                <i id="findUserToggleBtn" class="fa-solid fa-plus fa-2x"></i>
            </div>
        </div>
        <div class="findUser-box remove">
            <div class="findUser-box__search">
                <input id="search-input" placeholder="...search">
                <div class="findUser-box__search__inner">
                </div>
            </div>
            <div class="findUser-box__user">
                <div class="findUser-box__user__column">
                </div>
            </div>
        </div>

        <div class="msg__sub">
            <div class="img-box">
                <img src="/image/chatting.png" alt=""/>
            </div>
            <div class="img-box__container">
                <iframe id="iframe" src="/detail" width="100%" height="80%"></iframe>
                <div class="send-box">
                    <input class="send-box__content" value="dd"/>
                    <button class="send-box__btn" id="send-box__btn">보내기</button>
                </div>
            </div>
        </div>
    </div>
</main>

<%@ include file="layout/header.jsp"%>