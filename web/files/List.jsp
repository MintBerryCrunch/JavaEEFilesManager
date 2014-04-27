<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>Listing Files Items</title>
            <link rel="stylesheet" type="text/css" href="/JsfJpa/faces/jsfcrud.css" />
        </head>
        <body>
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h1>Listing Files Items</h1>
            <h:form styleClass="jsfcrud_list_form">
                <h:outputText escape="false" value="(No Files Items Found)<br />" rendered="#{files.pagingInfo.itemCount == 0}" />
                <h:panelGroup rendered="#{files.pagingInfo.itemCount > 0}">
                    <h:outputText value="Item #{files.pagingInfo.firstItem + 1}..#{files.pagingInfo.lastItem} of #{files.pagingInfo.itemCount}"/>&nbsp;
                    <h:commandLink action="#{files.prev}" value="Previous #{files.pagingInfo.batchSize}" rendered="#{files.pagingInfo.firstItem >= files.pagingInfo.batchSize}"/>&nbsp;
                    <h:commandLink action="#{files.next}" value="Next #{files.pagingInfo.batchSize}" rendered="#{files.pagingInfo.lastItem + files.pagingInfo.batchSize <= files.pagingInfo.itemCount}"/>&nbsp;
                    <h:commandLink action="#{files.next}" value="Remaining #{files.pagingInfo.itemCount - files.pagingInfo.lastItem}"
                                   rendered="#{files.pagingInfo.lastItem < files.pagingInfo.itemCount && files.pagingInfo.lastItem + files.pagingInfo.batchSize > files.pagingInfo.itemCount}"/>
                    <h:dataTable value="#{files.filesItems}" var="item" border="0" cellpadding="2" cellspacing="0" rowClasses="jsfcrud_odd_row,jsfcrud_even_row" rules="all" style="border:solid 1px">
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="Id"/>
                            </f:facet>
                            <h:outputText value="#{item.id}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="UserId"/>
                            </f:facet>
                            <h:outputText value="#{item.userId}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="FileName"/>
                            </f:facet>
                            <h:outputText value="#{item.fileName}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="AddedDate"/>
                            </f:facet>
                            <h:outputText value="#{item.addedDate}">
                                <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                            </h:outputText>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="ModifiedDate"/>
                            </f:facet>
                            <h:outputText value="#{item.modifiedDate}">
                                <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                            </h:outputText>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="File"/>
                            </f:facet>
                            <h:outputText value="#{item.file}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="Description"/>
                            </f:facet>
                            <h:outputText value="#{item.description}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText escape="false" value="&nbsp;"/>
                            </f:facet>
                            <h:commandLink value="Show" action="#{files.detailSetup}">
                                <f:param name="jsfcrud.currentFiles" value="#{jsfcrud_class['enterprise.jsf_jpa_war.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][files.converter].jsfcrud_invoke}"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Edit" action="#{files.editSetup}">
                                <f:param name="jsfcrud.currentFiles" value="#{jsfcrud_class['enterprise.jsf_jpa_war.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][files.converter].jsfcrud_invoke}"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Destroy" action="#{files.remove}">
                                <f:param name="jsfcrud.currentFiles" value="#{jsfcrud_class['enterprise.jsf_jpa_war.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][files.converter].jsfcrud_invoke}"/>
                            </h:commandLink>
                        </h:column>

                    </h:dataTable>
                </h:panelGroup>
                <br />
                <h:commandLink action="#{files.createSetup}" value="New Files"/>
                <br />


            </h:form>
        </body>
    </html>
</f:view>
