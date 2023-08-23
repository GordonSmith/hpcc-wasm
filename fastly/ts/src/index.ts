//! Default Compute@Edge template program.

/// <reference types="@fastly/js-compute" />
// import { CacheOverride } from "fastly:cache-override";
// import { Logger } from "fastly:logger";
import { env } from "fastly:env";
import { includeBytes } from "fastly:experimental";
import { Octokit } from "@octokit/core";
import { query } from "./sqlAgent";

// Load a static file as a Uint8Array at compile time.
// File path is relative to root of project, not to this file
const welcomePage = includeBytes("./client/index.html");
const welcomeLib = includeBytes("./dist/index.js");
const welcomeCss = includeBytes("./dist/index.css");

// The entry point for your application.
//
// Use this fetch event listener to define your main request handling logic. It
// could be used to route based on the request properties (such as method or
// path), send the request to a backend, make completely new requests, and/or
// generate synthetic responses.

addEventListener("fetch", (event) => event.respondWith(handleRequest(event)));

async function handleRequest(event: FetchEvent) {
  // Log service version
  console.log("FASTLY_SERVICE_VERSION:", env('FASTLY_SERVICE_VERSION') || 'local');

  // Get the client request.
  let req = event.request;

  // Filter requests that have unexpected methods.
  if (!["HEAD", "GET", "PURGE"].includes(req.method)) {
    return new Response("This method is not allowed", {
      status: 405,
    });
  }

  let url = new URL(req.url);

  // If request is to the `/` path...
  if (url.pathname == "/") {
    // Below are some common patterns for Compute@Edge services using JavaScript.
    // Head to https://developer.fastly.com/learning/compute/javascript/ to discover more.

    // Create a new request.
    // let bereq = new Request("http://example.com");

    // Add request headers.
    // req.headers.set("X-Custom-Header", "Welcome to Compute@Edge!");
    // req.headers.set(
    //   "X-Another-Custom-Header",
    //   "Recommended reading: https://developer.fastly.com/learning/compute"
    // );

    // Create a cache override.
    // To use this, uncomment the import statement at the top of this file for CacheOverride.
    // let cacheOverride = new CacheOverride("override", { ttl: 60 });

    // Forward the request to a backend.
    // let beresp = await fetch(req, {
    //   backend: "backend_name",
    //   cacheOverride,
    // });

    // Remove response headers.
    // beresp.headers.delete("X-Another-Custom-Header");

    // Log to a Fastly endpoint.
    // To use this, uncomment the import statement at the top of this file for Logger.
    // const logger = new Logger("my_endpoint");
    // logger.log("Hello from the edge!");

    // Send a default synthetic response.
    return new Response(welcomePage, {
      status: 200,
      headers: new Headers({
        "Content-Type": "text/html; charset=utf-8",
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "GET, POST, OPTIONS",
        "Access-Control-Allow-Headers": "Content-Type",
        "Access-Control-Max-Age": "86400s"

      }),
    });
  } else if (url.pathname == "/dist/index.js") {
    return new Response(welcomeLib, {
      status: 200,
      headers: new Headers({ "Content-Type": "application/javascript; charset=utf-8" }),
    });
  } else if (url.pathname == "/dist/index.css") {
    return new Response(welcomeCss, {
      status: 200,
      headers: new Headers({ "Content-Type": "text/css; charset=utf-8" }),
    });
  } else if (url.pathname == "/test") {
    const data = await test(req);
    return new Response(JSON.stringify(data), {
      status: 200,
      headers: new Headers({ "Content-Type": "application/json; charset=utf-8" }),
    });
  } else if (url.pathname == "/sql") {
    const data = await query();
    return new Response(JSON.stringify(data), {
      status: 200,
      headers: new Headers({ "Content-Type": "application/json; charset=utf-8" }),
    });
  }

  // Catch all other requests and return a 404.
  return new Response("The page you requested could not be found", {
    status: 404,
  });
}

const octokit = new Octokit({
  auth: "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",
});

async function test(req: Request) {

  // const url = "https://api.github.com/GordonSmith?backend=github";
  const data = await octokit.request("GET /repos/{owner}/{repo}/contents/{path}", {
    owner: "GordonSmith",
    repo: "vscode-ecl",
    path: "ecl-sample/notebooks/test.eclnb",
    request: {
      backend: "github",
    }
  }).then((response: any) => {
    return JSON.parse(atob(response.data.content));
  }).catch(error => {
    console.error(error);
    return { error: error.message }
  });

  return data;
  // const url = 'https://api.github.com/users/GordonSmith';
  // const accessToken = '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'; // Replace with your GitHub access token

  // const headers = {
  //   Authorization: `Bearer ${accessToken}`,
  // };

  // const data = await fetch(url, {
  //   headers,
  //   backend: "github"
  // }).then(response => response.text())
  //   .then(data => {
  //     return data;
  //   })
  //   .catch(error => {
  //     console.error(error);
  //     return { error: error.message }
  //   });

  // return data

}
