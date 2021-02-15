{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "ServiceTask_12l9lf1",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_15ei4a9",
                "sourceRef": "StartEvent_1r15112",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_1adl28i",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1n9lngn",
                "sourceRef": "ServiceTask_12l9lf1",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_1sct7r7",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_isyjo5",
                "sourceRef": "UserTask_1adl28i",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_isyjo5",
            "businessProp": {},
            "name": "Stop",
            "id": "EndEvent_1sct7r7",
            "type": "bpmn:endEvent"
        },
        "serviceTask": {
            "outgoing": "SequenceFlow_1n9lngn",
            "incoming": "SequenceFlow_15ei4a9",
            "businessProp": {
                "headers": [{
                    "value": "\"application/x-www-form-urlencoded\"",
                    "key": "Content-Type",
                    "allowOverride": false
                }],
                "method": "DELETE",
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
                "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/unicodeMySQLConfig/deleteLanguage\"",
                "parameters-body": [],
                "data-type": 2,
                "url": "\"http://localhost:3030/rest/webservices/context/application/unicodeMySQLConfig/deleteLanguage\"",
                "proxy": "false",
                "port": "",
                "response": "pmysqldeletel1resp",
                "data-source": "{\"name\":\"unicodeMySQLConfig\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"f5a925bd-ed4f-44a6-96aa-38452ea3f4cf\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"2426cf28-7d21-4d2c-a8a0-6aa94a6de3e1\",\"createdOn\":\"2020-11-17T15:55:32.659+05:30\",\"modifiedOn\":\"2020-11-17T15:55:32.659+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                "reqType": "formData",
                "host": "",
                "data-source-function": "{\"name\":\"deleteLanguage\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"Unicode\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteLanguage\",\"baseUrl\":\"/unicodeMySQLConfig\",\"datasourceType\":0}",
                "parameters": [{
                    "paramLocation": 2,
                    "type": "Query",
                    "value": "pmysqldeletel1",
                    "key": "Unicode",
                    "allowOverride": true
                }]
            },
            "name": "deletemysqlpm",
            "id": "ServiceTask_12l9lf1",
            "type": "bpmn:serviceTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_15ei4a9",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_1r15112",
            "type": "bpmn:startEvent"
        },
        "id": "Process_19qhjxf",
        "userTask": {
            "outgoing": "SequenceFlow_isyjo5",
            "incoming": "SequenceFlow_1n9lngn",
            "businessProp": {
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "role1",
                    "actualData": "{\"name\":\"role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/unicodepostgressDBApp/App Roles\",\"properties\":{\"isWorkspaceReady\":false},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":\"940f3645-acb4-4d19-b512-b1eb9576dd0c\",\"projectId\":\"f5a925bd-ed4f-44a6-96aa-38452ea3f4cf\",\"referenceId\":\"c30b548c-f26c-4b1d-ae44-1fc965086319\",\"namespaceId\":null,\"content\":null,\"id\":\"4f4c7713-f4df-4319-acfc-fd5a9cd08f1f\",\"createdOn\":\"2020-11-16T12:25:17.022+05:30\",\"modifiedOn\":\"2020-11-16T12:25:17.062+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsBytes\":null,\"contentAsString\":\"\"}"
                },
                "formType": "Custom",
                "fromUser": "\"Superadmin\"",
                "form-variables": [{
                    "ref": "pmysqldeletel1resp",
                    "regex": "",
                    "default-value": "",
                    "readonly": false,
                    "label": "Result",
                    "fieldtype": "Text Area",
                    "type": "string",
                    "mandatory": true,
                    "errormsg": ""
                }],
                "assignee-queue": "",
                "form-url-type": "\"\"",
                "body-replace-strings": [],
                "form-url": "\"\"",
                "assignee-type": "Role",
                "existingForm": "",
                "email-type": "text/html",
                "attribute-references": [],
                "form-url-helper": "\"\"",
                "formName": "Delete Record",
                "notify-type": "Message Only"
            },
            "name": "Delete User Task",
            "id": "UserTask_1adl28i",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_19qhjxf",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "StartEvent_1r15112",
                    "Bounds": {
                        "cx": 209,
                        "cy": 263.5,
                        "x": 191,
                        "width": 36,
                        "y": 234,
                        "height": 59
                    },
                    "id": "StartEvent_1r15112_ve"
                },
                {
                    "bpmnElement": "ServiceTask_12l9lf1",
                    "Bounds": {
                        "cx": 412,
                        "cy": 251.99999237060547,
                        "x": 335.0199966430664,
                        "width": 153.9600067138672,
                        "y": 213.83499145507812,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_12l9lf1_ve"
                },
                {
                    "bpmnElement": "EndEvent_1sct7r7",
                    "Bounds": {
                        "cx": 899,
                        "cy": 252.6796875,
                        "x": 881,
                        "width": 36,
                        "y": 234,
                        "height": 37.359375
                    },
                    "id": "EndEvent_1sct7r7_ve"
                },
                {
                    "bpmnElement": "UserTask_1adl28i",
                    "Bounds": {
                        "cx": 652,
                        "cy": 251.99999237060547,
                        "x": 575.0199966430664,
                        "width": 153.9600067138672,
                        "y": 213.83499145507812,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_1adl28i_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "227",
                            "y": "252"
                        },
                        {
                            "x": "335.0199966430664",
                            "y": "251.99999908447265"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_15ei4a9",
                    "id": "SequenceFlow_15ei4a9_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "488.97999664306644",
                            "y": "251.99999145507812"
                        },
                        {
                            "x": "575.0199966430664",
                            "y": "251.99999908447265"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1n9lngn",
                    "id": "SequenceFlow_1n9lngn_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "728.98001953125",
                            "y": "251.99999145507812"
                        },
                        {
                            "x": "881",
                            "y": "252"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_isyjo5",
                    "id": "SequenceFlow_isyjo5_ve"
                }
            ]
        },
        "id": "Process_19qhjxf_ve"
    },
    "collaboration": {}
}