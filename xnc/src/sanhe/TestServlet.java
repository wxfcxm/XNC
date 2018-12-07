package sanhe;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;



/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setHeader("Access-Control-Allow-Origin", "*");
		PrintWriter out = response.getWriter();
		//参数url化
		String city = java.net.URLEncoder.encode(request.getParameter("site"), "utf-8");
		//拼地址
		String apiUrl = String.format("http://tj.nineton.cn/Heart/index/all?city=%s",city);
		//开始请求
		URL url = new URL(apiUrl);
		if("https".equalsIgnoreCase(url.getProtocol())){
		   try {
			SslUtils.ignoreSsl();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		
		HttpURLConnection open = (HttpURLConnection) url.openConnection();
		InputStream input = open.getInputStream();
		//这里转换为String，带上包名，怕你们引错包
		String result = org.apache.commons.io.IOUtils.toString(input,"utf-8");
		//输出
		System.out.println(result);
		out.print(result);
		
	}



}
