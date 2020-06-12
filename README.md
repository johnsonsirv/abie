<h1 align="center">ABIE</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-1.0.0-blue.svg?cacheSeconds=2592000" />
  <a href="https://github.com/johnsonsirv/abie#readme" target="_blank">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" />
  </a>
  <a href="https://github.com/johnsonsirv/abie/graphs/commit-activity" target="_blank">
    <img alt="Maintenance" src="https://img.shields.io/badge/Maintained%3F-yes-green.svg" />
  </a>
  <a href="https://github.com/johnsonsirv/abie/blob/master/LICENSE" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/github/license/johnsonsirv/abie" />
  </a>
  <a href="https://twitter.com/vokeugo" target="_blank">
    <img alt="Twitter: vokeugo" src="https://img.shields.io/twitter/follow/vokeugo.svg?style=social" />
  </a>
</p>

<br>

<p>
  <b>ABIE</b> - is an API-based Inference Engine that can be used in the diagnosis of sports related injuries. It uses forward chaining to provide inference based on multiple symptoms and bio-data. Knowledge is derived from a broad expert medical knowledge base, combined with data from other web services.
  
  In the result you receive an assessment of likely disease conditions based on relevant symptoms as well as possible lifestyle changes to adopt.

<b>ABIE</b> can be used to create new or enrich existing healthcare products and services with intelligent diagnostic insights.

</p>

![](https://github.com/johnsonsirv/abie/blob/master/docs/abie-architecture.PNG)

![](https://github.com/johnsonsirv/abie/blob/master/docs/abie-endpoints.PNG)

![](https://github.com/johnsonsirv/abie/blob/master/docs/abie-endpoints-2.PNG)

### Future implementations:

- Add support for NLP
- Track medical history

### Built with:

- Ruby 2.4.0
- Sinatra
- PostgreSQL
- JSON
- Infermedica API
- Heroku

### Usage with POSTMAN

ABIE is hosted on [Heroku](https://heroku.com) and can be tested using [Postman](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?hl=en) or any other REST client tool.

### Live URL: https://abren-api.herokuapp.com

![](https://github.com/johnsonsirv/abie/blob/master/docs/postman-injury.PNG)

![](https://github.com/johnsonsirv/abie/blob/master/docs/postman-symptoms.PNG)

![](https://github.com/johnsonsirv/abie/blob/master/docs/postman-post-diagnose.PNG)

![](https://github.com/johnsonsirv/abie/blob/master/docs/postman-diagnoses.PNG)

### Contributor(s)

[Victor Okeugo](https://angel.co/u/victorokeugo/)

- Github: [@johnsonsirv](https://github.com/johnsonsirv)
- Twitter: [@vokeugo](https://twitter.com/@vokeugo/)
- Email: [okeugo.victor.c@gmail.com]()

### Contributing

1. Fork it (https://github.com/johnsonsirv/abie/fork)
2. Create your feature branch (git checkout -b feature/[choose-a-name])
3. Commit your changes (git commit -m 'What this commit will fix/add')
4. Push to the branch (git push origin feature/[chosen name])
5. Create a new Pull Request
   > You can also create [issues](https://github.com/johnsonsirv/abie/issues)
