# Monzo Crawler

## Requirements

- Given a URL, fetch all other URLs on that page that are on the same domain and print them out
- Do not use existing web scraping tools
- Complete within 4 hours

My solution is a background worker that consumes URLs from a queue (in this case [Sidekiq](https://github.com/sidekiq/sidekiq), although in the real world likely SQS). When a URL is consumed, a HTTP request is made to it and all other URLs on that page are extracted. URLs from different domains or those that have already been processed are discarded. Those that remain are added onto the queue.

This is the design of the system I wanted:

![System design](./docs/system.png "System design")

## Trade offs

Given the 4 hour window I had to make some sacrifices:

- The queue choice is not ideal (Redis backed and no proper DLQ)
- All non-200 status codes are swallowed
- There's no retry mechanism or back-off
  - 429/5xx statuses could be enqueued again as there's a good chance it will succeed in the future
  - 401/403/404 should continue to swallow errors as we're unlikely to succeed in the future
- All redireects are blindly followed
- There's no concept of a job id so that multiple domains can be crawlled (or the same domain crawlled multiple times)
- I used Ruby, sorry

Sacrifices that are not related to the time window:

- The system is fully asynchronous and there's no callback when it is complete

## Usage

I've included a basic docker setup as I'm guessing you won't have Ruby configured.

First, start the worker:

```
$ docker-compose up
```

In a seperate terminal session, kick off a job to crawl a site:

```
$ docker-compose run worker ./bin/crawl https://monzo.com
```

You will see the output in the worker logs.

## Running the tests

```
$ docker-compose run worker bundle exec rspec
```

## Running the linter

```
$ docker-compose run worker bundle exec rubocop
```
