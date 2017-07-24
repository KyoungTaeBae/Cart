package cart.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import cart.bean.baseballBean;
import cart.control.ActionForWard;
import cart.dao.ListDao;

public class loginAction implements Action{
	private String path;
	private boolean redirect;
	private ListDao dao=new ListDao();
	
	
	public loginAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}
	public loginAction() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		request.setAttribute("list", dao.ListBaseball());
		ArrayList<baseballBean> list2=new ArrayList<baseballBean>();
	    request.getSession().setAttribute("list2", list2);
		return new ActionForWard(path,redirect);
	}
	
	
}
