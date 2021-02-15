{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "ServiceTask_op82ym",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_145ee3u",
                "sourceRef": "StartEvent_1yu3nwd",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_1qhyei4",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_khk6cq",
                "sourceRef": "ServiceTask_op82ym",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_1470cly",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_42x5ll",
                "sourceRef": "UserTask_1qhyei4",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_42x5ll",
            "businessProp": {},
            "name": "stop",
            "id": "EndEvent_1470cly",
            "type": "bpmn:endEvent"
        },
        "serviceTask": {
            "outgoing": "SequenceFlow_khk6cq",
            "incoming": "SequenceFlow_145ee3u",
            "businessProp": {
                "headers": [{
                    "value": "\"application/x-www-form-urlencoded\"",
                    "key": "Content-Type",
                    "allowOverride": false
                }],
                "method": "POST",
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
                "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/unicodeMSSQLConfig/insertUnicodeData\"",
                "parameters-body": [
                    {
                        "paramLocation": 1,
                        "value": "pmssqll1",
                        "key": "LanguageTitle",
                        "allowOverride": true
                    },
                    {
                        "paramLocation": 1,
                        "value": "pmssqll2",
                        "key": "UnicodeData",
                        "allowOverride": true
                    }
                ],
                "data-type": 2,
                "url": "\"http://localhost:3030/rest/webservices/context/application/unicodeMSSQLConfig/insertUnicodeData\"",
                "proxy": "false",
                "bodyFormData": [
                    {
                        "paramLocation": 1,
                        "value": "pmssqll1",
                        "key": "LanguageTitle",
                        "allowOverride": true
                    },
                    {
                        "paramLocation": 1,
                        "value": "pmssqll2",
                        "key": "UnicodeData",
                        "allowOverride": true
                    }
                ],
                "port": "",
                "response": "createmssqlpm",
                "data-source": "{\"name\":\"unicodeMSSQLConfig\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"883f6756-ec86-42d2-afba-8f5e5df8d07b\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"5e91f48c-d8c4-4e58-aa5e-73ee1464a401\",\"createdOn\":\"2020-12-01T10:06:19.044+05:30\",\"modifiedOn\":\"2020-12-01T10:06:19.044+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                "reqType": "formData",
                "host": "",
                "data-source-function": "{\"name\":\"insertUnicodeData\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"LanguageTitle\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"UnicodeData\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertUnicodeData\",\"baseUrl\":\"/unicodeMSSQLConfig\",\"datasourceType\":0}",
                "parameters": []
            },
            "name": "createmssqlpm",
            "id": "ServiceTask_op82ym",
            "type": "bpmn:serviceTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_145ee3u",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_1yu3nwd",
            "type": "bpmn:startEvent"
        },
        "id": "Process_4mp8zd",
        "userTask": {
            "outgoing": "SequenceFlow_42x5ll",
            "incoming": "SequenceFlow_khk6cq",
            "businessProp": {
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "role1",
                    "actualData": "{\"name\":\"role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/unicodepostgressDBApp/App Roles\",\"properties\":{\"isWorkspaceReady\":false},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":\"940f3645-acb4-4d19-b512-b1eb9576dd0c\",\"projectId\":\"f5a925bd-ed4f-44a6-96aa-38452ea3f4cf\",\"referenceId\":\"c30b548c-f26c-4b1d-ae44-1fc965086319\",\"namespaceId\":null,\"content\":null,\"id\":\"4f4c7713-f4df-4319-acfc-fd5a9cd08f1f\",\"createdOn\":\"2020-11-16T12:25:17.022+05:30\",\"modifiedOn\":\"2020-11-16T12:25:17.062+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"contentAsBytes\":null,\"buildProgress\":false,\"contentAsString\":\"\"}"
                },
                "formType": "Custom",
                "fromUser": "\"superadmin\"",
                "form-variables": [{
                    "ref": "createmssqlpm",
                    "regex": "",
                    "default-value": "",
                    "readonly": false,
                    "label": "Result",
                    "fieldtype": "Text Area",
                    "type": "string",
                    "mandatory": true,
                    "errormsg": ""
                }],
                "subject": "\"Create Record\"",
                "form-url-type": "\"\"",
                "body-replace-strings": [],
                "form-url": "\"\"",
                "assignee-type": "Role",
                "existingForm": "",
                "email-type": "text/html",
                "attribute-references": [],
                "form-url-helper": "\"\"",
                "formName": "Create Record",
                "notify-type": "Message Only"
            },
            "name": "createUsertask",
            "id": "UserTask_1qhyei4",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_4mp8zd",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "EndEvent_1470cly",
                    "Bounds": {
                        "cx": 629.000018209219,
                        "cy": 209.50000536441803,
                        "x": 611.000018209219,
                        "width": 36,
                        "y": 180.00000536441803,
                        "height": 59
                    },
                    "id": "EndEvent_1470cly_ve"
                },
                {
                    "bpmnElement": "ServiceTask_op82ym",
                    "Bounds": {
                        "cx": 248.0000000900029,
                        "cy": 171.00001358494137,
                        "x": 171.01999673306932,
                        "width": 153.9600067138672,
                        "y": 132.83501266941403,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_op82ym_ve"
                },
                {
                    "bpmnElement": "StartEvent_1yu3nwd",
                    "Bounds": {
                        "cx": 102.00000250339508,
                        "cy": 182.50000455975533,
                        "x": 84.00000250339508,
                        "width": 36,
                        "y": 153.00000455975533,
                        "height": 59
                    },
                    "id": "StartEvent_1yu3nwd_ve"
                },
                {
                    "bpmnElement": "UserTask_1qhyei4",
                    "Bounds": {
                        "cx": 471.0000000900029,
                        "cy": 171.0000165651736,
                        "x": 394.0199967330693,
                        "width": 153.9600067138672,
                        "y": 132.83501564964627,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_1qhyei4_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "120.00000250339508",
                            "y": "171.00000455975533"
                        },
                        {
                            "x": "171.01999673306932",
                            "y": "171.00001266941402"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_145ee3u",
                    "id": "SequenceFlow_145ee3u_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "324.97999673306936",
                            "y": "171.00001266941402"
                        },
                        {
                            "x": "394.0199967330693",
                            "y": "171.00001564964626"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_khk6cq",
                    "id": "SequenceFlow_khk6cq_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "547.9799967330694",
                            "y": "171.00001564964626"
                        },
                        {
                            "x": "579.4900074711442",
                            "y": "171.00001564964626"
                        },
                        {
                            "x": "579.4900074711442",
                            "y": "198.00000536441803"
                        },
                        {
                            "x": "611.000018209219",
                            "y": "198.00000536441803"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_42x5ll",
                    "id": "SequenceFlow_42x5ll_ve"
                }
            ]
        },
        "id": "Process_4mp8zd_ve"
    },
    "collaboration": {}
}