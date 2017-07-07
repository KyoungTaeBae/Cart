package cart.action;

import javax.servlet.http.HttpServletRequest;

import cart.control.ActionForWard;

public interface Action{
	public ActionForWard execute(HttpServletRequest request);

}
