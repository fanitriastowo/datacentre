#Aplikasi Datacentre

#### Teknologi yang digunakan
* Spring Web MVC 4.0.2.RELEASE
* Spring Data JPA 1.5.1.RELEASE
* Spring Security 3.2.3
* Hibernate 4.3.4
* Maven 3.2.1
* Apache Tiles 3.0.4

#### Cara Menjalankan
1. Install Java 1.7 keatas dan Maven Build Tool
- Masuk kefolder root aplikasi. Folder yang ada **Pom.xml** menggunakan **Command Prompt** atau **Terminal**
2. Jalankan perintah <code>mvn -P dev jetty:run -Dspring.profiles.active="dev"</code> untuk fase development
3. <code>mvn jetty:run</code> untuk fase production
4. Web Server dapat diganti tomcat. jadi <code>jetty:run</code> dapat diganti menjadi <code>tomcat7:run</code>
5. Pastikan terdapat koneksi internet