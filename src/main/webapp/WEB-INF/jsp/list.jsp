<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<TITLE>图书信息</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery_1.9.js"></script>
      <table class="providerTable" cellpadding="0" cellspacing="0">
          <tr class="firstTr">
              <th width="10%">书名</th>
              <th width="20%">作者</th>
              <th width="10%">发行商</th>
              <th width="10%">页数</th>
              <th width="10%">金额</th>
              <th width="10%">简介</th>
      </tr>
      <c:forEach var="book" items="${list}" varStatus="status">
          <tr>
              <td>
                  <span>${book.name}</span>
              </td>
              <td>
                  <span>${book.author }</span>
              </td>

              <td>
                  <span>${book.publish}</span>
              </td>
              <td>
                  <span>${book.page}</span>
              </td>
              <td>
                  <span>${book.price}</span>
              </td>
              <td>
                  <span>${book.content}</span>
              </td>
              <td>
                  <span><a class="viewUser" href="javascript:;" userid=${book.id } ><img src="${pageContext.request.contextPath }/static/images/read.png" alt="查看" title="查看"/></a></span>
                  <span><a class="moyUser" href="${pageContext.request.contextPath}/Xiugai?uid=${book.id}"><img src="${pageContext.request.contextPath }/static/images/xiugai.png" alt="修改" title="修改"/></a></span>
                  <span><a class="delet" href="${pageContext.request.contextPath}/dele?uid=${book.id }" ><img src="${pageContext.request.contextPath }/static/images/schu.png" alt="删除" title="删除"/></a></span>
              </td>
          </tr>
      </c:forEach>
          <a href="${pageContext.request.contextPath}/adduser" >添加用户</a>
      </table>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/userlist.js"></script>
</html>
