%dw 2.0
output application/json
---
{
    correlationId : attributes.headers.correlationId,
    businessProcessName: flow.name,
    flowName: flow.name,  
    source: Mule::p('application.name'),
    target: Mule::p('application.target'),
    httpMethod: attributes.method,
    message: "Received the orders details from the request",
    businessObject: payload
}
