#include <cstdlib>
#include <cstring>
#include <stdio.h>
#include <stdlib.h>

#include <http_trigger.h>

int main(int argc, char **argv)
{
    printf("content-type: text/plain\n\n");
    printf("Hello from %s\n", getenv("SERVER_SOFTWARE"));
    printf("argc: %d\n", argc);
    fermyon_spin_inbound_http_response_t response;
    exports_fermyon_spin_inbound_http_handle_request((fermyon_spin_inbound_http_request_t *)&argv[1], &response);
}

extern "C" void exports_fermyon_spin_inbound_http_handle_request(fermyon_spin_inbound_http_request_t *req, fermyon_spin_inbound_http_response_t *response)
{
    http_trigger_string_t header_name;
    http_trigger_string_dup(&header_name, "foo");

    http_trigger_string_t header_value;
    http_trigger_string_dup(&header_value, "bar");

    auto header = static_cast<http_trigger_tuple2_string_string_t *>(
        malloc(sizeof(http_trigger_tuple2_string_string_t)));

    header->f0 = header_name;
    header->f1 = header_value;

    auto body_string = "Hello, Fermyon!\n";
    auto body_length = strlen(body_string);
    auto body = static_cast<uint8_t *>(malloc(body_length));
    memcpy(body, body_string, body_length);

    response->status = 200;
    response->headers.is_some = true;
    response->headers.val.ptr = header;
    response->headers.val.len = 1;
    response->body.is_some = true;
    response->body.val.ptr = body;
    response->body.val.len = body_length;
}
