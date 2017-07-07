package cart.control;

import cart.action.Action;
import cart.action.CartAction;
import cart.action.InfoAction;
import cart.action.RemoveAction;
import cart.action.loginAction;




public class ActionFactory {
	
	public static  Action getAction(String cmd){
		Action action=null;
		if(cmd.equals("login")){
			action=new loginAction("ShowppingList.jsp",false);
		}else if(cmd.equals("info")){
			action=new InfoAction("Info.jsp",false);
		}else if(cmd.equals("cartlist")){
			action=new CartAction("CartList.jsp",false);
		}else if(cmd.equals("remove")){
			action=new RemoveAction("CartList.jsp",false);
		}
		return action;
		
	}//method

}




