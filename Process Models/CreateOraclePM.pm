{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "ServiceTask_1h0mshy",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_v3kq0e",
                "sourceRef": "StartEvent_fnx6fc",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_ek2lpo",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_12akcj2",
                "sourceRef": "ServiceTask_1h0mshy",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_183girg",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_ds8f23",
                "sourceRef": "ServiceTask_ek2lpo",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_xtj2kp",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1tfp63t",
                "sourceRef": "ServiceTask_183girg",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_180d84p",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_175zenl",
                "sourceRef": "ServiceTask_xtj2kp",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_6khbim",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1kz99y0",
                "sourceRef": "ServiceTask_180d84p",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_13shllk",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_id2vay",
                "sourceRef": "ServiceTask_6khbim",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_id2vay",
            "businessProp": {},
            "name": "End",
            "id": "EndEvent_13shllk",
            "type": "bpmn:endEvent"
        },
        "serviceTask": [
            {
                "outgoing": "SequenceFlow_12akcj2",
                "incoming": "SequenceFlow_v3kq0e",
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
                            "{\"name\":\"insertUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"LANGUAGETITLE\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"updateUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"LANGUAGETITLE\",\"allowOverride\":true}]},\"functionUrl\":\"/updateUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"deleteUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "insertUNICODEDB",
                            "selectAllUNICODEDB",
                            "updateUNICODEDB",
                            "deleteUNICODEDB",
                            "selectUNICODEDB"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/OracleDB/insertUNICODEDB\"",
                    "parameters-body": [
                        {
                            "paramLocation": 1,
                            "value": "oraclepm1",
                            "key": "LANGUAGETITLE",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "oraclepm2",
                            "key": "UNICODEDATA",
                            "allowOverride": true
                        }
                    ],
                    "data-type": 2,
                    "url": "\"http://localhost:3030/rest/webservices/context/application/OracleDB/insertUNICODEDB\"",
                    "proxy": "false",
                    "bodyFormData": [
                        {
                            "paramLocation": 1,
                            "value": "oraclepm1",
                            "key": "LANGUAGETITLE",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "oraclepm2",
                            "key": "UNICODEDATA",
                            "allowOverride": true
                        }
                    ],
                    "port": "",
                    "response": "createpm",
                    "data-source": "{\"name\":\"OracleDB\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"883f6756-ec86-42d2-afba-8f5e5df8d07b\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"6e846fd5-3915-4424-8941-2fe7b23d4d34\",\"createdOn\":\"2020-12-01T10:16:50.115+05:30\",\"modifiedOn\":\"2020-12-01T10:16:50.115+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"insertUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"LANGUAGETITLE\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                    "parameters": []
                },
                "name": "create",
                "id": "ServiceTask_1h0mshy",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_ds8f23",
                "incoming": "SequenceFlow_12akcj2",
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
                            "{\"name\":\"insertUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"LANGUAGETITLE\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"updateUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"LANGUAGETITLE\",\"allowOverride\":true}]},\"functionUrl\":\"/updateUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"deleteUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "insertUNICODEDB",
                            "selectAllUNICODEDB",
                            "updateUNICODEDB",
                            "deleteUNICODEDB",
                            "selectUNICODEDB"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/OracleDB/selectAllUNICODEDB\"",
                    "parameters-body": [],
                    "data-type": 2,
                    "url": "\"http://localhost:3030/rest/webservices/context/application/OracleDB/selectAllUNICODEDB\"",
                    "proxy": "false",
                    "port": "",
                    "response": "fetch",
                    "data-source": "{\"name\":\"OracleDB\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"883f6756-ec86-42d2-afba-8f5e5df8d07b\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"6e846fd5-3915-4424-8941-2fe7b23d4d34\",\"createdOn\":\"2020-12-01T10:16:50.115+05:30\",\"modifiedOn\":\"2020-12-01T10:16:50.115+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"selectAllUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                    "parameters": []
                },
                "name": "fetch",
                "id": "ServiceTask_ek2lpo",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_1tfp63t",
                "incoming": "SequenceFlow_ds8f23",
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
                            "{\"name\":\"insertUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"LANGUAGETITLE\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"updateUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"LANGUAGETITLE\",\"allowOverride\":true}]},\"functionUrl\":\"/updateUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"deleteUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "insertUNICODEDB",
                            "selectAllUNICODEDB",
                            "updateUNICODEDB",
                            "deleteUNICODEDB",
                            "selectUNICODEDB"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/OracleDB/updateUNICODEDB\"",
                    "parameters-body": [{
                        "paramLocation": 1,
                        "value": "updateoracle",
                        "key": "UNICODEDATA",
                        "allowOverride": true
                    }],
                    "data-type": 2,
                    "url": "\"http://localhost:3030/rest/webservices/context/application/OracleDB/updateUNICODEDB\"",
                    "proxy": "false",
                    "bodyFormData": [{
                        "paramLocation": 1,
                        "value": "updateoracle",
                        "key": "UNICODEDATA",
                        "allowOverride": true
                    }],
                    "port": "",
                    "response": "updateoracle",
                    "data-source": "{\"name\":\"OracleDB\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"883f6756-ec86-42d2-afba-8f5e5df8d07b\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"6e846fd5-3915-4424-8941-2fe7b23d4d34\",\"createdOn\":\"2020-12-01T10:16:50.115+05:30\",\"modifiedOn\":\"2020-12-01T10:16:50.115+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"updateUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"LANGUAGETITLE\",\"allowOverride\":true}]},\"functionUrl\":\"/updateUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                    "parameters": [{
                        "paramLocation": 1,
                        "type": "Query",
                        "value": "oraclepm1",
                        "key": "LANGUAGETITLE",
                        "allowOverride": true
                    }]
                },
                "name": "update",
                "id": "ServiceTask_183girg",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_175zenl",
                "incoming": "SequenceFlow_1tfp63t",
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
                            "{\"name\":\"insertUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"LANGUAGETITLE\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"updateUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"LANGUAGETITLE\",\"allowOverride\":true}]},\"functionUrl\":\"/updateUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"deleteUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "insertUNICODEDB",
                            "selectAllUNICODEDB",
                            "updateUNICODEDB",
                            "deleteUNICODEDB",
                            "selectUNICODEDB"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/OracleDB/selectAllUNICODEDB\"",
                    "parameters-body": [],
                    "data-type": 2,
                    "url": "\"http://localhost:3030/rest/webservices/context/application/OracleDB/selectAllUNICODEDB\"",
                    "proxy": "false",
                    "port": "",
                    "response": "fetchrecord",
                    "data-source": "{\"name\":\"OracleDB\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"883f6756-ec86-42d2-afba-8f5e5df8d07b\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"6e846fd5-3915-4424-8941-2fe7b23d4d34\",\"createdOn\":\"2020-12-01T10:16:50.115+05:30\",\"modifiedOn\":\"2020-12-01T10:16:50.115+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"selectAllUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                    "parameters": []
                },
                "name": "fetchrecord",
                "id": "ServiceTask_xtj2kp",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_1kz99y0",
                "incoming": "SequenceFlow_175zenl",
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
                            "{\"name\":\"insertUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"LANGUAGETITLE\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"updateUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"LANGUAGETITLE\",\"allowOverride\":true}]},\"functionUrl\":\"/updateUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"deleteUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "insertUNICODEDB",
                            "selectAllUNICODEDB",
                            "updateUNICODEDB",
                            "deleteUNICODEDB",
                            "selectUNICODEDB"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/OracleDB/deleteUNICODEDB\"",
                    "parameters-body": [],
                    "data-type": 2,
                    "url": "\"http://localhost:3030/rest/webservices/context/application/OracleDB/deleteUNICODEDB\"",
                    "proxy": "false",
                    "port": "",
                    "response": "deleterecord",
                    "data-source": "{\"name\":\"OracleDB\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"883f6756-ec86-42d2-afba-8f5e5df8d07b\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"6e846fd5-3915-4424-8941-2fe7b23d4d34\",\"createdOn\":\"2020-12-01T10:16:50.115+05:30\",\"modifiedOn\":\"2020-12-01T10:16:50.115+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"deleteUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                    "parameters": [{
                        "paramLocation": 2,
                        "type": "Query",
                        "value": "deletepm",
                        "key": "UNICODEDATA",
                        "allowOverride": true
                    }]
                },
                "name": "deleterecord",
                "id": "ServiceTask_180d84p",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_id2vay",
                "incoming": "SequenceFlow_1kz99y0",
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
                            "{\"name\":\"insertUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"LANGUAGETITLE\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"updateUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"LANGUAGETITLE\",\"allowOverride\":true}]},\"functionUrl\":\"/updateUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"deleteUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"UNICODEDATA\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "insertUNICODEDB",
                            "selectAllUNICODEDB",
                            "updateUNICODEDB",
                            "deleteUNICODEDB",
                            "selectUNICODEDB"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/OracleDB/selectAllUNICODEDB\"",
                    "parameters-body": [],
                    "data-type": 2,
                    "url": "\"http://localhost:3030/rest/webservices/context/application/OracleDB/selectAllUNICODEDB\"",
                    "proxy": "false",
                    "port": "",
                    "response": "fetchfinal",
                    "data-source": "{\"name\":\"OracleDB\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"883f6756-ec86-42d2-afba-8f5e5df8d07b\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"6e846fd5-3915-4424-8941-2fe7b23d4d34\",\"createdOn\":\"2020-12-01T10:16:50.115+05:30\",\"modifiedOn\":\"2020-12-01T10:16:50.115+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"selectAllUNICODEDB\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllUNICODEDB\",\"baseUrl\":\"/OracleDB\",\"datasourceType\":0}",
                    "parameters": []
                },
                "name": "fetchfinal",
                "id": "ServiceTask_6khbim",
                "type": "bpmn:serviceTask",
                "events": []
            }
        ],
        "startEvent": {
            "outgoing": "SequenceFlow_v3kq0e",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_fnx6fc",
            "type": "bpmn:startEvent"
        },
        "id": "Process_15f0kgf"
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_15f0kgf",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "StartEvent_fnx6fc",
                    "Bounds": {
                        "cx": 54,
                        "cy": 256,
                        "x": 36,
                        "width": 36,
                        "y": 226.5,
                        "height": 59
                    },
                    "id": "StartEvent_fnx6fc_ve"
                },
                {
                    "bpmnElement": "ServiceTask_1h0mshy",
                    "Bounds": {
                        "cx": 229,
                        "cy": 244.99999237060547,
                        "x": 152.0199966430664,
                        "width": 153.9600067138672,
                        "y": 206.83499145507812,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_1h0mshy_ve"
                },
                {
                    "bpmnElement": "ServiceTask_ek2lpo",
                    "Bounds": {
                        "cx": 476,
                        "cy": 244.99999237060547,
                        "x": 399.0199966430664,
                        "width": 153.9600067138672,
                        "y": 206.83499145507812,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_ek2lpo_ve"
                },
                {
                    "bpmnElement": "ServiceTask_183girg",
                    "Bounds": {
                        "cx": 720,
                        "cy": 244.99999237060547,
                        "x": 643.0199966430664,
                        "width": 153.9600067138672,
                        "y": 206.83499145507812,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_183girg_ve"
                },
                {
                    "bpmnElement": "ServiceTask_xtj2kp",
                    "Bounds": {
                        "cx": 720.0000228881836,
                        "cy": 346.99999237060547,
                        "x": 643.02001953125,
                        "width": 153.9600067138672,
                        "y": 308.8349914550781,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_xtj2kp_ve"
                },
                {
                    "bpmnElement": "ServiceTask_180d84p",
                    "Bounds": {
                        "cx": 720.0000228881836,
                        "cy": 450.99999237060547,
                        "x": 643.02001953125,
                        "width": 153.9600067138672,
                        "y": 412.8349914550781,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_180d84p_ve"
                },
                {
                    "bpmnElement": "ServiceTask_6khbim",
                    "Bounds": {
                        "cx": 720,
                        "cy": 568.0000228881836,
                        "x": 643.0199966430664,
                        "width": 153.9600067138672,
                        "y": 529.8350219726562,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_6khbim_ve"
                },
                {
                    "bpmnElement": "EndEvent_13shllk",
                    "Bounds": {
                        "cx": 911,
                        "cy": 579.5,
                        "x": 893,
                        "width": 36,
                        "y": 550,
                        "height": 59
                    },
                    "id": "EndEvent_13shllk_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "72",
                            "y": "244.5"
                        },
                        {
                            "x": "152.0199966430664",
                            "y": "244.99999908447265"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_v3kq0e",
                    "id": "SequenceFlow_v3kq0e_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "305.97999664306644",
                            "y": "244.99999145507812"
                        },
                        {
                            "x": "399.0199966430664",
                            "y": "244.99999145507812"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_12akcj2",
                    "id": "SequenceFlow_12akcj2_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "552.9799966430664",
                            "y": "244.99999145507812"
                        },
                        {
                            "x": "643.0199966430664",
                            "y": "244.99999145507812"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_ds8f23",
                    "id": "SequenceFlow_ds8f23_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "719.9999966430664",
                            "y": "283.1649914550781"
                        },
                        {
                            "x": "720.00001953125",
                            "y": "308.83499908447266"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1tfp63t",
                    "id": "SequenceFlow_1tfp63t_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "720.00001953125",
                            "y": "385.1649914550781"
                        },
                        {
                            "x": "720.00001953125",
                            "y": "412.83499908447266"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_175zenl",
                    "id": "SequenceFlow_175zenl_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "720.00001953125",
                            "y": "489.1649914550781"
                        },
                        {
                            "x": "720.00001953125",
                            "y": "529.8349990844727"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1kz99y0",
                    "id": "SequenceFlow_1kz99y0_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "796.9799966430664",
                            "y": "568.0000219726562"
                        },
                        {
                            "x": "893",
                            "y": "568.0000228881836"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_id2vay",
                    "id": "SequenceFlow_id2vay_ve"
                }
            ]
        },
        "id": "Process_15f0kgf_ve"
    },
    "collaboration": {}
}