{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "ServiceTask_1v6kknm",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_39h6du",
                "sourceRef": "StartEvent_1v7qsk1",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_19jgc11",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1703mzf",
                "sourceRef": "ServiceTask_1v6kknm",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_vvgfwt",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1qujl3i",
                "sourceRef": "UserTask_19jgc11",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_1qujl3i",
            "businessProp": {},
            "name": "stop",
            "id": "EndEvent_vvgfwt",
            "type": "bpmn:endEvent"
        },
        "serviceTask": {
            "outgoing": "SequenceFlow_1703mzf",
            "incoming": "SequenceFlow_39h6du",
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
                        "{\"name\":\"insertLanguages\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"L1\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"L2\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertLanguages\",\"baseUrl\":\"/unicodeTest\",\"datasourceType\":0}",
                        "{\"name\":\"selectAllLanguages\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllLanguages\",\"baseUrl\":\"/unicodeTest\",\"datasourceType\":0}",
                        "{\"name\":\"updateLanguages\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"L2\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"L1\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"L1\",\"allowOverride\":true}]},\"functionUrl\":\"/updateLanguages\",\"baseUrl\":\"/unicodeTest\",\"datasourceType\":0}",
                        "{\"name\":\"deleteLanguages\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"L2\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteLanguages\",\"baseUrl\":\"/unicodeTest\",\"datasourceType\":0}",
                        "{\"name\":\"selectLanguages\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"L1\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectLanguages\",\"baseUrl\":\"/unicodeTest\",\"datasourceType\":0}"
                    ],
                    "options": [
                        "Select",
                        "insertLanguages",
                        "selectAllLanguages",
                        "updateLanguages",
                        "deleteLanguages",
                        "selectLanguages"
                    ]
                },
                "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/unicodeTest/selectAllLanguages\"",
                "parameters-body": [],
                "data-type": 2,
                "url": "\"http://localhost:3030/rest/webservices/context/application/unicodeTest/selectAllLanguages\"",
                "proxy": "false",
                "port": "",
                "response": "fetchop",
                "data-source": "{\"name\":\"unicodeTest\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"3118ff72-ad1d-4eef-885f-20f24409574f\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"0f80bf65-7e8e-422f-b495-a3f77eb7e248\",\"createdOn\":\"2020-11-11T17:43:24.156+05:30\",\"modifiedOn\":\"2020-11-11T17:43:24.156+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                "reqType": "formData",
                "host": "",
                "data-source-function": "{\"name\":\"selectAllLanguages\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllLanguages\",\"baseUrl\":\"/unicodeTest\",\"datasourceType\":0}",
                "parameters": []
            },
            "name": "fetchTask",
            "id": "ServiceTask_1v6kknm",
            "type": "bpmn:serviceTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_39h6du",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "start",
            "id": "StartEvent_1v7qsk1",
            "type": "bpmn:startEvent"
        },
        "id": "Process_18iaal9",
        "userTask": {
            "outgoing": "SequenceFlow_1qujl3i",
            "incoming": "SequenceFlow_1703mzf",
            "businessProp": {
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "role1",
                    "actualData": "{\"name\":\"role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/unicodepostgres/App Roles\",\"properties\":{},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":null,\"projectId\":\"3118ff72-ad1d-4eef-885f-20f24409574f\",\"referenceId\":\"8e60e7ab-a2bb-4774-bc7b-f0254697844e\",\"namespaceId\":null,\"content\":null,\"id\":\"4af4b0b8-f3e4-47b8-bce8-eb9092e07259\",\"createdOn\":\"2020-11-12T12:00:52.224+05:30\",\"modifiedOn\":\"2020-11-12T12:00:52.224+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"contentAsString\":\"\",\"contentAsBytes\":null,\"buildProgress\":false}"
                },
                "formType": "Custom",
                "fromUser": "\"SuperAdmin\"",
                "form-variables": [{
                    "ref": "fetchop",
                    "regex": "",
                    "default-value": "",
                    "readonly": false,
                    "label": "Fetch Result",
                    "fieldtype": "Text Area",
                    "type": "string",
                    "mandatory": true,
                    "errormsg": ""
                }],
                "subject": "\"Fetch Records\"",
                "assignee-queue": "",
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
            "name": "FetchUserTask",
            "id": "UserTask_19jgc11",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_18iaal9",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "StartEvent_1v7qsk1",
                    "Bounds": {
                        "cx": 204,
                        "cy": 236.5,
                        "x": 186,
                        "width": 36,
                        "y": 207,
                        "height": 59
                    },
                    "id": "StartEvent_1v7qsk1_ve"
                },
                {
                    "bpmnElement": "ServiceTask_1v6kknm",
                    "Bounds": {
                        "cx": 388,
                        "cy": 224.99999237060547,
                        "x": 311.0199966430664,
                        "width": 153.9600067138672,
                        "y": 186.83499145507812,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_1v6kknm_ve"
                },
                {
                    "bpmnElement": "UserTask_19jgc11",
                    "Bounds": {
                        "cx": 697,
                        "cy": 248,
                        "x": 620.0199966430664,
                        "width": 153.9600067138672,
                        "y": 209.83499908447266,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_19jgc11_ve"
                },
                {
                    "bpmnElement": "EndEvent_vvgfwt",
                    "Bounds": {
                        "cx": 883,
                        "cy": 221.5,
                        "x": 865,
                        "width": 36,
                        "y": 192,
                        "height": 59
                    },
                    "id": "EndEvent_vvgfwt_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "222",
                            "y": "225"
                        },
                        {
                            "x": "311.0199966430664",
                            "y": "224.99999908447265"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_39h6du",
                    "id": "SequenceFlow_39h6du_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "464.97999664306644",
                            "y": "224.99999145507812"
                        },
                        {
                            "x": "542.4999966430664",
                            "y": "224.99999145507812"
                        },
                        {
                            "x": "542.4999966430664",
                            "y": "247.99999908447265"
                        },
                        {
                            "x": "620.0199966430664",
                            "y": "247.99999908447265"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1703mzf",
                    "id": "SequenceFlow_1703mzf_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "773.9799966430664",
                            "y": "247.99999908447265"
                        },
                        {
                            "x": "819.4899983215332",
                            "y": "247.99999908447265"
                        },
                        {
                            "x": "819.4899983215332",
                            "y": "210"
                        },
                        {
                            "x": "865",
                            "y": "210"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1qujl3i",
                    "id": "SequenceFlow_1qujl3i_ve"
                }
            ]
        },
        "id": "Process_18iaal9_ve"
    },
    "collaboration": {}
}