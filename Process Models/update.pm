{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "ServiceTask_1tlwvoz",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_tm80h",
                "sourceRef": "StartEvent_1wra7qm",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_3g1kb9",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1u3uc69",
                "sourceRef": "ServiceTask_1tlwvoz",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_129m08x",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1yudv3w",
                "sourceRef": "UserTask_3g1kb9",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_1yudv3w",
            "businessProp": {},
            "name": "stop",
            "id": "EndEvent_129m08x",
            "type": "bpmn:endEvent"
        },
        "serviceTask": {
            "outgoing": "SequenceFlow_1u3uc69",
            "incoming": "SequenceFlow_tm80h",
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
                "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/unicodeTest/updateLanguages\"",
                "parameters-body": [
                    {
                        "paramLocation": 1,
                        "value": "ppl2",
                        "key": "L2",
                        "allowOverride": true
                    },
                    {
                        "paramLocation": 1,
                        "value": "ppl1",
                        "key": "L1",
                        "allowOverride": true
                    }
                ],
                "data-type": 2,
                "url": "\"http://localhost:3030/rest/webservices/context/application/unicodeTest/updateLanguages\"",
                "proxy": "false",
                "bodyFormData": [
                    {
                        "paramLocation": 1,
                        "value": "ppl2",
                        "key": "L2",
                        "allowOverride": true
                    },
                    {
                        "paramLocation": 1,
                        "value": "ppl1",
                        "key": "L1",
                        "allowOverride": true
                    }
                ],
                "port": "",
                "response": "updateop",
                "data-source": "{\"name\":\"unicodeTest\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"3118ff72-ad1d-4eef-885f-20f24409574f\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"0f80bf65-7e8e-422f-b495-a3f77eb7e248\",\"createdOn\":\"2020-11-11T17:43:24.156+05:30\",\"modifiedOn\":\"2020-11-11T17:43:24.156+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                "reqType": "formData",
                "host": "",
                "data-source-function": "{\"name\":\"updateLanguages\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"L2\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"L1\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"L1\",\"allowOverride\":true}]},\"functionUrl\":\"/updateLanguages\",\"baseUrl\":\"/unicodeTest\",\"datasourceType\":0}",
                "parameters": [{
                    "paramLocation": 1,
                    "type": "Query",
                    "value": "ppl1",
                    "key": "L1",
                    "allowOverride": true
                }]
            },
            "name": "updateTask",
            "id": "ServiceTask_1tlwvoz",
            "type": "bpmn:serviceTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_tm80h",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "start",
            "id": "StartEvent_1wra7qm",
            "type": "bpmn:startEvent"
        },
        "id": "Process_165d1up",
        "userTask": {
            "outgoing": "SequenceFlow_1yudv3w",
            "incoming": "SequenceFlow_1u3uc69",
            "businessProp": {
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "role1",
                    "actualData": "{\"name\":\"role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/unicodepostgres/App Roles\",\"properties\":{},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":null,\"projectId\":\"3118ff72-ad1d-4eef-885f-20f24409574f\",\"referenceId\":\"8e60e7ab-a2bb-4774-bc7b-f0254697844e\",\"namespaceId\":null,\"content\":null,\"id\":\"4af4b0b8-f3e4-47b8-bce8-eb9092e07259\",\"createdOn\":\"2020-11-12T12:00:52.224+05:30\",\"modifiedOn\":\"2020-11-12T12:00:52.224+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"contentAsString\":\"\",\"contentAsBytes\":null,\"buildProgress\":false}"
                },
                "formType": "Custom",
                "fromUser": "\"SperAdmin\"",
                "form-variables": [{
                    "ref": "updateop",
                    "regex": "",
                    "default-value": "",
                    "readonly": false,
                    "label": "Update Result",
                    "fieldtype": "Text Area",
                    "type": "string",
                    "mandatory": true,
                    "errormsg": ""
                }],
                "subject": "\"Update a Record\"",
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
            "name": "updateUserTask",
            "id": "UserTask_3g1kb9",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_165d1up",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "StartEvent_1wra7qm",
                    "Bounds": {
                        "cx": 251,
                        "cy": 250.5,
                        "x": 233,
                        "width": 36,
                        "y": 221,
                        "height": 59
                    },
                    "id": "StartEvent_1wra7qm_ve"
                },
                {
                    "bpmnElement": "ServiceTask_1tlwvoz",
                    "Bounds": {
                        "cx": 472,
                        "cy": 238.99999237060547,
                        "x": 395.0199966430664,
                        "width": 153.9600067138672,
                        "y": 200.83499145507812,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_1tlwvoz_ve"
                },
                {
                    "bpmnElement": "UserTask_3g1kb9",
                    "Bounds": {
                        "cx": 753,
                        "cy": 239,
                        "x": 676.0199966430664,
                        "width": 153.9600067138672,
                        "y": 200.83499908447266,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_3g1kb9_ve"
                },
                {
                    "bpmnElement": "EndEvent_129m08x",
                    "Bounds": {
                        "cx": 941,
                        "cy": 250.5,
                        "x": 923,
                        "width": 36,
                        "y": 221,
                        "height": 59
                    },
                    "id": "EndEvent_129m08x_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "269",
                            "y": "239"
                        },
                        {
                            "x": "395.0199966430664",
                            "y": "238.99999908447265"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_tm80h",
                    "id": "SequenceFlow_tm80h_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "548.9799966430664",
                            "y": "238.99999145507812"
                        },
                        {
                            "x": "676.0199966430664",
                            "y": "238.99999908447265"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1u3uc69",
                    "id": "SequenceFlow_1u3uc69_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "829.9799966430664",
                            "y": "238.99999908447265"
                        },
                        {
                            "x": "923",
                            "y": "239"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1yudv3w",
                    "id": "SequenceFlow_1yudv3w_ve"
                }
            ]
        },
        "id": "Process_165d1up_ve"
    },
    "collaboration": {}
}