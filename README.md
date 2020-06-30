# Fun with apis!

This application is a API-only application. You are free to query it at [this
address](https://funwithapis.herokuapp.com/).

Query the different fields to find the secret of the Magic Cow!

It's dangerous out there, you might need this:


```sh
curl localhost:3000/say
  -H 'Content-Type: application/json'
  -d '{"message": "Hello world!"}'
| ruby -r json -e "print JSON.parse(STDIN.read)['message']"
```

This application has been built from an idea of [RapidAPI](https://rapidapi.com/blog/how-to-build-an-api-in-ruby/).
