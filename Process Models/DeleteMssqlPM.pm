{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "ServiceTask_1s88tzr",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1mn62us",
                "sourceRef": "StartEvent_192aewa",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_1d8gkdh",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1ioqlvx",
                "sourceRef": "ServiceTask_1s88tzr",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_7h0l8z",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1jupa8w",
                "sourceRef": "UserTask_1d8gkdh",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_1jupa8w",
            "businessProp": {},
            "name": "stop",
            "id": "EndEvent_7h0l8z",
            "type": "bpmn:endEvent"
        },
        "serviceTask": {
            "outgoing": "SequenceFlow_1ioqlvx",
            "incoming": "SequenceFlow_1mn62us",
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
                "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/unicodeMSSQLConfig/deleteUnicodeData\"",
                "parameters-body": [],
                "data-type": 2,
                "url": "\"http://localhost:3030/rest/webservices/context/application/unicodeMSSQLConfig/deleteUnicodeData\"",
                "proxy": "false",
                "port": "",
                "response": "mssqldelete",
                "data-source": "{\"name\":\"unicodeMSSQLConfig\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"883f6756-ec86-42d2-afba-8f5e5df8d07b\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"5e91f48c-d8c4-4e58-aa5e-73ee1464a401\",\"createdOn\":\"2020-12-01T10:06:19.044+05:30\",\"modifiedOn\":\"2020-12-01T10:06:19.044+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                "reqType": "formData",
                "host": "",
                "data-source-function": "{\"name\":\"deleteUnicodeData\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"UnicodeData\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteUnicodeData\",\"baseUrl\":\"/unicodeMSSQLConfig\",\"datasourceType\":0}",
                "parameters": [{
                    "paramLocation": 2,
                    "type": "Query",
                    "value": "pmssqldeletel1",
                    "key": "UnicodeData",
                    "allowOverride": true
                }]
            },
            "name": "deleteusertask",
            "id": "ServiceTask_1s88tzr",
            "type": "bpmn:serviceTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_1mn62us",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_192aewa",
            "type": "bpmn:startEvent"
        },
        "id": "Process_bo4c7b",
        "userTask": {
            "outgoing": "SequenceFlow_1jupa8w",
            "incoming": "SequenceFlow_1ioqlvx",
            "businessProp": {
                "formType": "Custom",
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "role1",
                    "actualData": "{\"name\":\"role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/unicodepostgressDBApp/App Roles\",\"properties\":{\"isWorkspaceReady\":false},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":\"940f3645-acb4-4d19-b512-b1eb9576dd0c\",\"projectId\":\"f5a925bd-ed4f-44a6-96aa-38452ea3f4cf\",\"referenceId\":\"c30b548c-f26c-4b1d-ae44-1fc965086319\",\"namespaceId\":null,\"content\":null,\"id\":\"4f4c7713-f4df-4319-acfc-fd5a9cd08f1f\",\"createdOn\":\"2020-11-16T12:25:17.022+05:30\",\"modifiedOn\":\"2020-11-16T12:25:17.062+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"contentAsBytes\":null,\"buildProgress\":false,\"contentAsString\":\"\"}"
                },
                "fromUser": "\"Superadmin\"",
                "form-variables": [{
                    "ref": "mssqldelete",
                    "regex": "",
                    "default-value": "",
                    "readonly": false,
                    "label": "Result",
                    "fieldtype": "Text Area",
                    "type": "string",
                    "mandatory": true,
                    "errormsg": ""
                }],
                "subject": "\"Delete Record\"",
                "form-url-type": "\"\"",
                "body-replace-strings": [],
                "form-url": "\"\"",
                "assignee-type": "Role",
                "existingForm": "",
                "email-type": "text/html",
                "attribute-references": [],
                "form-url-helper": "\"\"",
                "formName": "Delete a Record",
                "notify-type": "Message Only"
            },
            "name": "mssqldeleteusertask",
            "id": "UserTask_1d8gkdh",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_bo4c7b",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "EndEvent_7h0l8z",
                    "Bounds": {
                        "cx": 504.0000144839287,
                        "cy": 262.5000069439411,
                        "x": 486.0000144839287,
                        "width": 36,
                        "y": 233.00000694394112,
                        "height": 59
                    },
                    "id": "EndEvent_7h0l8z_ve"
                },
                {
                    "bpmnElement": "ServiceTask_1s88tzr",
                    "Bounds": {
                        "cx": 278.0000000900029,
                        "cy": 143.00001358494137,
                        "x": 201.01999673306932,
                        "width": 153.9600067138672,
                        "y": 104.83501266941403,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_1s88tzr_ve"
                },
                {
                    "bpmnElement": "StartEvent_192aewa",
                    "Bounds": {
                        "cx": 99.00000241398811,
                        "cy": 154.5000037252903,
                        "x": 81.00000241398811,
                        "width": 36,
                        "y": 125.0000037252903,
                        "height": 59
                    },
                    "id": "StartEvent_192aewa_ve"
                },
                {
                    "bpmnElement": "UserTask_1d8gkdh",
                    "Bounds": {
                        "cx": 504.0000000900029,
                        "cy": 143.00001358494137,
                        "x": 427.0199967330693,
                        "width": 153.9600067138672,
                        "y": 104.83501266941403,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_1d8gkdh_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "117.00000241398811",
                            "y": "143.0000037252903"
                        },
                        {
                            "x": "201.01999673306932",
                            "y": "143.00001266941402"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1mn62us",
                    "id": "SequenceFlow_1mn62us_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "354.97999673306936",
                            "y": "143.00001266941402"
                        },
                        {
                            "x": "427.0199967330693",
                            "y": "143.00001266941402"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1ioqlvx",
                    "id": "SequenceFlow_1ioqlvx_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "503.99999673306934",
                            "y": "181.165012669414"
                        },
                        {
                            "x": "504.0000144839287",
                            "y": "233.00000694394112"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1jupa8w",
                    "id": "SequenceFlow_1jupa8w_ve"
                }
            ]
        },
        "id": "Process_bo4c7b_ve"
    },
    "collaboration": {}
}