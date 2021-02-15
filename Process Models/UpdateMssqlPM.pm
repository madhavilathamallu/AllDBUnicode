{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "ServiceTask_299wir",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1vqc12e",
                "sourceRef": "StartEvent_1buh203",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_gxrftd",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_51lyru",
                "sourceRef": "ServiceTask_299wir",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_1ukeax2",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_3sacqw",
                "sourceRef": "UserTask_gxrftd",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_3sacqw",
            "businessProp": {},
            "name": "stop",
            "id": "EndEvent_1ukeax2",
            "type": "bpmn:endEvent"
        },
        "serviceTask": {
            "outgoing": "SequenceFlow_51lyru",
            "incoming": "SequenceFlow_1vqc12e",
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
                        "{\"name\":\"insertUnicodeData\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"LanguageTitle\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"UnicodeData\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertUnicodeData\",\"baseUrl\":\"/unicodeMSSQLConfig\",\"datasourceType\":0}",
                        "{\"name\":\"selectAllUnicodeData\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllUnicodeData\",\"baseUrl\":\"/unicodeMSSQLConfig\",\"datasourceType\":0}",
                        "{\"name\":\"updateUnicodeData\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"UnicodeData\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"LanguageTitle\",\"allowOverride\":true}]},\"functionUrl\":\"/updateUnicodeData\",\"baseUrl\":\"/unicodeMSSQLConfig\",\"datasourceType\":0}",
                        "{\"name\":\"deleteUnicodeData\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"UnicodeData\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteUnicodeData\",\"baseUrl\":\"/unicodeMSSQLConfig\",\"datasourceType\":0}",
                        "{\"name\":\"selectUnicodeData\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectUnicodeData\",\"baseUrl\":\"/unicodeMSSQLConfig\",\"datasourceType\":0}"
                    ],
                    "options": [
                        "Select",
                        "insertUnicodeData",
                        "selectAllUnicodeData",
                        "updateUnicodeData",
                        "deleteUnicodeData",
                        "selectUnicodeData"
                    ]
                },
                "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/unicodeMSSQLConfig/updateUnicodeData\"",
                "parameters-body": [{
                    "paramLocation": 1,
                    "value": "pupdatel2",
                    "key": "UnicodeData",
                    "allowOverride": true
                }],
                "data-type": 2,
                "url": "\"http://localhost:3030/rest/webservices/context/application/unicodeMSSQLConfig/updateUnicodeData\"",
                "proxy": "false",
                "bodyFormData": [{
                    "paramLocation": 1,
                    "value": "pupdatel2",
                    "key": "UnicodeData",
                    "allowOverride": true
                }],
                "port": "",
                "response": "updatemssql",
                "data-source": "{\"name\":\"unicodeMSSQLConfig\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"883f6756-ec86-42d2-afba-8f5e5df8d07b\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"5e91f48c-d8c4-4e58-aa5e-73ee1464a401\",\"createdOn\":\"2020-12-01T10:06:19.044+05:30\",\"modifiedOn\":\"2020-12-01T10:06:19.044+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                "reqType": "formData",
                "host": "",
                "data-source-function": "{\"name\":\"updateUnicodeData\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"UnicodeData\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"LanguageTitle\",\"allowOverride\":true}]},\"functionUrl\":\"/updateUnicodeData\",\"baseUrl\":\"/unicodeMSSQLConfig\",\"datasourceType\":0}",
                "parameters": [{
                    "paramLocation": 1,
                    "type": "Query",
                    "value": "pupdatel1",
                    "key": "LanguageTitle",
                    "allowOverride": true
                }]
            },
            "name": "updatemssql",
            "id": "ServiceTask_299wir",
            "type": "bpmn:serviceTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_1vqc12e",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_1buh203",
            "type": "bpmn:startEvent"
        },
        "id": "Process_1v6oyf7",
        "userTask": {
            "outgoing": "SequenceFlow_3sacqw",
            "incoming": "SequenceFlow_51lyru",
            "businessProp": {
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "role1",
                    "actualData": "{\"name\":\"role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/unicodepostgressDBApp/App Roles\",\"properties\":{\"isWorkspaceReady\":false},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":\"940f3645-acb4-4d19-b512-b1eb9576dd0c\",\"projectId\":\"f5a925bd-ed4f-44a6-96aa-38452ea3f4cf\",\"referenceId\":\"c30b548c-f26c-4b1d-ae44-1fc965086319\",\"namespaceId\":null,\"content\":null,\"id\":\"4f4c7713-f4df-4319-acfc-fd5a9cd08f1f\",\"createdOn\":\"2020-11-16T12:25:17.022+05:30\",\"modifiedOn\":\"2020-11-16T12:25:17.062+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"contentAsBytes\":null,\"buildProgress\":false,\"contentAsString\":\"\"}"
                },
                "formType": "Custom",
                "fromUser": "\"superadmin\"",
                "form-variables": [{
                    "ref": "updatemssql",
                    "regex": "",
                    "default-value": "",
                    "readonly": false,
                    "label": "Result",
                    "fieldtype": "Text Area",
                    "type": "string",
                    "mandatory": true,
                    "errormsg": ""
                }],
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
            "name": "updatemssqlusertask",
            "id": "UserTask_gxrftd",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_1v6oyf7",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "EndEvent_1ukeax2",
                    "Bounds": {
                        "cx": 631.0000182688236,
                        "cy": 160.50000390410423,
                        "x": 613.0000182688236,
                        "width": 36,
                        "y": 131.00000390410423,
                        "height": 59
                    },
                    "id": "EndEvent_1ukeax2_ve"
                },
                {
                    "bpmnElement": "ServiceTask_299wir",
                    "Bounds": {
                        "cx": 227.0000000900029,
                        "cy": 149.00001358494137,
                        "x": 150.01999673306932,
                        "width": 153.9600067138672,
                        "y": 110.83501266941403,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_299wir_ve"
                },
                {
                    "bpmnElement": "StartEvent_1buh203",
                    "Bounds": {
                        "cx": 93.00000223517418,
                        "cy": 160.50000390410423,
                        "x": 75.00000223517418,
                        "width": 36,
                        "y": 131.00000390410423,
                        "height": 59
                    },
                    "id": "StartEvent_1buh203_ve"
                },
                {
                    "bpmnElement": "UserTask_gxrftd",
                    "Bounds": {
                        "cx": 444.0000000900029,
                        "cy": 149.00001358494137,
                        "x": 367.0199967330693,
                        "width": 153.9600067138672,
                        "y": 110.83501266941403,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_gxrftd_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "111.00000223517418",
                            "y": "149.00000390410423"
                        },
                        {
                            "x": "150.01999673306932",
                            "y": "149.00001266941402"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1vqc12e",
                    "id": "SequenceFlow_1vqc12e_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "303.97999673306936",
                            "y": "149.00001266941402"
                        },
                        {
                            "x": "367.0199967330693",
                            "y": "149.00001266941402"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_51lyru",
                    "id": "SequenceFlow_51lyru_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "520.9799967330694",
                            "y": "149.00001266941402"
                        },
                        {
                            "x": "613.0000182688236",
                            "y": "149.00000390410423"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_3sacqw",
                    "id": "SequenceFlow_3sacqw_ve"
                }
            ]
        },
        "id": "Process_1v6oyf7_ve"
    },
    "collaboration": {}
}