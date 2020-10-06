package ${packageName};

import android.content.Context;
import android.widget.Toast;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

import java.util.ArrayList;

public class ListViewModel extends ViewModel {
    private MutableLiveData<ArrayList<ListItem>> listData;

    public ListViewModel() {
        listData = new MutableLiveData<>();
    }

    public MutableLiveData<ArrayList<ListItem>> getListData() {
        return listData;
    }

    public void getList(Context context) {
        //ToDo get list value
        Toast.makeText(context, "Call GetList API", Toast.LENGTH_SHORT).show();

        ArrayList<ListItem> data = new ArrayList<>();
        data.add(new ListItem("Keith Mills", "On Duty", "2018.07.12 09:12"));
        data.add(new ListItem("Joe Ramos", "Off Duty", "2019.11.03 21:22"));
        data.add(new ListItem("Adrian Estrada", "Off Duty", "2019.12.12 12:30"));

        listData.setValue(data);
    }
}
