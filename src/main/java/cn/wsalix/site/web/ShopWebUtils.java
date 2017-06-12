package cn.wsalix.site.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import cn.wsalix.shop.entity.Shop;

@Service("shopWebUtils")
public class ShopWebUtils {

	public void setShop(Shop shop, HttpServletRequest request) {
		Subject currentUser = SecurityUtils.getSubject();
		if (currentUser != null) {
			Session session = currentUser.getSession();
			session.removeAttribute("shop");
			session.setAttribute("shop", shop);
		} else {
			HttpSession session = request.getSession(true);
			session.removeAttribute("shop");
			session.setAttribute("shop", shop);
		}
	}

	public Shop getShop(HttpServletRequest request) {
		Subject currentUser = SecurityUtils.getSubject();
		if (currentUser != null) {
			Session session = currentUser.getSession();
			return (Shop) session.getAttribute("shop");

		} else {
			HttpSession session = request.getSession();
			return (Shop) session.getAttribute("shop");
		}
	}
}
