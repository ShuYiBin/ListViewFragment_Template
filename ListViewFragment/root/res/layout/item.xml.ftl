<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:id="@+id/item_layout"
    android:layout_width="match_parent"
    android:layout_height="76dp"
    android:background="#ffffff">

    <TextView
        android:id="@+id/status"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_alignParentRight="true"
        android:layout_marginTop="21dp"
        android:layout_marginRight="18dp"
        android:gravity="center"
        android:text="Status"
        android:textColor="#fd5328"
        android:textSize="14sp" />

    <TextView
        android:id="@+id/note"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_below="@id/status"
        android:layout_alignParentRight="true"
        android:layout_marginTop="1dp"
        android:layout_marginRight="18dp"
        android:gravity="center"
        android:text="Note"
        android:textColor="#545454"
        android:textSize="14sp" />

    <TextView
        android:id="@+id/title"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_marginLeft="14dp"
        android:layout_marginTop="17dp"
        android:layout_toLeftOf="@id/status"
        android:ellipsize="end"
        android:gravity="center_vertical"
        android:singleLine="true"
        android:text="Title"
        android:textColor="#4a4a4a"
        android:textSize="18sp" />

    <TextView
        android:id="@+id/datetime"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_below="@id/title"
        android:layout_marginLeft="14dp"
        android:layout_marginTop="5dp"
        android:layout_toLeftOf="@id/status"
        android:gravity="center_vertical"
        android:text="DateTime"
        android:textColor="#545454"
        android:textSize="14sp" />

    <View
        android:layout_width="match_parent"
        android:layout_height="0.5dp"
        android:layout_alignParentBottom="true"
        android:background="#4c979797" />
</RelativeLayout>