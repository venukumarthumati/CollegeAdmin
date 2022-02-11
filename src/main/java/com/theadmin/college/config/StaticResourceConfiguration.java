package com.theadmin.college.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.util.ResourceUtils;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class StaticResourceConfiguration implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {

        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/").setCachePeriod(0);

        registry.addResourceHandler("/static/templates/**")
                .addResourceLocations(ResourceUtils.CLASSPATH_URL_PREFIX + "/static/templates/")
                .setCachePeriod(0);
    }
}
