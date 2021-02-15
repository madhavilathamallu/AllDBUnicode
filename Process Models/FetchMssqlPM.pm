{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "ServiceTask_hqqqr4",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_qbdk30",
                "sourceRef": "StartEvent_bo8hvk",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_1862sfy",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1vtq8t4",
                "sourceRef": "ServiceTask_hqqqr4",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_tv4uzv",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_k74zm9",
                "sourceRef": "UserTask_1862sfy",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_k74zm9",
            "businessProp": {},
            "name": "stop",
            "id": "EndEvent_tv4uzv",
            "type": "bpmn:endEvent"
        },
        "serviceTask": {
            "outgoing": "SequenceFlow_1vtq8t4",
            "incoming": "SequenceFlow_qbdk30",
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
                "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/unicodeMSSQLConfig/selectAllUnicodeData\"",
                "parameters-body": [],
                "data-type": 2,
                "url": "\"http://localhost:3030/rest/webservices/context/application/unicodeMSSQLConfig/selectAllUnicodeData\"",
                "proxy": "false",
                "port": "",
                "response": "fetchmssql",
                "data-source": "{\"name\":\"unicodeMSSQLConfig\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"883f6756-ec86-42d2-afba-8f5e5df8d07b\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"5e91f48c-d8c4-4e58-aa5e-73ee1464a401\",\"createdOn\":\"2020-12-01T10:06:19.044+05:30\",\"modifiedOn\":\"2020-12-01T10:06:19.044+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                "reqType": "formData",
                "host": "",
                "data-source-function": "{\"name\":\"selectAllUnicodeData\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllUnicodeData\",\"baseUrl\":\"/unicodeMSSQLConfig\",\"datasourceType\":0}",
                "parameters": []
            },
            "name": "fetchmssql",
            "id": "ServiceTask_hqqqr4",
            "type": "bpmn:serviceTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_qbdk30",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_bo8hvk",
            "type": "bpmn:startEvent"
        },
        "id": "Process_11vsyyh",
        "userTask": {
            "outgoing": "SequenceFlow_k74zm9",
            "incoming": "SequenceFlow_1vtq8t4",
            "businessProp": {
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "role1",
                    "actualData": "{\"name\":\"role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/unicodepostgressDBApp/App Roles\",\"properties\":{\"isWorkspaceReady\":false},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":\"940f3645-acb4-4d19-b512-b1eb9576dd0c\",\"projectId\":\"f5a925bd-ed4f-44a6-96aa-38452ea3f4cf\",\"referenceId\":\"c30b548c-f26c-4b1d-ae44-1fc965086319\",\"namespaceId\":null,\"content\":null,\"id\":\"4f4c7713-f4df-4319-acfc-fd5a9cd08f1f\",\"createdOn\":\"2020-11-16T12:25:17.022+05:30\",\"modifiedOn\":\"2020-11-16T12:25:17.062+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"contentAsBytes\":null,\"buildProgress\":false,\"contentAsString\":\"\"}"
                },
                "formType": "Custom",
                "fromUser": "\"Superadmin\"",
                "form-variables": [{
                    "ref": "fetchmssql",
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
            "name": "fetchmssqlusertask",
            "id": "UserTask_1862sfy",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_11vsyyh",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "EndEvent_tv4uzv",
                    "Bounds": {
                        "cx": 503.00001445412636,
                        "cy": 242.50000634789467,
                        "x": 485.00001445412636,
                        "width": 36,
                        "y": 213.00000634789467,
                        "height": 59
                    },
                    "id": "EndEvent_tv4uzv_ve"
                },
                {
                    "bpmnElement": "ServiceTask_hqqqr4",
                    "Bounds": {
                        "cx": 294.0000000900029,
                        "cy": 133.00000595554684,
                        "x": 217.01999673306932,
                        "width": 153.9600067138672,
                        "y": 94.8350050400195,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_hqqqr4_ve"
                },
                {
                    "bpmnElement": "StartEvent_bo8hvk",
                    "Bounds": {
                        "cx": 151.00000396370888,
                        "cy": 144.50000342726707,
                        "x": 133.00000396370888,
                        "width": 36,
                        "y": 115.00000342726707,
                        "height": 59
                    },
                    "id": "StartEvent_bo8hvk_ve"
                },
                {
                    "bpmnElement": "UserTask_1862sfy",
                    "Bounds": {
                        "cx": 503.0000000900029,
                        "cy": 133.00000595554684,
                        "x": 426.0199967330693,
                        "width": 153.9600067138672,
                        "y": 94.8350050400195,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_1862sfy_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "169.00000396370888",
                            "y": "133.00000342726707"
                        },
                        {
                            "x": "217.01999673306932",
                            "y": "133.0000050400195"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_qbdk30",
                    "id": "SequenceFlow_qbdk30_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "370.97999673306936",
                            "y": "133.0000050400195"
                        },
                        {
                            "x": "426.0199967330693",
                            "y": "133.0000050400195"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1vtq8t4",
                    "id": "SequenceFlow_1vtq8t4_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "502.99999673306934",
                            "y": "171.16500504001948"
                        },
                        {
                            "x": "503.00001445412636",
                            "y": "213.00000634789467"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_k74zm9",
                    "id": "SequenceFlow_k74zm9_ve"
                }
            ]
        },
        "id": "Process_11vsyyh_ve"
    },
    "collaboration": {}
}