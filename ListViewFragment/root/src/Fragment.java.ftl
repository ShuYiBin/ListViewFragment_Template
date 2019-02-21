package ${packageName};

import android.support.v4.app.Fragment;

public class ${className}Fragment extends Fragment {
    @BindView(R.id.title)
    TextView mTitle;
    @BindView(R.id.refresh)
    SwipeRefreshLayout mRefreshLayout;
    @BindView(R.id.list)
    RecyclerView mList;

    ${className}ViewModel mViewModel;
    ${className}Adapter mAdapter;

    public ${className}Fragment() {

    }

    public static ${className}Fragment newInstance() {
        return new ${className}Fragment();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.${className}_fragment, container, false);
        ButterKnife.bind(this, rootView);
        mTitle.setText("${className}");
        mViewModel = ViewModelProviders.of(this).get(${className}ViewModel.class);
        mRefreshLayout.setOnRefreshListener(() -> mViewModel.get${className}());

        mAdapter = new ${className}Adapter();
        mList.setLayoutManager(new LinearLayoutManager(getContext()));
        mList.setAdapter(mAdapter);
        mViewModel.get${className}();
        mViewModel.get${className}Data().observe(this, this::observe${className});

        return rootView;
    }

    private void observe${className}(${listData} response) {
        mAdapter.set${className}(response);
    }

    @OnTextChanged(value = R.id.search, callback = OnTextChanged.Callback.TEXT_CHANGED)
    public void onSearchTextChanged(CharSequence sequence) {

    }
}

