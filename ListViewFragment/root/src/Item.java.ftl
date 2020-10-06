package ${packageName};

public class ListItem {
    String title;
    String status;
    String datetime;

    public ListItem(String title, String status, String datetime){
        this.title = title;
        this.status = status;
        this.datetime = datetime;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDatetime() {
        return datetime;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }
}

