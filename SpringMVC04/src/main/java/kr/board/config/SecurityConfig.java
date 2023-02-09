package kr.board.config;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.csrf.CsrfFilter;
import org.springframework.security.web.firewall.DefaultHttpFirewall;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.web.filter.CharacterEncodingFilter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	//더블슬래쉬 허용
//	@Override
//	public void configure(WebSecurity web) throws Exception {
//	    web.httpFirewall(defaultHttpFirewall());
//	}
//	 
//	@Bean
//	public HttpFirewall defaultHttpFirewall() {
//	    return new DefaultHttpFirewall();
//	}
	//더블슬래시 허용
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
	//요청에 대한 보안설정
		CharacterEncodingFilter filter = new CharacterEncodingFilter();
		filter.setEncoding("UTF-8");
		filter.setForceEncoding(true);
		http.addFilterBefore(filter,CsrfFilter.class);
	}
}
