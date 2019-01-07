package com.Imp;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.ResultSet;

import com.Int.Inter;
import com.bean.Owner;
import com.bean.Shop;
import com.bean.UserLogin;
import com.dbcon.DBConn;

public class Imple implements Inter {

	 Connection con;	
	@Override
	public int userregs(UserLogin ur) {
		int r=0;
		try
		{
		con=DBConn.create();
		PreparedStatement ps=con.prepareStatement("INSERT INTO dmcluster.userregistration VALUES(?,?,?,?,?,?,?)");
		ps.setString(1, ur.getName());
		ps.setString(2, ur.getEmail());
		ps.setString(3, ur.getPhone());
		ps.setString(4, ur.getPasswod());
		ps.setString(5, ur.getCpasswod());
		ps.setString(6, ur.getKey());
		ps.setString(7, ur.getKeyma());
		r=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return r;
	}
	
	@Override
	public boolean log(UserLogin in) {
		boolean sel=false;
		try{
			con=DBConn.create();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM dmcluster.userregistration WHERE ky='"+in.getKey()+"' and passwod='"+in.getPasswod()+"'");
	
			ResultSet rs=ps.executeQuery();
			sel=rs.next();
			
		}

		catch(Exception e){
			e.printStackTrace();
		}
		return sel;
	}
	
	
	@Override
	public int ownerreg(Owner ow) {
		// TODO Auto-generated method stub
		int w=0;
		try
		{
			con=DBConn.create();
			PreparedStatement ps=con.prepareStatement("INSERT INTO dmcluster.owner VALUES(?,?,?,?,?,?,?)");
			ps.setString(1, ow.getShop());
			ps.setString(2, ow.getBranch());
			ps.setString(3, ow.getArea());
			ps.setString(4, ow.getEmail());
			ps.setString(5, ow.getPhone());
			ps.setString(6, ow.getPass());
			ps.setString(7, ow.getConpass());
			w=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return w;
	}
	@Override
	public boolean ownerlog(Owner lo) {
		boolean o=false;
		try
		{
			con=DBConn.create();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM dmcluster.owner WHERE email=? and Password=?");
			ps.setString(1, lo.getEmail());
			ps.setString(2, lo.getPass());
			
			ResultSet p=ps.executeQuery();
			o=p.next();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return o;
	}
	@Override
	public int show(Shop sh) {
		// TODO Auto-generated method stub
		int s=0;
		try
		{
			con=DBConn.create();
			PreparedStatement ps=con.prepareStatement("INSERT INTO dmcluster.bill VALUES(?,?,?,?,?,?,?)");
			ps.setString(1, sh.getShopname());
			ps.setString(2, sh.getMobilename());
			ps.setString(3, sh.getMobilemodel());
			ps.setString(4, sh.getBranch());
			ps.setString(5, sh.getPrice());
			ps.setString(6, sh.getBilldate());
			ps.setString(7, sh.getMobilecolor());
			s=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return s;
	}
	
}
