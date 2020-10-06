<?xml version="1.0"?>
<recipe>

<instantiate from="res/layout/fragment.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/layout/list_fragment.xml" />
<instantiate from="res/layout/item.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/layout/list_item.xml" />               
<instantiate from="src/Fragment.java.ftl"
             to="${escapeXmlAttribute(srcOut)}/ListFragment.java" />
<instantiate from="src/Adapter.java.ftl"
             to="${escapeXmlAttribute(srcOut)}/ListAdapter.java" />
<instantiate from="src/ViewModel.java.ftl"
             to="${escapeXmlAttribute(srcOut)}/ListViewModel.java" />
<instantiate from="src/Item.java.ftl"
             to="${escapeXmlAttribute(srcOut)}/ListItem.java" />

<open file="${srcOut}/ListFragment.java"/>
</recipe>