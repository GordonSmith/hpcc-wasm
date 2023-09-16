//! Default Compute@Edge template program.

use fastly::http::{header, Method, StatusCode};
use fastly::{mime, ConfigStore, Error, Request, Response};

fn gh_fetch(path: &str) -> Result<Response, Error> {
    let global = ConfigStore::open("global");
    let gh_actor = global.get("gh_actor").unwrap();
    let gh_token = global.get("gh_token").unwrap();

    let url = format!(
        "https://api.github.com/repos/{}/{}/contents/{}?ref=WIP",
        gh_actor, "hpcc-wasm", path
    );

    let mut bereq = Request::get(url)
        .with_header("User-Agent", "fastly::http")
        .with_header("Accept", "application/vnd.github+json")
        .with_header("Authorization", format!("Bearer {}", gh_token))
        .with_header("X-GitHub-Api-Version", "2022-11-28")
        .with_ttl(60);

    let mut beresp = bereq.send("github")?;

    return Ok(beresp);
    // return Ok(format!("Bearer {}", gh_token));
}

#[fastly::main]
fn main(req: Request) -> Result<Response, Error> {
    // Log service version
    println!(
        "FASTLY_SERVICE_VERSION: {}",
        std::env::var("FASTLY_SERVICE_VERSION").unwrap_or_else(|_| String::new())
    );

    // Filter request methods...
    match req.get_method() {
        // Block requests with unexpected methods
        &Method::POST | &Method::PUT | &Method::PATCH | &Method::DELETE => {
            return Ok(Response::from_status(StatusCode::METHOD_NOT_ALLOWED)
                .with_header(header::ALLOW, "GET, HEAD, PURGE")
                .with_body_text_plain("This method is not allowed\n"))
        }

        // Let any other requests through
        _ => (),
    };

    // Pattern match on the path...
    match req.get_path() {
        // If request is to the `/` path...
        "/" => Ok(Response::from_status(StatusCode::OK)
            .with_content_type(mime::TEXT_HTML_UTF_8)
            .with_body(include_str!("../index.html"))),

        "/index.html" => Ok(Response::from_status(StatusCode::OK)
            .with_content_type(mime::TEXT_HTML_UTF_8)
            .with_body(include_str!("../index.html"))),

        "/dist/index.js" => Ok(Response::from_status(StatusCode::OK)
            .with_content_type(mime::TEXT_JAVASCRIPT)
            .with_body(include_str!("../dist/index.js"))),

        "/dist/index.css" => Ok(Response::from_status(StatusCode::OK)
            .with_content_type(mime::TEXT_CSS_UTF_8)
            .with_body(include_str!("../dist/index.css"))),

        "/esbuild" => {
            Ok(Response::from_status(StatusCode::OK).with_content_type(mime::TEXT_PLAIN_UTF_8))
        }

        "/list" => {
            let path = req
                .get_query_parameter("path")
                .unwrap_or_else(|| "fastly/ts/docs");
            Ok(gh_fetch(path).unwrap())
        }

        "/fetch" => {
            let path = req
                .get_query_parameter("path")
                .unwrap_or_else(|| "fastly/ts/docs/home.md");

            Ok(gh_fetch(path).unwrap())
        }

        // Catch all other requests and return a 404.
        _ => Ok(Response::from_status(StatusCode::NOT_FOUND)
            .with_body_text_plain("The page you requested could not be found\n")),
    }
}
