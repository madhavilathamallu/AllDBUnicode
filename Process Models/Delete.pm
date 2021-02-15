{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "ServiceTask_1oa70op",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1p06bly",
                "sourceRef": "StartEvent_yljsp5",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_j6jh7l",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_le1i3m",
                "sourceRef": "ServiceTask_1oa70op",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_fz77w8",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_sgairx",
                "sourceRef": "UserTask_j6jh7l",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_sgairx",
            "businessProp": {},
            "name": "stop",
            "id": "EndEvent_fz77w8",
            "type": "bpmn:endEvent"
        },
        "serviceTask": {
            "outgoing": "SequenceFlow_le1i3m",
            "incoming": "SequenceFlow_1p06bly",
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
                "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/unicodeTest/deleteLanguages\"",
                "parameters-body": [],
                "data-type": 2,
                "url": "\"http://localhost:3030/rest/webservices/context/application/unicodeTest/deleteLanguages\"",
                "proxy": "false",
                "port": "",
                "response": "deleteop",
                "data-source": "{\"name\":\"unicodeTest\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"3118ff72-ad1d-4eef-885f-20f24409574f\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"0f80bf65-7e8e-422f-b495-a3f77eb7e248\",\"createdOn\":\"2020-11-11T17:43:24.156+05:30\",\"modifiedOn\":\"2020-11-11T17:43:24.156+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                "reqType": "formData",
                "host": "",
                "data-source-function": "{\"name\":\"deleteLanguages\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"L2\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteLanguages\",\"baseUrl\":\"/unicodeTest\",\"datasourceType\":0}",
                "parameters": [{
                    "paramLocation": 2,
                    "type": "Query",
                    "value": "pppl1",
                    "key": "L2",
                    "allowOverride": true
                }]
            },
            "name": "deleteTask",
            "id": "ServiceTask_1oa70op",
            "type": "bpmn:serviceTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_1p06bly",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_yljsp5",
            "type": "bpmn:startEvent"
        },
        "id": "Process_l521c8",
        "userTask": {
            "outgoing": "SequenceFlow_sgairx",
            "incoming": "SequenceFlow_le1i3m",
            "businessProp": {
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "role1",
                    "actualData": "{\"name\":\"role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/unicodepostgres/App Roles\",\"properties\":{},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":null,\"projectId\":\"3118ff72-ad1d-4eef-885f-20f24409574f\",\"referenceId\":\"8e60e7ab-a2bb-4774-bc7b-f0254697844e\",\"namespaceId\":null,\"content\":null,\"id\":\"4af4b0b8-f3e4-47b8-bce8-eb9092e07259\",\"createdOn\":\"2020-11-12T12:00:52.224+05:30\",\"modifiedOn\":\"2020-11-12T12:00:52.224+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"contentAsString\":\"\",\"contentAsBytes\":null,\"buildProgress\":false}"
                },
                "formType": "Custom",
                "fromUser": "\"SuperAdmin\"",
                "form-variables": [{
                    "ref": "deleteop",
                    "regex": "",
                    "default-value": "",
                    "readonly": false,
                    "label": "Delete Result",
                    "fieldtype": "Text Area",
                    "type": "string",
                    "mandatory": true,
                    "errormsg": ""
                }],
                "subject": "\"Delete a Record\"",
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
            "name": "deleteUserTask",
            "id": "UserTask_j6jh7l",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_l521c8",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "StartEvent_yljsp5",
                    "Bounds": {
                        "cx": 302,
                        "cy": 253.5,
                        "x": 284,
                        "width": 36,
                        "y": 224,
                        "height": 59
                    },
                    "id": "StartEvent_yljsp5_ve"
                },
                {
                    "bpmnElement": "ServiceTask_1oa70op",
                    "Bounds": {
                        "cx": 495,
                        "cy": 241.99999237060547,
                        "x": 418.0199966430664,
                        "width": 153.9600067138672,
                        "y": 203.83499145507812,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_1oa70op_ve"
                },
                {
                    "bpmnElement": "UserTask_j6jh7l",
                    "Bounds": {
                        "cx": 729,
                        "cy": 261,
                        "x": 652.0199966430664,
                        "width": 153.9600067138672,
                        "y": 222.83499908447266,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_j6jh7l_ve"
                },
                {
                    "bpmnElement": "EndEvent_fz77w8",
                    "Bounds": {
                        "cx": 973,
                        "cy": 253.5,
                        "x": 955,
                        "width": 36,
                        "y": 224,
                        "height": 59
                    },
                    "id": "EndEvent_fz77w8_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "320",
                            "y": "242"
                        },
                        {
                            "x": "418.0199966430664",
                            "y": "241.99999908447265"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1p06bly",
                    "id": "SequenceFlow_1p06bly_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "571.9799966430664",
                            "y": "241.99999145507812"
                        },
                        {
                            "x": "611.9999966430664",
                            "y": "241.99999145507812"
                        },
                        {
                            "x": "611.9999966430664",
                            "y": "260.9999990844727"
                        },
                        {
                            "x": "652.0199966430664",
                            "y": "260.9999990844727"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_le1i3m",
                    "id": "SequenceFlow_le1i3m_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "805.9799966430664",
                            "y": "260.9999990844727"
                        },
                        {
                            "x": "880.4899983215332",
                            "y": "260.9999990844727"
                        },
                        {
                            "x": "880.4899983215332",
                            "y": "242"
                        },
                        {
                            "x": "955",
                            "y": "242"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_sgairx",
                    "id": "SequenceFlow_sgairx_ve"
                }
            ]
        },
        "id": "Process_l521c8_ve"
    },
    "collaboration": {}
}