package ${packageName};

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProviders;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

import java.util.ArrayList;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnTextChanged;

public class ListFragment extends Fragment {
    @BindView(R.id.title)
    TextView mTitle;
    @BindView(R.id.refresh)
    SwipeRefreshLayout mRefreshLayout;
    @BindView(R.id.list)
    RecyclerView mList;

    ListViewModel mViewModel;
    ListAdapter mAdapter;

    public ListFragment() {

    }

    public static ListFragment newInstance() {
        return new ListFragment();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.list_fragment, container, false);
        ButterKnife.bind(this, rootView);
        mTitle.setText("List");
        mViewModel = ViewModelProviders.of(this).get(ListViewModel.class);
        mRefreshLayout.setOnRefreshListener(() -> mViewModel.getList(getContext()));

        mAdapter = new ListAdapter();
        mList.setLayoutManager(new LinearLayoutManager(getContext()));
        mList.setAdapter(mAdapter);
        mViewModel.getList(getContext());
        mViewModel.getListData().observe(getViewLifecycleOwner(), this::observeList);

        return rootView;
    }

    private void observeList(ArrayList<ListItem> response) {
        mAdapter.setList(response);
    }

    @OnTextChanged(value = R.id.search, callback = OnTextChanged.Callback.TEXT_CHANGED)
    public void onSearchTextChanged(CharSequence sequence) {

    }
}




