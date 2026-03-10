// Imports
#import "@preview/brilliant-cv:3.1.2": letter
#let metadata = toml("./metadata.toml")
#let letter-language = sys.inputs.at("language", default: none)
#let metadata = if letter-language != none {
  metadata + (language: letter-language)
} else {
  metadata
}


#show: letter.with(
  metadata,
  sender-address: "Redacted\n8050 Zürich",
  recipient-name: "Google DeepMind",
  recipient-address: "Europaallee 36\n8004 Zürich",
  date: datetime.today().display(),
  subject: "Application for Software Engineer, Personalization, Gemini App, Google DeepMind",
)

Dear Hiring Team,

I write to express strong interest in the Software Engineer, Personalization role for the Gemini App. I want to contribute to making the Gemini App the most personal assistant by building reliable, measurable personalization features that work end to end in production.

In my current role at Adnovum AG I develop and operate server-critical applications and full stack features in an agile environment. I build services and coordinate integrations across databases, backend APIs and frontend surfaces using Java, TypeScript, Angular and CI/CD. For my bachelor thesis Sketch-AI I am currently designing and training a deep learning model that interprets standardized technical drawings and ran large-scale training jobs on HPC infrastructure. I also helped build an AI legal document platform (ZHAW × Walder Wyss) that uses RAG and LangChain to enable semantic search and automated summarization. I implemented scalable document ingestion with PostgreSQL, Qdrant, and containerized services, and I integrated Azure OpenAI to generate answers from legal PDFs. These projects gave me practical experience deploying ML and LLM-based features to production, defining evaluation criteria, and iterating on metrics-driven improvements.

I am drawn to the Personalization team because the role combines model-driven research with product-quality engineering. The chance to own features from hypothesis and evaluation to deployment fits how I work. I set clear metrics and build tooling to measure quality. I enjoy close collaboration with research scientists and product partners to translate experimental ideas into reliable user-facing behavior. My technical stack (Python, TensorFlow/PyTorch, LangChain, container orchestration and cloud CI/CD) matches the position's requirements. My part-time professional experience while finishing my BSc at the ZHAW School of Engineering taught me to balance rapid iteration with careful testing and observability. I am available to start in September and already based in Zurich.

Thank you for considering my application. I look forward to the opportunity to discuss how I can contribute to personalization efforts on the Gemini App and would welcome an interview at your convenience.


#v(1.5em)
Sincerely,

Noel Fischer