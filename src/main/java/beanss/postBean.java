package beanss;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class postBean {
    private String content ="";
    private String title="";
    private String dateTime="";
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm");


    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDateTime() {
        return LocalDateTime.now().format(formatter);
    }

    public void setDateTime(String dateTime) {
        this.dateTime = LocalDateTime.now().format(formatter);
    }
}
