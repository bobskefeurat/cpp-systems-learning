# SOURCES

## Purpose
Workspace for candidate sources and selection before they become curated resources in `RESOURCES.md`.

## Selection Criteria (v0)
- Technical correctness
- Clarity and pedagogical value
- Relevance to current concepts/gates
- Stability/maintenance (when relevant)
- Reasonable signal-to-noise

## Risk Marking (v0)
Mark candidates as risky if they have:
- Unclear author or weak credibility
- Outdated content for the current topic
- Overly copy-paste-focused material without explanation
- Terminology likely to confuse beginners

## Source Entry Template
- Source ID:
- Title:
- Type (book, article, video, documentation, course, etc):
- Author/organization:
- URL:
- Area:
- Strengths:
- Risks/limitations:
- Candidate for `RESOURCES.md` (yes/no):
- Reviewed date:

## Candidate Sources

- Source ID: S-001
- Title: Modern C++ Programming Course (Modern-CPP-Programming)
- Type (book, article, video, documentation, course, etc): Course / GitHub repository
- Author/organization: Federico Busato
- URL: https://github.com/federico-busato/Modern-CPP-Programming
- Area: Broad modern C++ curriculum (fundamentals to advanced topics; later-phase roadmap/reference)
- Strengths: Large structured curriculum; useful later as a roadmap and reference; covers tooling, debugging, design, and later systems-oriented topics
- Risks/limitations: Explicitly aimed at learners already familiar with C and OOP; too broad/advanced for the early gates in `Phase 0: C++ Foundations`; licensing/redistribution rights are unclear without explicit verification
- Candidate for `RESOURCES.md` (yes/no): no
- Reviewed date: 2026-03-02

- Source ID: S-002
- Title: LearnCpp.com - "Learn C++" tutorials
- Type (book, article, video, documentation, course, etc): Tutorial site
- Author/organization: LearnCpp.com
- URL: https://www.learncpp.com/
- Area: `Phase 0: C++ Foundations` spine (compiler setup, warnings, syntax/I-O, stack/heap, references, classes, intro RAII)
- Strengths: Beginner-friendly, coherent progression, directly maps to the early gates in `Phase 0: C++ Foundations`, includes compiler configuration and diagnostic discipline
- Risks/limitations: Not official documentation; contains exercise solutions; content is not licensed for redistribution, so link-only use is safest
- Candidate for `RESOURCES.md` (yes/no): yes
- Reviewed date: 2026-03-02

- Source ID: S-003
- Title: MIT OpenCourseWare 6.096 - Introduction to C++ (IAP 2011) - Lecture Notes
- Type (book, article, video, documentation, course, etc): University course notes (PDFs)
- Author/organization: MIT OpenCourseWare / MIT EECS
- URL: https://ocw.mit.edu/courses/6-096-introduction-to-c-january-iap-2011/pages/lecture-notes/
- Area: Supplemental fundamentals + exercises (functions, pointers, classes, memory management)
- Strengths: Reputable university source; strong overlap with the early gates in `Phase 0: C++ Foundations`; useful for targeted repetition and alternative explanations
- Risks/limitations: Older (2011) and may emphasize raw pointers/new/delete earlier than desired; some embedded materials may have separate rights; link-only is safest unless license handling is deliberate
- Candidate for `RESOURCES.md` (yes/no): yes
- Reviewed date: 2026-03-02

- Source ID: S-004
- Title: Walkthrough: Compiling a Native C++ Program on the Command Line (MSVC)
- Type (book, article, video, documentation, course, etc): Official documentation / walkthrough
- Author/organization: Microsoft Learn (MSVC documentation)
- URL: https://learn.microsoft.com/en-us/cpp/build/walkthrough-compiling-a-native-cpp-program-on-the-command-line?view=msvc-170
- Area: `Gate 0: Compile, Run, and Basic I/O` Windows baseline (toolchain setup, compile/link/run, reading diagnostics)
- Strengths: Official, practical Windows guidance; reinforces compilation as an explicit step; introduces warning levels and common setup failures
- Risks/limitations: Walkthrough style and sample code may not match repo style rules; limited to single-file builds; link-only
- Candidate for `RESOURCES.md` (yes/no): yes
- Reviewed date: 2026-03-02

- Source ID: S-005
- Title: MSVC compiler warning options - /W0.../W4, /Wall, /WX
- Type (book, article, video, documentation, course, etc): Official documentation / reference
- Author/organization: Microsoft Learn (MSVC documentation)
- URL: https://learn.microsoft.com/en-us/cpp/build/reference/compiler-option-warning-level?view=msvc-170
- Area: `Gate 0: Compile, Run, and Basic I/O` warnings and flags (MSVC)
- Strengths: Canonical definitions of MSVC warning levels and "warnings as errors"; supports a strict "warnings matter" policy
- Risks/limitations: Reference-style; learners still need a repo-defined required-flags policy; link-only
- Candidate for `RESOURCES.md` (yes/no): yes
- Reviewed date: 2026-03-02

- Source ID: S-006
- Title: Using C++ and WSL in VS Code
- Type (book, article, video, documentation, course, etc): Official tutorial
- Author/organization: Microsoft (Visual Studio Code documentation)
- URL: https://code.visualstudio.com/docs/cpp/config-wsl
- Area: `Gate 0: Compile, Run, and Basic I/O` Windows/WSL setup (GCC/GDB), repeatable build tasks
- Strengths: Practical Windows-friendly path to a Linux toolchain; produces a repeatable build command; supports early debugging workflow
- Risks/limitations: Sample code introduces extra concepts that may distract absolute beginners; warning flags are not enabled by default; link-only
- Candidate for `RESOURCES.md` (yes/no): yes
- Reviewed date: 2026-03-02

- Source ID: S-007
- Title: Using the GNU Compiler Collection (GCC) - online manual
- Type (book, article, video, documentation, course, etc): Official documentation / manual
- Author/organization: Free Software Foundation (GCC project)
- URL: https://gcc.gnu.org/onlinedocs/gcc/
- Area: `Gate 0: Compile, Run, and Basic I/O` compile model + flags reference (g++, -std=, -Wall/-Wextra/-Wpedantic/-Werror)
- Strengths: Authoritative source of truth for GCC command-line semantics; supports strict warning and standard-selection policies
- Risks/limitations: Manual can overwhelm beginners; GCC flags vary by version; GFDL license adds redistribution complexity, so link-only is safest
- Candidate for `RESOURCES.md` (yes/no): yes
- Reviewed date: 2026-03-02

- Source ID: S-008
- Title: cppreference.com (C++ language and standard library reference)
- Type (book, article, video, documentation, course, etc): Reference site
- Author/organization: cppreference.com
- URL: https://en.cppreference.com/w/
- Area: Long-term C++ reference (storage duration, lifetime, references, RAII, standard library)
- Strengths: Stable, searchable reference; precise definitions for lifetime/ownership-related concepts; explicit CC BY-SA license page exists
- Risks/limitations: Not beginner pedagogy; easy to misread without guidance; should be used via curated deep links; link-only is still preferred
- Candidate for `RESOURCES.md` (yes/no): yes
- Reviewed date: 2026-03-02

- Source ID: S-009
- Title: Bjarne Stroustrup - C++ Style and Technique FAQ
- Type (book, article, video, documentation, course, etc): FAQ / articles
- Author/organization: Bjarne Stroustrup
- URL: https://www.stroustrup.com/bs_faq2.html
- Area: `Gate 2: Values, References, and Parameter Passing` conceptual authority (value vs reference; pointers vs references; basic program structure)
- Strengths: High-value guidance on parameter passing tradeoffs; credible checkpoint reference for common misconceptions
- Risks/limitations: Not a structured beginner course; may include older conventions; no explicit open license on-page, so link-only is safest
- Candidate for `RESOURCES.md` (yes/no): yes
- Reviewed date: 2026-03-02
