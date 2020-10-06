<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical">

        <LinearLayout
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:background="#ffffff"
            android:orientation="vertical">

            <EditText
                android:id="@+id/search"
                android:layout_width="match_parent"
                android:layout_height="44dp"
                android:background="#ffffff"
                android:drawablePadding="15dp"
                android:gravity="center_vertical"
                android:hint="Search"
                android:paddingLeft="15dp"
                android:textColor="#8c8c8c"
                android:textSize="18sp" />

            <View
                android:layout_width="match_parent"
                android:layout_height="0.5dp"
                android:layout_alignParentBottom="true"
                android:background="#4c979797" />

            <androidx.swiperefreshlayout.widget.SwipeRefreshLayout
                android:id="@+id/refresh"
                android:layout_width="match_parent"
                android:layout_height="match_parent">

                <androidx.recyclerview.widget.RecyclerView
                    android:id="@+id/list"
                    android:layout_width="match_parent"
                    android:layout_height="match_parent">

                </androidx.recyclerview.widget.RecyclerView>
            </androidx.swiperefreshlayout.widget.SwipeRefreshLayout>
        </LinearLayout>

        <RelativeLayout
            android:layout_width="match_parent"
            android:layout_height="48dp"
            android:background="@color/colorPrimaryDark">

            <TextView
                android:id="@+id/title"
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:layout_alignParentBottom="true"
                android:layout_marginBottom="12dp"
                android:gravity="center"
                android:text="Title"
                android:textColor="#ffffff"
                android:textSize="18sp" />
        </RelativeLayout>

    </LinearLayout>
</RelativeLayout>
