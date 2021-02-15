{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "ServiceTask_az68jg",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_dk6mxs",
                "sourceRef": "StartEvent_nfm58v",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_1mz3q8t",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_sad1bg",
                "sourceRef": "ServiceTask_az68jg",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_fgnllb",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1ebu76r",
                "sourceRef": "UserTask_1mz3q8t",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_1ebu76r",
            "businessProp": {},
            "name": "Stop",
            "id": "EndEvent_fgnllb",
            "type": "bpmn:endEvent"
        },
        "serviceTask": {
            "outgoing": "SequenceFlow_sad1bg",
            "incoming": "SequenceFlow_dk6mxs",
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
                "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/unicodeTest/insertLanguages\"",
                "parameters-body": [
                    {
                        "paramLocation": 1,
                        "value": "pl1",
                        "key": "L1",
                        "allowOverride": true
                    },
                    {
                        "paramLocation": 1,
                        "value": "pl2",
                        "key": "L2",
                        "allowOverride": true
                    }
                ],
                "data-type": 2,
                "url": "\"http://localhost:3030/rest/webservices/context/application/unicodeTest/insertLanguages\"",
                "proxy": "false",
                "bodyFormData": [
                    {
                        "paramLocation": 1,
                        "value": "pl1",
                        "key": "L1",
                        "allowOverride": true
                    },
                    {
                        "paramLocation": 1,
                        "value": "pl2",
                        "key": "L2",
                        "allowOverride": true
                    }
                ],
                "port": "",
                "response": "createop",
                "data-source": "{\"name\":\"unicodeTest\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"3118ff72-ad1d-4eef-885f-20f24409574f\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"0f80bf65-7e8e-422f-b495-a3f77eb7e248\",\"createdOn\":\"2020-11-11T17:43:24.156+05:30\",\"modifiedOn\":\"2020-11-11T17:43:24.156+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                "reqType": "formData",
                "host": "",
                "data-source-function": "{\"name\":\"insertLanguages\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"L1\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"L2\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertLanguages\",\"baseUrl\":\"/unicodeTest\",\"datasourceType\":0}",
                "parameters": []
            },
            "name": "createTask",
            "id": "ServiceTask_az68jg",
            "type": "bpmn:serviceTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_dk6mxs",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_nfm58v",
            "type": "bpmn:startEvent"
        },
        "id": "Process_2wpo9k",
        "userTask": {
            "outgoing": "SequenceFlow_1ebu76r",
            "incoming": "SequenceFlow_sad1bg",
            "businessProp": {
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "role1",
                    "actualData": "{\"name\":\"role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/unicodepostgres/App Roles\",\"properties\":{},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":null,\"projectId\":\"3118ff72-ad1d-4eef-885f-20f24409574f\",\"referenceId\":\"8e60e7ab-a2bb-4774-bc7b-f0254697844e\",\"namespaceId\":null,\"content\":null,\"id\":\"4af4b0b8-f3e4-47b8-bce8-eb9092e07259\",\"createdOn\":\"2020-11-12T12:00:52.224+05:30\",\"modifiedOn\":\"2020-11-12T12:00:52.224+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"contentAsString\":\"\",\"contentAsBytes\":null,\"buildProgress\":false}"
                },
                "formType": "Custom",
                "fromUser": "\"superadmin\"",
                "form-variables": [{
                    "ref": "createop",
                    "regex": "",
                    "default-value": "",
                    "readonly": false,
                    "label": "Result",
                    "fieldtype": "Text Area",
                    "type": "string",
                    "mandatory": true,
                    "errormsg": ""
                }],
                "subject": "\"Create a Record\"",
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
            "id": "UserTask_1mz3q8t",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_2wpo9k",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "StartEvent_nfm58v",
                    "Bounds": {
                        "cx": 224,
                        "cy": 243.671875,
                        "x": 206,
                        "width": 36,
                        "y": 214,
                        "height": 59.34375
                    },
                    "id": "StartEvent_nfm58v_ve"
                },
                {
                    "bpmnElement": "ServiceTask_az68jg",
                    "Bounds": {
                        "cx": 392,
                        "cy": 231.99999237060547,
                        "x": 315.0199966430664,
                        "width": 153.9600067138672,
                        "y": 193.83499145507812,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_az68jg_ve"
                },
                {
                    "bpmnElement": "UserTask_1mz3q8t",
                    "Bounds": {
                        "cx": 623,
                        "cy": 231.99999237060547,
                        "x": 546.0199966430664,
                        "width": 153.9600067138672,
                        "y": 193.83499145507812,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_1mz3q8t_ve"
                },
                {
                    "bpmnElement": "EndEvent_fgnllb",
                    "Bounds": {
                        "cx": 814,
                        "cy": 243.671875,
                        "x": 796,
                        "width": 36,
                        "y": 214,
                        "height": 59.34375
                    },
                    "id": "EndEvent_fgnllb_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "242",
                            "y": "232"
                        },
                        {
                            "x": "315.0199966430664",
                            "y": "231.99999145507812"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_dk6mxs",
                    "id": "SequenceFlow_dk6mxs_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "468.97999664306644",
                            "y": "231.99999145507812"
                        },
                        {
                            "x": "546.0199966430664",
                            "y": "231.99999145507812"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_sad1bg",
                    "id": "SequenceFlow_sad1bg_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "699.9799966430664",
                            "y": "231.99999145507812"
                        },
                        {
                            "x": "796",
                            "y": "232"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1ebu76r",
                    "id": "SequenceFlow_1ebu76r_ve"
                }
            ]
        },
        "id": "Process_2wpo9k_ve"
    },
    "collaboration": {}
}