/*
 * package com.askSenior.app.admin;
 * 
 * import java.io.IOException; import java.io.PrintWriter; import
 * java.rmi.ServerException;
 * 
 * import javax.servlet.ServletRequest; import
 * javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import org.json.JSONArray; import org.json.JSONObject;
 * 
 * import com.askSenior.app.Execute; import com.askSenior.app.Result; import
 * com.askSenior.app.admin.dao.AdminDAO; //import
 * com.askSenior.app.admin.vo.Criteria;
 * 
 * public class MemberListCategoryController implements Execute {
 * 
 * public Result execute(HttpServletRequest req, HttpServletResponse resp)
 * throws IOException, ServerException { req.setCharacterEncoding("UTF-8");
 * resp.setContentType("application/json;charset=utf-8"); PrintWriter out =
 * resp.getWriter();
 * 
 * JSONArray admins = new JSONArray();
 * 
 * return result;
 * 
 * //Criteria criteria = new Criteria();
 * 
 * // //criteria.setType(req.getParameter("type"));
 * //criteria.setType(req.getParameter("keyword"));
 * //criteria.setType(req.getParameter("order")); // //AdminDAO adminDAO = new
 * AdminDAO(); // // //adminDAO.categoryAll(criteria).stream().map(adminVO ->
 * new //JSONObject(adminVO)).forEach(admin -> admins.put(admin)); //
 * //out.write(admins.toString()); out.close();
 * 
 * // resp.setAttribute("admins", admins.toString()); return null; }
 * 
 * } }
 */