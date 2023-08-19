<?xml version="1.0" encoding="utf-8" ?>
<stylesheet version="2.0"
            xmlns="http://www.w3.org/1999/XSL/Transform"
            xmlns:_="http://www.tei-c.org/ns/1.0"
            xmlns:cb="http://www.cbeta.org/ns/1.0"
>
    <output method="xml" encoding="UTF-8" indent="no" omit-xml-declaration="yes"/>

    <variable name="workId" select="/_:TEI/@xml:id"/>

    <!--    以下內容濾除 -->
    <template match="/_:TEI/_:teiHeader|/_:TEI/_:text/_:back"/>
    <template match="_:p|_:lg|_:jhead|_:head|cb:mulu|cb:juan|_:byline|cb:docNumber|_:trailer|_:list|_:table|_:note|_:app|cb:tt[@type='app']"/>

    <!--    僅取 body 部分-->
    <template match="_:body">
        <apply-templates/>
    </template>

    <!--    text() 內容是默認複製的，無需處理-->

    <!--    lb 標籤增加 link 屬性，便於檢視-->
    <template match="_:lb">
        <copy copy-namespaces="no">
            <attribute name="link">
                <copy-of
                        select="'https://cbetaonline.dila.edu.tw/zh/',concat(substring(concat($workId,'_'),1, 9),'p',@n)"/>
            </attribute>
            <!-- <copy-of select="@*"/> -->
        </copy>
    </template>
</stylesheet>