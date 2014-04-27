<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>Files Detail</title>
            <link rel="stylesheet" type="text/css" href="/JsfJpa/faces/jsfcrud.css" />
        </head>
        <body>
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h1>Files Detail</h1>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputText value="Id:"/>
                    <h:outputText value="#{files.files.id}" title="Id" />
                    <h:outputText value="UserId:"/>
                    <h:outputText value="#{files.files.userId}" title="UserId" />
                    <h:outputText value="FileName:"/>
                    <h:outputText value="#{files.files.fileName}" title="FileName" />
                    <h:outputText value="AddedDate:"/>
                    <h:outputText value="#{files.files.addedDate}" title="AddedDate" >
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:outputText>
                    <h:outputText value="ModifiedDate:"/>
                    <h:outputText value="#{files.files.modifiedDate}" title="ModifiedDate" >
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:outputText>
                    <h:outputText value="File:"/>
                    <h:outputText value="#{files.files.file}" title="File" />
                    <h:outputText value="Description:"/>
                    <h:outputText value="#{files.files.description}" title="Description" />


                </h:panelGrid>
                <br />
                <h:commandLink action="#{files.remove}" value="Destroy">
                    <f:param name="jsfcrud.currentFiles" value="#{jsfcrud_class['enterprise.jsf_jpa_war.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][files.files][files.converter].jsfcrud_invoke}" />
                </h:commandLink>
                <br />
                <br />
                <h:commandLink action="#{files.editSetup}" value="Edit">
                    <f:param name="jsfcrud.currentFiles" value="#{jsfcrud_class['enterprise.jsf_jpa_war.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][files.files][files.converter].jsfcrud_invoke}" />
                </h:commandLink>
                <br />
                <h:commandLink action="#{files.createSetup}" value="New Files" />
                <br />
                <h:commandLink action="#{files.listSetup}" value="Show All Files Items"/>
                <br />

            </h:form>
        </body>
    </html>
</f:view>
