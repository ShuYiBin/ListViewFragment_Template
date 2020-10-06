package ${packageName};

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

import butterknife.BindView;
import butterknife.ButterKnife;

public class ListAdapter extends RecyclerView.Adapter<ListAdapter.MyViewHolder> {
    private ArrayList<ListItem> datas;

    public ListAdapter() {
        datas = new ArrayList<>();
    }

    public void setList(ArrayList<ListItem> datas) {
        this.datas = datas;
        notifyDataSetChanged();
    }

    @Override
    public MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new MyViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.list_item, parent, false));
    }

    @Override
    public void onBindViewHolder(ListAdapter.MyViewHolder holder, int position) {
        //ToDo set view value
        holder.title.setText(datas.get(position).getTitle());
        holder.status.setText(datas.get(position).getStatus());
        holder.datetime.setText(datas.get(position).getDatetime());
    }

    @Override
    public int getItemCount() {
        return datas.size();
    }

    class MyViewHolder extends RecyclerView.ViewHolder {
        @BindView(R.id.title)
        TextView title;
        @BindView(R.id.status)
        TextView status;
        @BindView(R.id.datetime)
        TextView datetime;
        @BindView(R.id.item_layout)
        RelativeLayout layout;

        MyViewHolder(View itemView) {
            super(itemView);
            ButterKnife.bind(this, itemView);
        }
    }
}
