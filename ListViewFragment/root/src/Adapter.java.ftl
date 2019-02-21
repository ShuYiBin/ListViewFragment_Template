package ${packageName};

public class ${className}Adapter extends RecyclerView.Adapter<${className}Adapter.MyViewHolder> {
    private ${listData} datas;

    public ${className}Adapter() {
        datas = new ArrayList<>();
    }

    public void set${className}(${listData} datas) {
        this.datas = datas;
        notifyDataSetChanged();
    }

    @Override
    public MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new MyViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.${className}_item, parent, false));
    }

    @Override
    public void onBindViewHolder(${className}Adapter.MyViewHolder holder, int position) {
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
        @BindView(R.id.title) TextView title;
        @BindView(R.id.status) TextView status;
        @BindView(R.id.datetime) TextView datetime;
        @BindView(R.id.item_layout) RelativeLayout layout;
        MyViewHolder(View itemView) {
            super(itemView);
            ButterKnife.bind(this, itemView);
        }
    }
}
