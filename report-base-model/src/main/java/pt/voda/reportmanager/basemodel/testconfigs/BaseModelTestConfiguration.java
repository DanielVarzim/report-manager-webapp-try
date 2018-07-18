package pt.voda.reportmanager.basemodel.testconfigs;

import java.util.Date;

import javax.sql.DataSource;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.PropertySource;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import pt.voda.reportmanager.basemodel.model.FixedError;
import pt.voda.reportmanager.basemodel.model.MobileError;
import pt.voda.reportmanager.basemodel.model.Team;
import pt.voda.reportmanager.basemodel.model.User;


@EnableAutoConfiguration
@EntityScan(basePackages= {"pt.voda.reportmanager.basemodel.model"})
@EnableJpaRepositories(basePackages= {"pt.voda.reportmanager.basemodel.daos"})
@Configuration
@PropertySource("classpath:application.properties")
public class BaseModelTestConfiguration {
	
	@ConfigurationProperties(prefix = "spring.datasource")
	@Bean
	@Primary
	public DataSource dataSource() {
		return DataSourceBuilder.create().build();
	}
	
	@Bean
	public Team team() {
		Team t = new Team();
		t.setCreatedAt(new Date());
		t.setIsDeleted(false);
		t.setName("Default");
		return t;
	}
	
	@Bean
	public User user() {
		User u = new User();
		u.setColor("Default");
		u.setCreatedAt(new Date());
		u.setEmail("Default");
		u.setIsAdmin(false);
		u.setIsDeleted(false);
		u.setName("Default");
		u.setPassword("Default");
		u.setTeamId(team());
		return u;
	}
	
	@Bean
	public FixedError fixedError() {
		FixedError fe = new FixedError();
		fe.setAccessId(11111111);
		fe.setDaysInError(1);
		fe.setDescription("Default");
		fe.setErrorCode(1111111);
		fe.setIsDeleted(false);
		fe.setIsReported(false);
		fe.setLastRetryAt(new Date());
		fe.setNetworkElement("Default");
		fe.setRequestId("Default");
		fe.setRetries(1);
		fe.setStartedAt(new Date());
		fe.setStatus("Default");
		fe.setUserId(user());
		fe.setWorkOrder(11111);
		return fe;
	}
	
	@Bean
	public MobileError mobileError() {
		MobileError me = new MobileError();
		me.setImsi(11111);
		me.setMsisdn(11111);
		me.setDaysInError(1);
		me.setDescription("Default");
		me.setErrorCode(1111111);
		me.setIsDeleted(false);
		me.setIsReported(false);
		me.setLastRetryAt(new Date());
		me.setNetworkElement("Default");
		me.setRequestId("Default");
		me.setRetries(1);
		me.setStartedAt(new Date());
		me.setStatus("Default");
		me.setUserId(user());
		me.setWorkOrder(11111);
		return me;
	}

}
