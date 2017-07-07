package cart.action;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;

import cart.control.ActionForWard;
import cart.dao.ListDao;

public class InfoAction implements Action{
	private String path;
	private boolean redirect;
	private ListDao dao=new ListDao();
	
	public InfoAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	public InfoAction() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
			try {
				request.setCharacterEncoding("EUC-KR");
				String pname=request.getParameter("pname");

				request.setAttribute("infoSel",dao.infoSel(pname));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}


		return new ActionForWard(path,redirect);
	}
	
	
}
