{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "ServiceTask_cztyr3",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1tqwhyy",
                "sourceRef": "StartEvent_5f13t9",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_ht8b9j",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1vs71pu",
                "sourceRef": "ServiceTask_cztyr3",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_1fh6qh5",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_oz0g32",
                "sourceRef": "UserTask_ht8b9j",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_oz0g32",
            "businessProp": {},
            "name": "Stop",
            "id": "EndEvent_1fh6qh5",
            "type": "bpmn:endEvent"
        },
        "serviceTask": {
            "outgoing": "SequenceFlow_1vs71pu",
            "incoming": "SequenceFlow_1tqwhyy",
            "businessProp": {
                "headers": [{
                    "value": "\"application/x-www-form-urlencoded\"",
                    "key": "Content-Type",
                    "allowOverride": false
                }],
                "method": "GET",
                "data-source-function-data": {
                    "values": [
                        "",
                        "{\"name\":\"insertLanguage\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"LanguageTitle\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Unicode\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertLanguage\",\"baseUrl\":\"/unicodeMySQLConfig\",\"datasourceType\":0}",
                        "{\"name\":\"selectAllLanguage\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllLanguage\",\"baseUrl\":\"/unicodeMySQLConfig\",\"datasourceType\":0}",
                        "{\"name\":\"updateLanguage\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"Unicode\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"LanguageTitle\",\"allowOverride\":true}]},\"functionUrl\":\"/updateLanguage\",\"baseUrl\":\"/unicodeMySQLConfig\",\"datasourceType\":0}",
                        "{\"name\":\"deleteLanguage\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"Unicode\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteLanguage\",\"baseUrl\":\"/unicodeMySQLConfig\",\"datasourceType\":0}",
                        "{\"name\":\"selectLanguage\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"language_id\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectLanguage\",\"baseUrl\":\"/unicodeMySQLConfig\",\"datasourceType\":0}"
                    ],
                    "options": [
                        "Select",
                        "insertLanguage",
                        "selectAllLanguage",
                        "updateLanguage",
                        "deleteLanguage",
                        "selectLanguage"
                    ]
                },
                "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/unicodeMySQLConfig/selectAllLanguage\"",
                "parameters-body": [],
                "data-type": 2,
                "url": "\"http://localhost:3030/rest/webservices/context/application/unicodeMySQLConfig/selectAllLanguage\"",
                "proxy": "false",
                "port": "",
                "response": "fetchmysql",
                "data-source": "{\"name\":\"unicodeMySQLConfig\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"f5a925bd-ed4f-44a6-96aa-38452ea3f4cf\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"2426cf28-7d21-4d2c-a8a0-6aa94a6de3e1\",\"createdOn\":\"2020-11-17T15:55:32.659+05:30\",\"modifiedOn\":\"2020-11-17T15:55:32.659+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                "reqType": "formData",
                "host": "",
                "data-source-function": "{\"name\":\"selectAllLanguage\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllLanguage\",\"baseUrl\":\"/unicodeMySQLConfig\",\"datasourceType\":0}",
                "parameters": []
            },
            "name": "fetchmysql",
            "id": "ServiceTask_cztyr3",
            "type": "bpmn:serviceTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_1tqwhyy",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_5f13t9",
            "type": "bpmn:startEvent"
        },
        "id": "Process_h0shak",
        "userTask": {
            "outgoing": "SequenceFlow_oz0g32",
            "incoming": "SequenceFlow_1vs71pu",
            "businessProp": {
                "formType": "Custom",
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "role1",
                    "actualData": "{\"name\":\"role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/unicodepostgressDBApp/App Roles\",\"properties\":{\"isWorkspaceReady\":false},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":\"940f3645-acb4-4d19-b512-b1eb9576dd0c\",\"projectId\":\"f5a925bd-ed4f-44a6-96aa-38452ea3f4cf\",\"referenceId\":\"c30b548c-f26c-4b1d-ae44-1fc965086319\",\"namespaceId\":null,\"content\":null,\"id\":\"4f4c7713-f4df-4319-acfc-fd5a9cd08f1f\",\"createdOn\":\"2020-11-16T12:25:17.022+05:30\",\"modifiedOn\":\"2020-11-16T12:25:17.062+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}"
                },
                "fromUser": "\"Superadmin\"",
                "form-variables": [{
                    "ref": "fetchmysql",
                    "regex": "",
                    "default-value": "",
                    "readonly": false,
                    "label": "Result",
                    "fieldtype": "Text Area",
                    "type": "string",
                    "mandatory": true,
                    "errormsg": ""
                }],
                "subject": "\"Fetch Records\"",
                "form-url-type": "\"\"",
                "assignee-queue": "",
                "body-replace-strings": [],
                "form-url": "\"\"",
                "assignee-type": "Role",
                "existingForm": "",
                "email-type": "text/html",
                "attribute-references": [],
                "form-url-helper": "\"\"",
                "formName": "Fetch Records",
                "notify-type": "Message Only"
            },
            "name": "fetchmysqlusertask",
            "id": "UserTask_ht8b9j",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_h0shak",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "StartEvent_5f13t9",
                    "Bounds": {
                        "cx": 156.9999968087227,
                        "cy": 191.49999628066962,
                        "x": 138.9999968087227,
                        "width": 36,
                        "y": 161.99999628066962,
                        "height": 59
                    },
                    "id": "StartEvent_5f13t9_ve"
                },
                {
                    "bpmnElement": "ServiceTask_cztyr3",
                    "Bounds": {
                        "cx": 341.00002281858264,
                        "cy": 179.99998778161836,
                        "x": 264.02001946164904,
                        "width": 153.9600067138672,
                        "y": 141.83498686609101,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_cztyr3_ve"
                },
                {
                    "bpmnElement": "UserTask_ht8b9j",
                    "Bounds": {
                        "cx": 555.0000228185827,
                        "cy": 179.99998778161836,
                        "x": 478.02001946164904,
                        "width": 153.9600067138672,
                        "y": 141.83498686609101,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_ht8b9j_ve"
                },
                {
                    "bpmnElement": "EndEvent_1fh6qh5",
                    "Bounds": {
                        "cx": 712.9999840436135,
                        "cy": 191.49999628066962,
                        "x": 694.9999840436135,
                        "width": 36,
                        "y": 161.99999628066962,
                        "height": 59
                    },
                    "id": "EndEvent_1fh6qh5_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "174.9999968087227",
                            "y": "179.99999628066962"
                        },
                        {
                            "x": "264.02001946164904",
                            "y": "179.999986866091"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1tqwhyy",
                    "id": "SequenceFlow_1tqwhyy_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "417.980019461649",
                            "y": "179.999986866091"
                        },
                        {
                            "x": "478.02001946164904",
                            "y": "179.999986866091"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1vs71pu",
                    "id": "SequenceFlow_1vs71pu_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "631.980019461649",
                            "y": "179.999986866091"
                        },
                        {
                            "x": "694.9999840436135",
                            "y": "179.99999628066962"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_oz0g32",
                    "id": "SequenceFlow_oz0g32_ve"
                }
            ]
        },
        "id": "Process_h0shak_ve"
    },
    "collaboration": {}
}