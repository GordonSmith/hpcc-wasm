# <a name="http_trigger">World http-trigger</a>


 - Imports:
    - interface `fermyon:spin/config`
    - interface `fermyon:spin/http-types`
    - interface `fermyon:spin/http`
 - Exports:
    - interface `fermyon:spin/inbound-http`

## <a name="fermyon:spin_config">Import interface fermyon:spin/config</a>


----

### Types

#### <a name="error">`variant error`</a>


##### Variant Cases

- <a name="error.provider">`provider`</a>: `string`
- <a name="error.invalid_key">`invalid-key`</a>: `string`
- <a name="error.invalid_schema">`invalid-schema`</a>: `string`
- <a name="error.other">`other`</a>: `string`
----

### Functions

#### <a name="get_config">`get-config: func`</a>


##### Params

- <a name="get_config.key">`key`</a>: `string`

##### Return values

- <a name="get_config.0"></a> result<`string`, [`error`](#error)>

## <a name="fermyon:spin_http_types">Import interface fermyon:spin/http-types</a>


----

### Types

#### <a name="http_status">`type http-status`</a>
`u16`
<p>
#### <a name="body">`type body`</a>
[`body`](#body)
<p>
#### <a name="headers">`type headers`</a>
[`headers`](#headers)
<p>
#### <a name="params">`type params`</a>
[`params`](#params)
<p>
#### <a name="uri">`type uri`</a>
`string`
<p>
#### <a name="method">`enum method`</a>


##### Enum Cases

- <a name="method.get">`get`</a>
- <a name="method.post">`post`</a>
- <a name="method.put">`put`</a>
- <a name="method.delete">`delete`</a>
- <a name="method.patch">`patch`</a>
- <a name="method.head">`head`</a>
- <a name="method.options">`options`</a>
#### <a name="request">`record request`</a>


##### Record Fields

- <a name="request.method">`method`</a>: [`method`](#method)
- <a name="request.uri">`uri`</a>: [`uri`](#uri)
- <a name="request.headers">`headers`</a>: [`headers`](#headers)
- <a name="request.params">`params`</a>: [`params`](#params)
- <a name="request.body">`body`</a>: option<[`body`](#body)>
#### <a name="response">`record response`</a>


##### Record Fields

- <a name="response.status">`status`</a>: [`http-status`](#http_status)
- <a name="response.headers">`headers`</a>: option<[`headers`](#headers)>
- <a name="response.body">`body`</a>: option<[`body`](#body)>
#### <a name="http_error">`enum http-error`</a>


##### Enum Cases

- <a name="http_error.success">`success`</a>
- <a name="http_error.destination_not_allowed">`destination-not-allowed`</a>
- <a name="http_error.invalid_url">`invalid-url`</a>
- <a name="http_error.request_error">`request-error`</a>
- <a name="http_error.runtime_error">`runtime-error`</a>
- <a name="http_error.too_many_requests">`too-many-requests`</a>
## <a name="fermyon:spin_http">Import interface fermyon:spin/http</a>


----

### Types

#### <a name="request">`type request`</a>
[`request`](#request)
<p>
#### <a name="response">`type response`</a>
[`response`](#response)
<p>
#### <a name="http_error">`type http-error`</a>
[`http-error`](#http_error)
<p>
----

### Functions

#### <a name="send_request">`send-request: func`</a>


##### Params

- <a name="send_request.req">`req`</a>: [`request`](#request)

##### Return values

- <a name="send_request.0"></a> result<[`response`](#response), [`http-error`](#http_error)>

## <a name="fermyon:spin_inbound_http">Export interface fermyon:spin/inbound-http</a>

----

### Types

#### <a name="request">`type request`</a>
[`request`](#request)
<p>
#### <a name="response">`type response`</a>
[`response`](#response)
<p>
----

### Functions

#### <a name="handle_request">`handle-request: func`</a>


##### Params

- <a name="handle_request.req">`req`</a>: [`request`](#request)

##### Return values

- <a name="handle_request.0"></a> [`response`](#response)

