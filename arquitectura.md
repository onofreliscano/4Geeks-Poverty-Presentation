┌────────────────────────────┐
│        LOCAL DEV           │
│                            │
│  Streamlit App (Python)    │
│  Obsidian (Markdown)       │
└─────────────┬──────────────┘
              │
              │ git push
              ▼
┌────────────────────────────┐
│          GITHUB            │
│                            │
│  Repo: poverty-app         │
│  Repo: presentation        │
│  Repo: jupyter-runtime     │
└─────────────┬──────────────┘
              │
              │ trigger on push
              ▼
┌────────────────────────────┐
│        CLOUD BUILD         │
│                            │
│  Build Docker images       │
│  Deploy services           │
└─────────────┬──────────────┘
              │
      ┌───────┼──────────────┐
      │       │              │
      ▼       ▼              ▼
┌──────────┐ ┌──────────┐ ┌──────────────┐
│ CLOUD    │ │ CLOUD    │ │ CLOUD        │
│ RUN      │ │ RUN      │ │ RUN          │
│ APP      │ │ JUPYTER  │ │ PRESENTATION │
│          │ │          │ │              │
│ Streamlit│ │ Notebook │ │ Static HTML  │
│ Inference│ │ EDA/Train│ │ Reveal.js    │
└─────┬────┘ └─────┬────┘ └──────┬───────┘
      │            │             │
      │ read model │ write model │ serve HTML
      ▼            ▼             ▼
┌────────────────────────────────────────┐
│        GOOGLE CLOUD STORAGE (GCS)      │
│                                        │
│  - CSV datasets                        │
│  - Notebooks (.ipynb)                  │
│  - Trained models (.pkl)               │
│  - App assets                          │
│  - Presentation export (HTML)          │
└────────────────────────────────────────┘
