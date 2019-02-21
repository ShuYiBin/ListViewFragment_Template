<?xml version="1.0"?>
<recipe>

	<instantiate from="res/layout/fragment.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${className}_fragment.xml" />
    <instantiate from="res/layout/item.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${className}_item.xml" />               
	<instantiate from="src/Fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Fragment.java" />
    <instantiate from="src/Adapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Adapter.java" />
   	<instantiate from="src/ViewModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}ViewModel.java" />

	<open file="${srcOut}/${className}Fragment.java"/>
</recipe>