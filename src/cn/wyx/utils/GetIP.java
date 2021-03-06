package cn.wyx.utils;

import javax.servlet.http.HttpServletRequest;

public class GetIP 
{
	//获得客户端真实IP地址
    public static String getIpAddr(HttpServletRequest request) 
    {
        String ip = request.getHeader("x-forwarded-for");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) 
        {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) 
        {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) 
        {
            ip = request.getRemoteAddr();
        }
        if (ip.equals("0:0:0:0:0:0:0:1")) 
        {
            ip = "本地";
        }
        return ip;
    }
}