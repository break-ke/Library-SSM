<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
	<TITLE>发布图书信息</TITLE>
	<META content="text/html; charset=utf-8" http-equiv=Content-Type>
	<LINK rel=stylesheet type=text/css href="css/style.css">
	<script type="text/javascript" src="js/jquery_1.9.js"></script>
	<META name=GENERATOR content="MSHTML 8.00.7601.17514">
</HEAD>
<BODY>

<DIV id=regLogin class=wrap>
	<DIV class=dialog>
		<DL class=clearfix>

		</DL>
		<DIV class=box>
			<FORM id=add_action method=post action="${pageContext.request.contextPath}/addBook">
				<DIV class=infos>
					<TABLE class=field>
						<TBODY>
						<TR>
							<TD class=field>标 题：</TD>
							<TD><INPUT id=add_action_title class=text type=text
									   name=name></TD>
						</TR>

						<TR>
							<TD class=field>作者：</TD>
							<TD><INPUT id=add_action_floorage class=text type=text
									   name=author></TD>
						</TR>
						<TR>
							<TD class=field>出版社：</TD>
							<TD><INPUT id=add_action_price class=text type=text
									   name=publish></TD>
						</TR>
						<TR>
							<TD class=field>页数：</TD>
							<TD><INPUT class=text type=text name=page></TD>
						</TR>
						<TR>
							<TD class=field>价格：</TD>
							<TD><INPUT class=text type=text name=price></TD>
						</TR>
						<TR>
							<TD class=field>内容摘要：</TD>
							<TD><INPUT class=text type=text name=content></TD>
						</TR>
						<!--
                <tr>
                    <td class="field">坐  标：</td>
                    <td><input type="text" class="text" name="point" />
                    </td>
                </tr>
                -->
						<!--  <tr>
                    <td class="field">Y 坐  标：</td>
                    <td><input type="text" class="text" name="point.y" /></td>
                </tr>-->

						</TBODY>
					</TABLE>
					<DIV class=buttons>
						<INPUT type="submit" class="sub" name="sub"  value=立即发布>
					</DIV>
				</DIV>
			</FORM>
		</DIV>
	</DIV>
</DIV>
<DIV id=footer class=wrap>
	<DL>
	</DL>
</DIV>
</BODY>
</HTML>
