<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>Editing Files</title>
            <link rel="stylesheet" type="text/css" href="/JsfJpa/faces/jsfcrud.css" />
        </head>
        <body>
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h1>Editing Files</h1>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputText value="Id:"/>
                    <h:outputText value="#{files.files.id}" title="Id" />
                    <h:outputText value="UserId:"/>
                    <h:inputText id="userId" value="#{files.files.userId}" title="UserId" required="true" requiredMessage="The userId field is required." />
                    <h:outputText value="FileName:"/>
                    <h:inputText id="fileName" value="#{files.files.fileName}" title="FileName" required="true" requiredMessage="The fileName field is required." />
                    <h:outputText value="AddedDate (MM/dd/yyyy HH:mm:ss):"/>
                    <h:inputText id="addedDate" value="#{files.files.addedDate}" title="AddedDate" >
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:inputText>
                    <h:outputText value="ModifiedDate (MM/dd/yyyy HH:mm:ss):"/>
                    <h:inputText id="modifiedDate" value="#{files.files.modifiedDate}" title="ModifiedDate" >
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:inputText>
                    <h:outputText value="File:"/>
                    <h:inputTextarea rows="4" cols="30" id="file" value="#{files.files.file}" title="File" />
                    <h:outputText value="Description:"/>
                    <h:inputText id="description" value="#{files.files.description}" title="Description" />

                </h:panelGrid>
                <br />
                <h:commandLink action="#{files.edit}" value="Save">
                    <f:param name="jsfcrud.currentFiles" value="#{jsfcrud_class['enterprise.jsf_jpa_war.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][files.files][files.converter].jsfcrud_invoke}"/>
                </h:commandLink>
                <br />
                <br />
                <h:commandLink action="#{files.detailSetup}" value="Show" immediate="true">
                    <f:param name="jsfcrud.currentFiles" value="#{jsfcrud_class['enterprise.jsf_jpa_war.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][files.files][files.converter].jsfcrud_invoke}"/>
                </h:commandLink>
                <br />
                <h:commandLink action="#{files.listSetup}" value="Show All Files Items" immediate="true"/>
                <br />

            </h:form>
        </body>
    </html>
</f:view>
