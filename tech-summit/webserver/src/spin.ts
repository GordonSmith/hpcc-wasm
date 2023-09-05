import { HandleRequest, HttpRequest, HttpResponse } from "@fermyon/spin-sdk"

const encoder = new TextEncoder();

let counter = 0;

export const handleRequest: HandleRequest = async function (request: HttpRequest): Promise<HttpResponse> {
  switch (request.uri) {
    case "/random":
      return {
        status: 200,
        body: encoder.encode(`${++counter} - ${Math.random()}`).buffer
      };
    case "/":
      return {
        status: 200,
        body: encoder.encode(`Action '${request.uri}' unsported, try /random`).buffer
      };
  }

  return {
    status: 200,
    body: encoder.encode(`Unknown URI:  ${request.uri}\n\n${JSON.stringify(request, undefined, 2)}`).buffer
  };
}
