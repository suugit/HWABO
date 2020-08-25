package common.filter;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
@WebFilter("/*")
public class EncodingFilter implements Filter {
    public EncodingFilter() {
        System.out.println("EncodingFilter 생성됨 ----------");
    }
    public void destroy() {
        System.out.println("EncodingFilter 소멸됨 -=-=-=-=-");
    }
    //chain : 연결시킬 서블릿이 어떤 것인지 알고있는 것
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        //전송방식이 post일때에는 반드시 request에 대해서 incoding 해야한다.
        //자식타입인 HttpServletRequest로 타입을 바꿀 것임.부모는 자식꺼 사용 못하니까(다운 캐스팅)
        HttpServletRequest hrequest = (HttpServletRequest)request;
        if(hrequest.getMethod().equalsIgnoreCase("post")) { //equalsIgnoreCase : 대소문자 무시하고 같은 문자냐 ? 의 의미
            System.out.println("post 전송시에만 인코딩 처리됨");
            request.setCharacterEncoding("utf-8"); //우리는 request를 보낼거니까 request를 incoding 해야한다.
        }
        // pass the request along the filter chain
        chain.doFilter(request, response);
    }
    public void init(FilterConfig fConfig) throws ServletException {
        // TODO Auto-generated method stub
    }
}
