package cart.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import cart.bean.baseballBean;
import cart.control.ActionForWard;
import cart.dao.ListDao;

public class RemoveAction implements Action{
	private String path;
	private boolean redirect;
	private ListDao dao=new ListDao();
	private baseballBean bean;
	
	public RemoveAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}
	
	public RemoveAction() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		ArrayList<baseballBean>list=(ArrayList<baseballBean>) request.getSession().getAttribute("list");
		int index=Integer.parseInt(request.getParameter("index"));
		list.remove(index);
		request.getSession().setAttribute("list", list);
		
		return new ActionForWard(path,redirect);
	}

	
}
