# Resources

Free material for an arc's concept map.

Last checked: 2026-10-02. Every link answered and its title matched. Re-check
with `scripts/check_links.sh`, then update this date.

## Contents

- Software design and architecture
- Testing
- API development
- Agents and LLM applications
- Working with coding agents
- Usability and product thinking
- Shipping and sharing
- Writing about what was learned
- How learning works

## How to use this file

- Pick one resource per concept. A second one is for when the first did not land.
- Give the learner the link, where to start, and a question to answer while
  reading. Cap the reading at 20 minutes.
- Entries marked *look-up* are catalogs. Send the learner to one entry in them,
  never to the whole thing.
- For the exact API of a library, fetch its current documentation rather than
  working from memory.
- When a link is dead, or a resource turned out poor or excellent for the
  learner, edit this file.

## Software design and architecture

| Resource | Use it for |
|---|---|
| [Architecture Patterns with Python](https://www.cosmicpython.com/) (Percival and Gregory), free to read online | Repository, service layer, unit of work and dependency injection, built test-first in Python. Start with the [Introduction](https://www.cosmicpython.com/book/introduction), then only the chapter for the pattern at hand: [Repository](https://www.cosmicpython.com/book/chapter_02_repository), [Service Layer](https://www.cosmicpython.com/book/chapter_04_service_layer), [Unit of Work](https://www.cosmicpython.com/book/chapter_06_uow), [Dependency Injection](https://www.cosmicpython.com/book/chapter_13_dependency_injection) |
| [Python Design Patterns](https://python-patterns.guide/) (Brandon Rhodes) | Which classic patterns still earn their place in Python. Start with [The Composition Over Inheritance Principle](https://python-patterns.guide/gang-of-four/composition-over-inheritance/) |
| [Inversion of Control Containers and the Dependency Injection pattern](https://martinfowler.com/articles/injection.html) (Martin Fowler) | What dependency injection is and why it exists, from the article that named it. Read the opening example through "Inversion of Control" |
| [Catalog of Patterns of Enterprise Application Architecture](https://martinfowler.com/eaaCatalog/) (Martin Fowler), *look-up* | Short definitions of Unit of Work, Repository, Service Layer, Data Mapper, Gateway |
| [Hexagonal architecture](https://alistair.cockburn.us/hexagonal-architecture) (Alistair Cockburn) | Ports and adapters, from the original article |
| [The Clean Architecture in Python](https://www.youtube.com/watch?v=DJtef410XaM) (Brandon Rhodes, talk) | Keeping I/O at the edges so the logic in the middle stays plain and testable |
| [Boundaries](https://www.destroyallsoftware.com/talks/boundaries) (Gary Bernhardt, talk) | Functional core, imperative shell |
| [A Philosophy of Software Design](https://www.youtube.com/watch?v=bmSAYlu0NcY) (John Ousterhout, Talks at Google) | Deep versus shallow modules, and what makes an interface good |
| [Simple Made Easy](https://www.infoq.com/presentations/Simple-Made-Easy/) (Rich Hickey, talk) | Telling "simple" apart from "easy" when judging a design |
| [The Wrong Abstraction](https://sandimetz.com/blog/2016/1/20/the-wrong-abstraction) (Sandi Metz) | When duplication beats an abstraction. A five-minute read |
| [All the Little Things](https://www.youtube.com/watch?v=8bZh5LMaSmE) (Sandi Metz, talk) | Refactoring a tangled conditional into small objects, live |
| [Stop Writing Classes](https://www.youtube.com/watch?v=o9pEzgHorH0) (Jack Diederich, talk) | When a function is enough and a class is overhead |
| [Subclassing in Python Redux](https://hynek.me/articles/python-subclassing-redux/) (Hynek Schlawack) | When inheritance helps and when composition is the better tool |
| [PEP 544: Protocols](https://peps.python.org/pep-0544/) | Structural typing, and Protocol versus abstract base class. Read the rationale |
| [Beyond PEP 8](https://www.youtube.com/watch?v=wf-BqAjZb8M) (Raymond Hettinger, talk) | Turning correct but clumsy code into idiomatic Python |
| Refactoring Guru: [design patterns](https://refactoring.guru/design-patterns) and [code smells](https://refactoring.guru/refactoring/smells), *look-up* | One pattern or one smell, with a diagram |
| [C4 model](https://c4model.com/) | Drawing an architecture at four zoom levels |
| [Documenting Architecture Decisions](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions) (Michael Nygard) | Recording a design decision in one short page |
| [The Twelve-Factor App](https://12factor.net/) | Config, dependencies and processes for an app meant to be deployed. Start with [Config](https://12factor.net/config) |
| [The System Design Primer](https://github.com/donnemartin/system-design-primer), *look-up* | Caching, queues and load balancing, once scale becomes the question |

## Testing

| Resource | Use it for |
|---|---|
| pytest: [Get Started](https://docs.pytest.org/en/stable/getting-started.html) and [How to use fixtures](https://docs.pytest.org/en/stable/how-to/fixtures.html) | Writing and structuring tests |
| [The Practical Test Pyramid](https://martinfowler.com/articles/practical-test-pyramid.html) (Ham Vocke) | Deciding what to test at which level |
| [Test Double](https://martinfowler.com/bliki/TestDouble.html) and [Mocks Aren't Stubs](https://martinfowler.com/articles/mocksArentStubs.html) (Martin Fowler) | Fakes, stubs and mocks, and what each one costs. Test Double first; it is one screen |

## API development

| Resource | Use it for |
|---|---|
| [FastAPI Tutorial - User Guide](https://fastapi.tiangolo.com/tutorial/) | The primary source for FastAPI, one idea per page: [First Steps](https://fastapi.tiangolo.com/tutorial/first-steps/), [Request Body](https://fastapi.tiangolo.com/tutorial/body/), [Response Model](https://fastapi.tiangolo.com/tutorial/response-model/), [Handling Errors](https://fastapi.tiangolo.com/tutorial/handling-errors/), [Dependencies](https://fastapi.tiangolo.com/tutorial/dependencies/), [Dependencies with yield](https://fastapi.tiangolo.com/tutorial/dependencies/dependencies-with-yield/), [SQL Databases](https://fastapi.tiangolo.com/tutorial/sql-databases/), [Bigger Applications](https://fastapi.tiangolo.com/tutorial/bigger-applications/), [Testing](https://fastapi.tiangolo.com/tutorial/testing/), [Security](https://fastapi.tiangolo.com/tutorial/security/) |
| FastAPI beyond the tutorial | [Concurrency and async / await](https://fastapi.tiangolo.com/async/), [Lifespan Events](https://fastapi.tiangolo.com/advanced/events/), [Settings and Environment Variables](https://fastapi.tiangolo.com/advanced/settings/), [Testing Dependencies with Overrides](https://fastapi.tiangolo.com/advanced/testing-dependencies/), [Custom Response - HTML, Stream, File, others](https://fastapi.tiangolo.com/advanced/custom-response/) |
| [FastAPI Best Practices](https://github.com/zhanymkanov/fastapi-best-practices) (zhanymkanov) | Opinionated conventions from a production codebase: project structure, async routes, Pydantic, dependencies. Read the section matching the step |
| [Full Stack FastAPI Template](https://github.com/fastapi/full-stack-fastapi-template) | A complete FastAPI application to read as a reference |
| MDN: [Overview of HTTP](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/Overview) and [HTTP response status codes](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status) | What a request and a response are, and which status code means what |
| [Web API Design Best Practices](https://learn.microsoft.com/en-us/azure/architecture/best-practices/api-design) (Microsoft) | Resources, methods, status codes, pagination and versioning in one article |
| [Zalando RESTful API Guidelines](https://opensource.zalando.com/restful-api-guidelines/), *look-up* | A full rulebook, for settling one design question |
| [Stripe API: Errors](https://docs.stripe.com/api/errors) | An error contract worth imitating |
| [RFC 9457: Problem Details for HTTP APIs](https://www.rfc-editor.org/rfc/rfc9457.html) | The standard shape for an error body |
| [Pydantic: Models](https://pydantic.dev/docs/validation/latest/concepts/models/) | Validating data at the boundary |
| [SQLAlchemy Unified Tutorial](https://docs.sqlalchemy.org/en/20/tutorial/index.html) | Sessions, transactions and the 2.0 style |
| [Using server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events) (MDN) | Streaming a response to a browser |
| [OWASP API Security Top 10 (2023)](https://api-security.owasp.org/editions/2023/en/0x11-t10/) | What goes wrong once an API is public |

## Agents and LLM applications

| Resource | Use it for |
|---|---|
| [Building Effective AI Agents](https://www.anthropic.com/engineering/building-effective-agents) (Anthropic) | Workflows versus agents, and the case for the simplest thing that works |
| [Writing effective tools for AI agents](https://www.anthropic.com/engineering/writing-tools-for-agents) (Anthropic) | Designing the tools an agent calls |
| [Effective context engineering for AI agents](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents) (Anthropic) | Deciding what goes into the context window |
| [How we built our multi-agent research system](https://www.anthropic.com/engineering/multi-agent-research-system) (Anthropic) | When several agents help, and what coordinating them costs |
| [12-Factor Agents](https://github.com/humanlayer/12-factor-agents) (HumanLayer) | Principles for LLM-powered software you own end to end |
| [Agents](https://huyenchip.com/2025/01/07/agents.html) (Chip Huyen) | Tools, planning, failure modes, and how to evaluate an agent |
| [LLM Powered Autonomous Agents](https://lilianweng.github.io/posts/2023-06-23-agent/) (Lilian Weng) | The planning, memory and tool-use picture |
| [Building A Generative AI Platform](https://huyenchip.com/2024/07/25/genai-platform.html) (Chip Huyen) | The parts of an LLM application's architecture, added one at a time |
| [Patterns for Building LLM-based Systems & Products](https://eugeneyan.com/writing/llm-patterns/) (Eugene Yan), *look-up* | Evals, RAG, caching, guardrails, defensive UX, collecting feedback |
| [What We've Learned From A Year of Building with LLMs](https://applied-llms.org/) | Practitioner lessons, from tactical to strategic |
| [Contextual Retrieval](https://www.anthropic.com/engineering/contextual-retrieval) (Anthropic) | Improving retrieval with chunk context, hybrid search and reranking |
| Jason Liu: [Levels of Complexity: RAG Applications](https://jxnl.co/writing/2024/02/28/levels-of-complexity-rag-applications/) and [Systematically Improving Your RAG](https://jxnl.co/writing/2024/05/22/systematically-improving-your-rag/) | Growing a RAG application from the basics to observability and evals |
| Hamel Husain: [Your AI Product Needs Evals](https://hamel.dev/blog/posts/evals/), [A Field Guide to Rapidly Improving AI Products](https://hamel.dev/blog/posts/field-guide/), [AI Evals FAQ](https://hamel.dev/blog/posts/evals-faq/), [Using LLM-as-a-Judge](https://hamel.dev/blog/posts/llm-judge/) | Evaluating an LLM product, starting from looking at the data. Start with "Your AI Product Needs Evals" |
| [Demystifying evals for AI agents](https://www.anthropic.com/engineering/demystifying-evals-for-ai-agents) (Anthropic) | Evaluating agents specifically |
| [The lethal trifecta for AI agents](https://simonwillison.net/2025/Jun/16/the-lethal-trifecta/) (Simon Willison) | The security risk of combining private data, untrusted content and external communication |
| [LangGraph overview](https://docs.langchain.com/oss/python/langgraph/overview) | LangGraph's own documentation |

## Working with coding agents

| Resource | Use it for |
|---|---|
| [Best practices for Claude Code](https://code.claude.com/docs/en/best-practices) | Getting good work out of the agent. Start with "Give Claude a way to verify its work" and "Provide specific context in your prompts" |
| [Agentic Engineering Patterns](https://simonwillison.net/guides/agentic-engineering-patterns/) (Simon Willison) | Principles, testing with agents, and using agents to understand code. Start with "Principles" |
| [Here's how I use LLMs to help me write code](https://simonwillison.net/2025/Mar/11/using-llms-for-code/) (Simon Willison) | One experienced engineer's working method |
| [Vibe engineering](https://simonwillison.net/2025/Oct/7/vibe-engineering/) (Simon Willison) | Which engineering practices make coding agents productive |
| [The 70% problem](https://addyo.substack.com/p/the-70-problem-hard-truths-about) (Addy Osmani) | Why the last part of a feature still needs engineering knowledge |
| [How to do a code review](https://google.github.io/eng-practices/review/reviewer/) (Google) | Reviewing a diff, including one an agent wrote. Start with [What to look for in a code review](https://google.github.io/eng-practices/review/reviewer/looking-for.html) |
| [The /llms.txt file](https://llmstxt.org/) (Jeremy Howard) | A convention for publishing a site's documentation in a form a model can read. Worth checking for when fetching a library's docs |
| Claude Code docs: [Common workflows](https://code.claude.com/docs/en/common-workflows), [Skills](https://code.claude.com/docs/en/skills), [Subagents](https://code.claude.com/docs/en/sub-agents), [Output styles](https://code.claude.com/docs/en/output-styles) | The tool itself |

## Usability and product thinking

| Resource | Use it for |
|---|---|
| [10 Usability Heuristics for User Interface Design](https://www.nngroup.com/articles/ten-usability-heuristics/) (NN/g) | A checklist for judging any interface, an API or a CLI included |
| NN/g: [Usability Testing 101](https://www.nngroup.com/articles/usability-testing-101/), [Thinking Aloud](https://www.nngroup.com/articles/thinking-aloud-the-1-usability-tool/), [Why You Only Need to Test with 5 Users](https://www.nngroup.com/articles/why-you-only-need-to-test-with-5-users/) | Watching someone else use what was built. Start with Usability Testing 101 |
| [Steve Krug's downloads](https://sensible.com/download-files/) | Free scripts and checklists for running a usability test yourself |
| [Error-Message Guidelines](https://www.nngroup.com/articles/error-message-guidelines/) (NN/g) | Writing an error a user can act on |
| [Guidelines for Human-AI Interaction](https://www.microsoft.com/en-us/haxtoolkit/ai-guidelines/) (Microsoft HAX Toolkit) | 18 guidelines for AI features: at first use, during use, when the AI is wrong, over time |
| [People + AI Guidebook](https://pair.withgoogle.com/guidebook/) (Google PAIR) | Designing AI products around what people need |
| [The Shape of AI](https://www.shapeof.ai/) (Emily Campbell), *look-up* | A pattern library for AI interfaces |
| [Command Line Interface Guidelines](https://clig.dev/) | Making a CLI pleasant for people |
| [Laws of UX](https://lawsofux.com/), *look-up* | One-card summaries of design principles |
| [Learning about users and their needs](https://www.gov.uk/service-manual/user-research/start-by-learning-user-needs) (GOV.UK Service Manual) | Finding out what users need before building |
| [Shape Up](https://basecamp.com/shapeup) (Basecamp), free to read online | Shaping a feature and building it in slices. Start with [Get One Piece Done](https://basecamp.com/shapeup/3.2-chapter-11) and [Map the Scopes](https://basecamp.com/shapeup/3.3-chapter-12) |
| [Readme Driven Development](https://tom.preston-werner.com/2010/08/23/readme-driven-development.html) (Tom Preston-Werner) | Writing how something is used before building it |

## Shipping and sharing

| Resource | Use it for |
|---|---|
| FastAPI: [Deployments Concepts](https://fastapi.tiangolo.com/deployment/concepts/) and [FastAPI in Containers - Docker](https://fastapi.tiangolo.com/deployment/docker/) | What deploying a web application involves. Start with Deployments Concepts |
| [Build and share a containerized application](https://docs.docker.com/get-started/tutorials/run-an-app/) (Docker) | A first container |
| [Streamlit Community Cloud](https://docs.streamlit.io/deploy/streamlit-community-cloud), [Hugging Face Spaces](https://huggingface.co/docs/hub/spaces-overview), [Render: Deploy a FastAPI App](https://render.com/docs/deploy-fastapi), [Fly.io: Run a FastAPI app](https://docs.fly.io/python/frameworks/fastapi) | Hosts for putting a demo in front of other people |
| [Make a README](https://www.makeareadme.com/) | What a stranger needs on the first page |

## Writing about what was learned

| Resource | Use it for |
|---|---|
| [What to blog about](https://simonwillison.net/2022/Nov/6/what-to-blog-about/) (Simon Willison) | Permission to write small: things learned, projects built |
| Julia Evans: [Blog about what you've struggled with](https://jvns.ca/blog/2021/05/24/blog-about-what-you-ve-struggled-with/) and [Some blogging myths](https://jvns.ca/blog/2023/06/05/some-blogging-myths/) | Choosing a topic, and dropping the idea that the writer must be an expert |
| [Learn In Public](https://swyx.io/learn-in-public) (swyx) | Why to publish while still learning |
| Paul Graham: [Write Simply](https://paulgraham.com/simply.html) and [How to Write Usefully](https://paulgraham.com/useful.html) | Plain sentences, and saying something true that is worth saying |
| [Technical Writing One](https://developers.google.com/tech-writing/one) (Google), free course | Sentences, paragraphs and lists for technical readers |
| [Diátaxis](https://diataxis.fr/) | Telling a tutorial from a how-to guide from reference from explanation |

## How learning works

| Resource | Use it for |
|---|---|
| [Launching Solveit, the antidote to AI fatigue](https://www.answer.ai/posts/2025-10-01-solveit-full.html) (Johno Whitaker, Answer.AI) | The method this skill's step loop borrows: Pólya's four moves applied to code, small pieces with each output checked, and looking back. Also the case against accepting large generated code you do not understand |
| [A New Chapter for fast.ai: How To Solve It With Code](https://www.answer.ai/posts/2024-11-07-solveit.html) (Jeremy Howard), and the [background discussion with Hamel Husain](https://www.youtube.com/watch?v=e9tL_Eg3fpM) | Dialog engineering: working with an AI a line or two at a time instead of asking for hundreds of lines |
| [How to Solve It](https://en.wikipedia.org/wiki/How_to_Solve_It) (George Pólya; the Wikipedia summary) | The four moves: understand the problem, devise a plan, carry out the plan, look back |
| [nbdev](https://nbdev.fast.ai/) (fast.ai) | Exploratory programming in notebooks, with code, tests and prose kept in one place |
| [How AI assistance impacts the formation of coding skills](https://www.anthropic.com/research/AI-assistance-coding-skills) (Anthropic, 2026) | The evidence behind this skill's method. In a trial of 52 engineers learning a new library, the AI-assisted group scored 50% on comprehension against 67% for those who coded by hand, with the largest gap in debugging. Those who asked conceptual questions, or had code explained alongside it, did well |
| [Why books don't work](https://andymatuschak.org/books/) (Andy Matuschak) | Why reading alone rarely produces understanding |
| [The Feynman Technique](https://fs.blog/feynman-technique/) (Farnam Street) | Explaining something simply as the test of understanding it |
| [Teach Yourself Programming in Ten Years](https://www.norvig.com/21-days.html) (Peter Norvig) | Patience, and deliberate practice |
| [Teach Yourself Computer Science](https://teachyourselfcs.com/) | Which fundamentals to study, and from what, when a gap is bigger than one feature |
