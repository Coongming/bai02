# Sử dụng image Tomcat 11.0.10 chính thức từ Docker Hub
FROM tomcat:11.0.10-jdk21-temurin

# Xóa các ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file hoặc thư mục ứng dụng vào webapps
COPY email-list.war /usr/local/tomcat/webapps/ROOT.war
# Nếu dùng thư mục thay vì WAR, dùng: COPY . /usr/local/tomcat/webapps/ROOT/

# Expose port 8080
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
