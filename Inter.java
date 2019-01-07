package com.Int;

import com.bean.Owner;
import com.bean.Shop;
import com.bean.UserLogin;


public interface Inter {
	public int userregs(UserLogin ur);
	public boolean log(UserLogin in);
	public int ownerreg(Owner ow);
	public boolean ownerlog(Owner lo);
	public int show(Shop sh);

}
