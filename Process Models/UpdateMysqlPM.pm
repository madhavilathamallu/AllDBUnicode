{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "ServiceTask_pztlzp",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_uotsb7",
                "sourceRef": "StartEvent_1jtimpp",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_uatpp8",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_pc8mul",
                "sourceRef": "ServiceTask_pztlzp",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_cbkylb",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1tfm94b",
                "sourceRef": "UserTask_uatpp8",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_1tfm94b",
            "businessProp": {},
            "name": "Stop",
            "id": "EndEvent_cbkylb",
            "type": "bpmn:endEvent"
        },
        "serviceTask": {
            "outgoing": "SequenceFlow_pc8mul",
            "incoming": "SequenceFlow_uotsb7",
            "businessProp": {
                "headers": [{
                    "value": "\"application/x-www-form-urlencoded\"",
                    "key": "Content-Type",
                    "allowOverride": false
                }],
                "method": "PUT",
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
                "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/unicodeMySQLConfig/updateLanguage\"",
                "parameters-body": [{
                    "paramLocation": 1,
                    "value": "mysqlupdate2",
                    "key": "Unicode",
                    "allowOverride": true
                }],
                "data-type": 2,
                "url": "\"http://localhost:3030/rest/webservices/context/application/unicodeMySQLConfig/updateLanguage\"",
                "proxy": "false",
                "bodyFormData": [{
                    "paramLocation": 1,
                    "value": "mysqlupdate2",
                    "key": "Unicode",
                    "allowOverride": true
                }],
                "port": "",
                "response": "updatemysqlPM",
                "data-source": "{\"name\":\"unicodeMySQLConfig\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"f5a925bd-ed4f-44a6-96aa-38452ea3f4cf\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"2426cf28-7d21-4d2c-a8a0-6aa94a6de3e1\",\"createdOn\":\"2020-11-17T15:55:32.659+05:30\",\"modifiedOn\":\"2020-11-17T15:55:32.659+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                "reqType": "formData",
                "host": "",
                "data-source-function": "{\"name\":\"updateLanguage\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"Unicode\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"LanguageTitle\",\"allowOverride\":true}]},\"functionUrl\":\"/updateLanguage\",\"baseUrl\":\"/unicodeMySQLConfig\",\"datasourceType\":0}",
                "parameters": [{
                    "paramLocation": 1,
                    "type": "Query",
                    "value": "mysqlupdate1",
                    "key": "LanguageTitle",
                    "allowOverride": true
                }]
            },
            "name": "updatemysql",
            "id": "ServiceTask_pztlzp",
            "type": "bpmn:serviceTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_uotsb7",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_1jtimpp",
            "type": "bpmn:startEvent"
        },
        "id": "Process_x0gmxk",
        "userTask": {
            "outgoing": "SequenceFlow_1tfm94b",
            "incoming": "SequenceFlow_pc8mul",
            "businessProp": {
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "role1",
                    "actualData": "{\"name\":\"role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/unicodepostgressDBApp/App Roles\",\"properties\":{\"isWorkspaceReady\":false},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":\"940f3645-acb4-4d19-b512-b1eb9576dd0c\",\"projectId\":\"f5a925bd-ed4f-44a6-96aa-38452ea3f4cf\",\"referenceId\":\"c30b548c-f26c-4b1d-ae44-1fc965086319\",\"namespaceId\":null,\"content\":null,\"id\":\"4f4c7713-f4df-4319-acfc-fd5a9cd08f1f\",\"createdOn\":\"2020-11-16T12:25:17.022+05:30\",\"modifiedOn\":\"2020-11-16T12:25:17.062+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsBytes\":null,\"contentAsString\":\"\"}"
                },
                "formType": "Custom",
                "fromUser": "\"superadmin\"",
                "form-variables": [{
                    "ref": "updatemysqlPM",
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
                "formName": "Update Record",
                "notify-type": "Message Only"
            },
            "name": "updatemysqlUsertask",
            "id": "UserTask_uatpp8",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_x0gmxk",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "StartEvent_1jtimpp",
                    "Bounds": {
                        "cx": 163,
                        "cy": 276.5,
                        "x": 145,
                        "width": 36,
                        "y": 247,
                        "height": 59
                    },
                    "id": "StartEvent_1jtimpp_ve"
                },
                {
                    "bpmnElement": "ServiceTask_pztlzp",
                    "Bounds": {
                        "cx": 381,
                        "cy": 264.99999237060547,
                        "x": 304.0199966430664,
                        "width": 153.9600067138672,
                        "y": 226.83499145507812,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_pztlzp_ve"
                },
                {
                    "bpmnElement": "UserTask_uatpp8",
                    "Bounds": {
                        "cx": 655,
                        "cy": 264.99999237060547,
                        "x": 578.0199966430664,
                        "width": 153.9600067138672,
                        "y": 226.83499145507812,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_uatpp8_ve"
                },
                {
                    "bpmnElement": "EndEvent_cbkylb",
                    "Bounds": {
                        "cx": 940,
                        "cy": 276.5,
                        "x": 922,
                        "width": 36,
                        "y": 247,
                        "height": 59
                    },
                    "id": "EndEvent_cbkylb_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "181",
                            "y": "265"
                        },
                        {
                            "x": "304.0199966430664",
                            "y": "264.99999145507815"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_uotsb7",
                    "id": "SequenceFlow_uotsb7_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "457.97999664306644",
                            "y": "264.99999145507815"
                        },
                        {
                            "x": "578.0199966430664",
                            "y": "264.99999145507815"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_pc8mul",
                    "id": "SequenceFlow_pc8mul_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "731.9799966430664",
                            "y": "264.99999145507815"
                        },
                        {
                            "x": "922",
                            "y": "265"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1tfm94b",
                    "id": "SequenceFlow_1tfm94b_ve"
                }
            ]
        },
        "id": "Process_x0gmxk_ve"
    },
    "collaboration": {}
}