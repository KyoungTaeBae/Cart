package cart.action;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;

import cart.bean.baseballBean;
import cart.control.ActionForWard;
import cart.dao.ListDao;

public class CartAction implements Action{
	private String path;
	private boolean redirect;
	private ListDao dao=new ListDao();
	private baseballBean bean;

	
	
	public CartAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}



	public CartAction() {
		super();
		// TODO Auto-generated constructor stub
	}



	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		try {
			request.setCharacterEncoding("EUC-KR");
			String pname=request.getParameter("pname");
			baseballBean bean =  (baseballBean)dao.CartList(pname); 
			ArrayList<baseballBean>list= (ArrayList<baseballBean>) request.getSession().getAttribute("list");
			list.add(bean);
			
			request.getSession().setAttribute("list", list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return new ActionForWard(path,redirect);
	}
	
	
	
}
