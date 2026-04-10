FROM tomcat:9.0-jdk11-openjdk-slim

# Xóa app mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file .war vào (Dương nhớ kiểm tra tên file .war trong thư mục có đúng tên này không)
COPY MyToyStore.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]