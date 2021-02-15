{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "ServiceTask_16jjbhd",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_154an7e",
                "sourceRef": "StartEvent_rn32mn",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_1h1a9th",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1a4iawu",
                "sourceRef": "ServiceTask_16jjbhd",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_tacd8l",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1rr6sk",
                "sourceRef": "UserTask_1h1a9th",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_1rr6sk",
            "businessProp": {},
            "name": "Stop",
            "id": "EndEvent_tacd8l",
            "type": "bpmn:endEvent"
        },
        "serviceTask": {
            "outgoing": "SequenceFlow_1a4iawu",
            "incoming": "SequenceFlow_154an7e",
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
                "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/unicodeMySQLConfig/insertLanguage\"",
                "parameters-body": [
                    {
                        "paramLocation": 1,
                        "value": "pmysqll1",
                        "key": "LanguageTitle",
                        "allowOverride": true
                    },
                    {
                        "paramLocation": 1,
                        "value": "pmysqll2",
                        "key": "Unicode",
                        "allowOverride": true
                    }
                ],
                "data-type": 2,
                "url": "\"http://localhost:3030/rest/webservices/context/application/unicodeMySQLConfig/insertLanguage\"",
                "proxy": "false",
                "bodyFormData": [
                    {
                        "paramLocation": 1,
                        "value": "pmysqll1",
                        "key": "LanguageTitle",
                        "allowOverride": true
                    },
                    {
                        "paramLocation": 1,
                        "value": "pmysqll2",
                        "key": "Unicode",
                        "allowOverride": true
                    }
                ],
                "port": "",
                "response": "pmysqll",
                "data-source": "{\"name\":\"unicodeMySQLConfig\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"f5a925bd-ed4f-44a6-96aa-38452ea3f4cf\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"2426cf28-7d21-4d2c-a8a0-6aa94a6de3e1\",\"createdOn\":\"2020-11-17T15:55:32.659+05:30\",\"modifiedOn\":\"2020-11-17T15:55:32.659+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                "reqType": "formData",
                "host": "",
                "data-source-function": "{\"name\":\"insertLanguage\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"LanguageTitle\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Unicode\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertLanguage\",\"baseUrl\":\"/unicodeMySQLConfig\",\"datasourceType\":0}",
                "parameters": []
            },
            "name": "createmysql",
            "id": "ServiceTask_16jjbhd",
            "type": "bpmn:serviceTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_154an7e",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_rn32mn",
            "type": "bpmn:startEvent"
        },
        "id": "Process_orwyf7",
        "userTask": {
            "outgoing": "SequenceFlow_1rr6sk",
            "incoming": "SequenceFlow_1a4iawu",
            "businessProp": {
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "role1",
                    "actualData": "{\"name\":\"role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/unicodepostgressDBApp/App Roles\",\"properties\":{\"isWorkspaceReady\":false},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":\"940f3645-acb4-4d19-b512-b1eb9576dd0c\",\"projectId\":\"f5a925bd-ed4f-44a6-96aa-38452ea3f4cf\",\"referenceId\":\"c30b548c-f26c-4b1d-ae44-1fc965086319\",\"namespaceId\":null,\"content\":null,\"id\":\"4f4c7713-f4df-4319-acfc-fd5a9cd08f1f\",\"createdOn\":\"2020-11-16T12:25:17.022+05:30\",\"modifiedOn\":\"2020-11-16T12:25:17.062+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}"
                },
                "formType": "Custom",
                "fromUser": "\"superadmin\"",
                "form-variables": [{
                    "ref": "pmysqll",
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
                "assignee-queue": "",
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
            "id": "UserTask_1h1a9th",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_orwyf7",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "StartEvent_rn32mn",
                    "Bounds": {
                        "cx": 165.99999660209323,
                        "cy": 193.49999623475196,
                        "x": 147.99999660209323,
                        "width": 36,
                        "y": 163.99999623475196,
                        "height": 59
                    },
                    "id": "StartEvent_rn32mn_ve"
                },
                {
                    "bpmnElement": "ServiceTask_16jjbhd",
                    "Bounds": {
                        "cx": 380.00002281858264,
                        "cy": 181.99998778161836,
                        "x": 303.02001946164904,
                        "width": 153.9600067138672,
                        "y": 143.83498686609101,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_16jjbhd_ve"
                },
                {
                    "bpmnElement": "UserTask_1h1a9th",
                    "Bounds": {
                        "cx": 598.0000228185827,
                        "cy": 181.99998778161836,
                        "x": 521.0200194616491,
                        "width": 153.9600067138672,
                        "y": 143.83498686609101,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_1h1a9th_ve"
                },
                {
                    "bpmnElement": "EndEvent_tacd8l",
                    "Bounds": {
                        "cx": 597.9999866838789,
                        "cy": 305.49999366336306,
                        "x": 579.9999866838789,
                        "width": 36,
                        "y": 275.99999366336306,
                        "height": 59
                    },
                    "id": "EndEvent_tacd8l_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "183.99999660209323",
                            "y": "181.99999623475196"
                        },
                        {
                            "x": "303.02001946164904",
                            "y": "181.999986866091"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_154an7e",
                    "id": "SequenceFlow_154an7e_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "456.980019461649",
                            "y": "181.999986866091"
                        },
                        {
                            "x": "521.0200194616491",
                            "y": "181.999986866091"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1a4iawu",
                    "id": "SequenceFlow_1a4iawu_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "598.0000194616491",
                            "y": "220.164986866091"
                        },
                        {
                            "x": "597.9999866838789",
                            "y": "275.99999366336306"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1rr6sk",
                    "id": "SequenceFlow_1rr6sk_ve"
                }
            ]
        },
        "id": "Process_orwyf7_ve"
    },
    "collaboration": {}
}