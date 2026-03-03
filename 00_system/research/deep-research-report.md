> Research artifact: this file is background material, not an active foundation document.
> It may contain historical references to files that have since moved or been archived.

# Repo Constraints

- The programme’s primary language is **C++**, chosen specifically to build deep systems understanding (memory, lifetimes, ownership, and later cache/concurrency), not convenience-first shortcuts. (Source: `00_system/archive/FOUNDATION_SKETCH.md`, `00_system/foundation/GOALS.md`)
- The AI is a **strictly controlled teacher/coach**, not a solution generator: it may explain, question, diagnose, and suggest tests, but must not provide complete solutions or “answer keys” by default. (Source: `00_system/foundation/AI_TEACHER_POLICY.md`, `00_system/foundation/RULEBOOK.md`, `00_system/archive/FOUNDATION_SKETCH.md`)
- **Hints are levelled** (direction → narrowing → more concrete substep → answer key only on explicit request), and refusals must cite the rule and redirect to a next step. (Source: `00_system/foundation/AI_TEACHER_POLICY.md`, `00_system/foundation/RULEBOOK.md`)
- Progression is **competency-based** (not time-based), with **binary gate outcomes** (`pass` / `not pass`). (Source: `00_system/archive/FOUNDATION_SKETCH.md`, `00_system/foundation/GOALS.md`, `00_system/foundation/RULEBOOK.md`, `00_system/foundation/GLOSSARY.md`)
- The **rubric is diagnostic only**: it guides feedback and repetition, but does not unlock progression. (Source: `00_system/foundation/RUBRIC.md`, `00_system/archive/FOUNDATION_SKETCH.md`)
- **Warnings matter**: warnings are treated as signals to handle, not ignore; refactoring is part of training after getting working code when required by a task/gate. (Source: `00_system/foundation/RULEBOOK.md`)
- External resources must be **curated before the AI may reference them**: candidates go to `SOURCES.md`, promoted items get stable IDs in `RESOURCES.md`, and concept-to-resource mappings live in `RESOURCE_MAP.md`. (Source: `00_system/archive/FOUNDATION_SKETCH.md`, `00_system/resources/SOURCES.md`, `00_system/resources/RESOURCES.md`, `00_system/resources/RESOURCE_MAP.md`)
- The repo’s early Phase 0 gates are explicitly centred on: **Gate 0** (syntax/compilation/warnings/basic I/O), **Gate 1** (stack vs heap), **Gate 2** (value vs reference, functions, parameter passing), **Gate 3** (simple class with correct lifetime, basic RAII thinking). (Source: `00_system/archive/FOUNDATION_SKETCH.md`)
- The concept map is expected to stay **short and practical**, usually **1–2 resources per concept**. (Source: `00_system/resources/RESOURCE_MAP.md`)
- Foundation governance aims for low drift: **“one file = one responsibility area”**, with an explicit reading order and role separation across the foundation docs. (Source: `00_system/archive/FOUNDATION_SKETCH.md`, `00_system/foundation/README.md`, `00_system/foundation/GLOSSARY.md`)

# Research Goal

This repo needs a small, curated set of beginner-friendly but technically correct C++ resources that directly support Phase 0 (Gates 0–3): (a) compiling locally with warnings enabled (Windows-friendly), (b) basic syntax and I/O without “copy-paste learning”, and (c) early lifetime reasoning (stack/heap, storage duration, reference/value semantics, and a first RAII-shaped class). It does **not** need advanced templates, metaprogramming, deep STL mastery, performance tuning, or large-scale project/tooling ecosystems yet—those can wait until after Gate 3 stabilises.

# Recommended Candidate Set

## Candidate: LearnCpp (tutorial site)

- Title: LearnCpp.com – “Learn C++” tutorials
- Type: Tutorial site / written lessons + quizzes
- Author/organization: LearnCpp.com (site authors/editors; “Alex” is the primary visible author on many lessons)
- URL: https://www.learncpp.com/
- Concept area: Beginner C++ syntax & I/O; compiler setup; warnings; basic functions; references; stack vs heap; classes/constructors/destructors; introductory RAII framing
- Best-fit gate(s): Gate 0 / Gate 1 / Gate 2 / Gate 3
- Learner fit: Beginner
- Why it fits this repo:
  - Fact: It explicitly targets learners with no prior programming experience and includes early material on compiler configuration, warnings, and language standards.
  - Inference: It is one of the few coherent, end-to-end beginner tracks that also spends time on “how to compile” and common mistakes, which aligns with Gate 0 and the repo’s anti-shortcut posture.
- Strengths:
  - Strong coverage of Phase 0 topics in one place (compiler setup → I/O → references → memory basics → classes/destructors/RAII).
  - Contains targeted lessons that map cleanly to the repo’s gates (e.g., warnings configuration; stack vs heap; pass-by-reference; destructors/RAII).
  - Practical focus on diagnostics and avoiding undefined behaviour (useful for the repo’s “warnings are signals” rule).
- Risks/limitations:
  - Not “official documentation”; some lessons are older and have been revised over time, so the repo should pick specific chapters/pages as the curated “official route” to reduce wandering.
  - Includes exercise solutions, which can conflict with the repo’s “no answer keys by default” ethos; mitigated by telling learners to treat site solutions as “only after an honest attempt” (a repo policy decision).
- Licensing/reuse note:
  - The site explicitly allows converting pages to PDF for private use but instructs not to distribute those conversions; this implies **link-only use** is safest, and mirroring content into the repo is not appropriate without permission.
  - Recommended: link to specific lessons, do not copy text into the repo.
- Candidate for `RESOURCES.md`: yes
- Priority: high
- Suggested role: primary

## Candidate: MIT OpenCourseWare 6.096 (lecture notes)

- Title: MIT OpenCourseWare – 6.096 “Introduction to C++” (January IAP 2011) – Lecture Notes
- Type: University course notes (PDF lecture notes + assignments)
- Author/organization: Massachusetts Institute of Technology (MIT OpenCourseWare); instructors listed on course page
- URL: https://ocw.mit.edu/courses/6-096-introduction-to-c-january-iap-2011/pages/lecture-notes/
- Concept area: Structured fundamentals: functions, arrays/strings, pointers, classes, memory management; useful supplemental exercises
- Best-fit gate(s): Gate 0 / Gate 1 / Gate 2 / Gate 3
- Learner fit: Beginner (fast-paced)
- Why it fits this repo:
  - Fact: It is explicitly an introductory course intended for learners with little programming background, and it includes dedicated lectures on pointers, classes, and memory management.
  - Inference: The lecture-note format can complement LearnCpp by offering a second explanation style and additional exercises for targeted repetition.
- Strengths:
  - Reputable university source; coherent scope that overlaps strongly with Gates 0–3.
  - Provides separate lectures for “Pointers”, “Classes”, and “Memory management” that can be assigned as remediation when a gate fails.
  - Includes assignments (useful for competency-based repetition).
- Risks/limitations:
  - The course is from 2011; it may lean toward older idioms and earlier exposure to raw pointers/new/delete than this repo may want at Gate 3 (depending on how strongly you want “RAII-first” messaging).
  - Some embedded third-party materials on MIT OCW can have different rights (MIT OCW generally signals this).
- Licensing/reuse note:
  - MIT OCW course pages link to a Creative Commons licence (the course page’s licence link resolves to CC BY-NC-SA 4.0). Even with CC licensing, this repo should still prefer **linking** rather than mirroring PDFs unless you intentionally want to manage attribution + NC/SA obligations and confirm each file’s rights.
- Candidate for `RESOURCES.md`: yes
- Priority: medium
- Suggested role: secondary

## Candidate: MSVC command-line “Hello World” build walkthrough

- Title: Walkthrough: Compiling a Native C++ Program on the Command Line
- Type: Official documentation / walkthrough
- Author/organization: Microsoft Learn (MSVC documentation)
- URL: https://learn.microsoft.com/en-us/cpp/build/walkthrough-compiling-a-native-cpp-program-on-the-command-line?view=msvc-170
- Concept area: Windows toolchain basics; compiling a single-file program; reading compiler output; basic linker behaviour; introducing warning levels on MSVC
- Best-fit gate(s): Gate 0
- Learner fit: Beginner
- Why it fits this repo:
  - Fact: It directly teaches how to confirm the Developer Command Prompt environment, run `cl`, compile a .cpp file, and interpret basic compiler/linker output on Windows.
  - Inference: This is a strong “no excuses” baseline for Gate 0 in a Windows-first environment because it reduces IDE magic and reinforces compilation as an explicit step.
- Strengths:
  - Official, Windows-native guidance (useful when the environment is PowerShell/Windows).
  - Encourages using warning levels (mentions `/W3` or `/W4`) and calls out common setup failures (“cl not recognised”).
  - Fits a competency gate: the learner can prove they can compile and run locally.
- Risks/limitations:
  - The sample uses `using namespace std;` and the walkthrough suggests copy/paste into Notepad; the repo may want stricter style rules and more deliberate typing to train diagnostic reading (this is manageable by adding repo-level guardrails).
  - Focuses on single translation unit builds; multi-file builds and build systems are out of scope (fine for Gate 0).
- Licensing/reuse note:
  - Microsoft Learn content is copyrighted and governed by Microsoft’s site terms; treat as **link-only** unless Microsoft explicitly grants reuse rights for your use case.
- Candidate for `RESOURCES.md`: yes
- Priority: high
- Suggested role: primary

## Candidate: MSVC warning-level and warning-as-error options reference

- Title: `/w`, `/W0`…`/W4`, `/Wall`, `/WX` (Warning level) – MSVC compiler option reference
- Type: Official documentation / reference
- Author/organization: Microsoft Learn (MSVC documentation)
- URL: https://learn.microsoft.com/en-us/cpp/build/reference/compiler-option-warning-level?view=msvc-170
- Concept area: Warnings and compiler flags (MSVC); “treat warnings as errors”; warning levels; warning suppression at the command line
- Best-fit gate(s): Gate 0
- Learner fit: Beginner-intermediate
- Why it fits this repo:
  - Fact: It precisely defines how MSVC warning levels work and what `/WX` does, supporting the repo rule “warnings are signals to handle, not ignore”.
  - Inference: Having the official “what does `/W4` mean?” link reduces ambiguity and discourages folklore-based setups.
- Strengths:
  - Canonical MSVC reference for warning levels and warning behaviour.
  - Supports a clean gate policy: “Gate 0 requires compiling with `/W4` (and possibly `/WX` once stable).”
- Risks/limitations:
  - It is reference-style, not pedagogy; learners may need a short repo-written explanation of “which flags we require and why”.
  - `/Wall` can be noisy; learners may misinterpret “more warnings is always better” if not guided.
- Licensing/reuse note:
  - Microsoft Learn content: safest as **link-only**.
- Candidate for `RESOURCES.md`: yes
- Priority: high
- Suggested role: primary

## Candidate: VS Code + WSL C++ setup tutorial

- Title: Using C++ and WSL in VS Code
- Type: Official tutorial (tooling walkthrough)
- Author/organization: Microsoft (Visual Studio Code documentation)
- URL: https://code.visualstudio.com/docs/cpp/config-wsl
- Concept area: Windows-to-WSL setup; installing GCC/GDB; building and debugging; basic tasks.json build pipeline
- Best-fit gate(s): Gate 0
- Learner fit: Beginner-intermediate
- Why it fits this repo:
  - Fact: It walks through installing build tools inside WSL, compiling with `g++`, and creating a repeatable build task (tasks.json) instead of one-off commands.
  - Inference: It provides a relatively clean baseline that avoids MSVC-vs-GCC differences by standardising early work inside Linux tooling while still being Windows-user-friendly.
- Strengths:
  - Practical “get compiling now” path for Windows users who prefer Linux toolchains.
  - Introduces an explicit build command and executable output (“compile and run” loop), matching Gate 0 needs.
  - Sets up debugging early (optional but aligned with the repo’s debugging/process dimension in the rubric).
- Risks/limitations:
  - The sample “hello world” uses `vector<string>` and a range-based for loop; for absolute beginners, that may introduce extra concepts too early unless the repo explicitly says “ignore the container details; focus on compiling and I/O”.
  - Does not emphasise warning flags by default; the repo must add a Gate 0 requirement to extend the build args with `-Wall -Wextra -Wpedantic` (and possibly `-Werror` later).
- Licensing/reuse note:
  - VS Code documentation is copyrighted; use as **link-only**.
- Candidate for `RESOURCES.md`: yes
- Priority: high
- Suggested role: primary

## Candidate: GCC online manual (compile + dialect + warnings)

- Title: Using the GNU Compiler Collection (GCC) – online manual
- Type: Official documentation / manual
- Author/organization: Free Software Foundation (GCC project documentation)
- URL: https://gcc.gnu.org/onlinedocs/gcc/
- Concept area: Compilation model; invoking `g++`; selecting language standard (`-std=`); warning options (`-Wall`, `-Wextra`, `-Wpedantic`, `-Werror`); diagnostic controls
- Best-fit gate(s): Gate 0 / Reference-only
- Learner fit: Intermediate (as a manual), but usable early as a reference
- Why it fits this repo:
  - Fact: It is the canonical source for what GCC command-line options mean (including warning and dialect controls).
  - Inference: Even if learners primarily follow LearnCpp/VS Code, this manual is the “source of truth” when the repo wants to justify or precisely define required flags for Gate 0.
- Strengths:
  - Authoritative and detailed; ideal for settling disagreements about what a flag does.
  - Contains dedicated sections for warnings and for C++ dialect selection, which directly supports “warnings are signals” and “choose a standard” discipline.
- Risks/limitations:
  - Manual-style documentation can overwhelm beginners; should be used via curated, specific links/sections (not “go read the manual”).
  - GCC behaviour and available flags can vary by version; learners may encounter flags not present on older compilers.
- Licensing/reuse note:
  - The manual explicitly states it is under the GNU Free Documentation License (GFDL) v1.3 or later **with invariant sections and cover texts**; copying/mirroring requires compliance with those terms. Link-only use avoids this complexity.
- Candidate for `RESOURCES.md`: yes
- Priority: medium
- Suggested role: reference-only

## Candidate: cppreference (C++ language/library reference)

- Title: cppreference.com (C++ language and standard library reference)
- Type: Reference site
- Author/organization: cppreference.com community / maintainers (MediaWiki-based)
- URL: https://en.cppreference.com/w/
- Concept area: Long-term C++ lookup/reference; storage duration; object lifetime; references; RAII; standard library details
- Best-fit gate(s): Reference-only (with selective Gate 1–3 support)
- Learner fit: Beginner-intermediate (as a lookup tool), not as a first tutorial
- Why it fits this repo:
  - Fact: It provides precise definitions and cross-links for core language concepts that show up in Gates 1–3 (lifetime, storage duration, reference declaration, etc.).
  - Inference: Having one stable reference reduces “random blog post” drift and provides a consistent anchor when the AI needs to point learners to formal definitions after they form an initial mental model.
- Strengths:
  - Broad coverage and high searchability; acts as the repo’s “default long-term reference”.
  - Has dedicated pages for storage duration and lifetime, which align with the repo’s lifetime/ownership focus.
  - Explicit licence page exists (CC BY-SA 3.0), making reuse constraints clear (even if the repo still prefers link-only).
- Risks/limitations:
  - Not written as a beginner tutorial; readers can easily get lost or misinterpret formal wording without guidance.
  - Some pages can be too detailed for Phase 0; the resource map should point to only the minimal relevant pages.
- Licensing/reuse note:
  - cppreference’s licence page states Creative Commons Attribution-ShareAlike 3.0 (CC BY-SA 3.0). That allows reuse with attribution + share-alike obligations; but link-only remains the simplest and lowest-risk approach for this repo.
- Candidate for `RESOURCES.md`: yes
- Priority: high
- Suggested role: reference-only

## Candidate: Stroustrup C++ Style and Technique FAQ (parameter passing + basics)

- Title: Bjarne Stroustrup’s C++ Style and Technique FAQ
- Type: Expert-authored FAQ / article collection
- Author/organization: Bjarne Stroustrup
- URL: https://www.stroustrup.com/bs_faq2.html
- Concept area: Beginner-adjacent guidance on “very simple programs”; call-by-value vs call-by-reference; pointers vs references; basic reasoning about writing/reading code
- Best-fit gate(s): Gate 2 / Reference-only
- Learner fit: Beginner-intermediate
- Why it fits this repo:
  - Fact: The FAQ includes direct, high-signal guidance on parameter passing trade-offs (value vs (const) reference vs pointer) and discusses beginner program structure.
  - Inference: This is useful as a “checkpoint authority” when learners form incorrect heuristics (e.g., “always pass by reference”) and need a short corrective explanation.
- Strengths:
  - Extremely high credibility and signal density for specific conceptual questions.
  - Helps enforce systems-thinking style trade-offs rather than cargo-cult rules.
- Risks/limitations:
  - Not a structured curriculum; learners may cherry-pick sections out of context.
  - Does not provide the step-by-step compilation/toolchain practice needed for Gate 0.
- Licensing/reuse note:
  - No explicit open licence statement is provided on the page itself; safest is **link-only** (do not mirror text into the repo without permission).
- Candidate for `RESOURCES.md`: yes
- Priority: medium
- Suggested role: reference-only

## Candidate: Federico Busato – Modern C++ Programming (existing repo candidate)

- Title: Modern C++ Programming Course (C++03/11/14/17/20/23/26)
- Type: Course material / slides and compiled “book” (GitHub repository + hosted site)
- Author/organization: Federico Busato
- URL: https://github.com/federico-busato/Modern-CPP-Programming
- Concept area: Broad modern C++ course: fundamentals through advanced topics (templates, translation units, debugging/testing, optimisation, design)
- Best-fit gate(s): Later
- Learner fit: Intermediate
- Why it fits this repo:
  - Fact: It is explicitly positioned as an open-access course aiming to bring learners with prior C and OOP familiarity to C++ proficiency, and it includes both fundamentals and advanced semantics/topics.
  - Inference: It can serve as a later-phase “roadmap” or secondary reference once Phase 0 fundamentals (especially lifetime reasoning) are stable.
- Strengths:
  - Broad, structured curriculum with extensive slide material; includes topics the repo likely wants later (translation units, tooling, debugging, optimisation).
  - Has a “Preparation” chapter and early content covering compilation and basic I/O, which can be useful after Gate 0 is already stable.
- Risks/limitations:
  - The course explicitly assumes prior C and object-oriented programming familiarity; that makes it risky for Gate 0 beginners and may accelerate learners into advanced topics too early.
  - The repo page’s roadmap mentions “fully-open source the material” as a future step; reuse rights may be unclear without an explicit licence file. That increases the risk of mirroring any content into this repo.
- Licensing/reuse note:
  - Licence status is not clearly presented in the repository root listing/README; treat as **link-only** unless a clear licence is verified.
- Candidate for `RESOURCES.md`: no
- Priority: low
- Suggested role: fallback

# Top Promotions

LearnCpp (tutorial site) should be promoted first because it is the strongest single “Phase 0 spine”: it covers the exact conceptual areas of Gates 0–3, includes compiler configuration and warning discipline, and is written at a true beginner level. It also supports competency-based repetition because it is broken into small, assignable lessons.

MSVC command-line “Hello World” build walkthrough should be promoted early because it provides an official, Windows-native way to prove Gate 0 competence: the learner can demonstrate they can set up a working compiler environment, compile, link, and run without IDE magic. This aligns with the repo’s preference for fundamentals and explicit understanding.

VS Code + WSL C++ setup tutorial should be promoted early because it offers a realistic Windows-friendly baseline that uses a Linux toolchain (g++/gdb) while still supporting a Windows workflow. It is also operationally useful for Gate 0 because it yields a repeatable build command (tasks.json) and encourages a compile-run-debug loop.

MSVC warning-level options reference should be promoted early because Gate 0 explicitly includes “warnings” as a core skill. This page is the canonical “what does /W4 and /WX mean?” anchor that supports the repo’s rule that warnings must be handled rather than ignored.

cppreference should be promoted early but marked as reference-only because it can be the repo’s long-term C++ lookup standard. Even in Phase 0, it is useful for correcting misconceptions about storage duration, lifetime, and references—but it should not be used as the first explanation.

MIT OCW 6.096 should be promoted as a secondary resource (not the primary spine) because it provides credible alternative explanations and extra practice, but its 2011 era and potential older idioms make it less suitable to be the learner’s single canonical path.

# Draft Resource Map

| Concept / problem | When it appears | Best primary candidate | Best secondary candidate | Notes |
|---|---|---|---|---|
| Compilation and build basics | First contact with Gate 0; learner can’t compile, can’t run, can’t locate toolchain | MSVC command-line “Hello World” build walkthrough | VS Code + WSL C++ setup tutorial | Pick one baseline toolchain for Phase 0 (MSVC on Windows *or* GCC in WSL) to reduce cognitive load. |
| Warnings and flags | Gate 0; learner ignores warnings or doesn’t know how to enable them | MSVC warning-level and warning-as-error options reference | GCC online manual (compile + dialect + warnings) | Add a repo-level policy of required flags for Gate 0 (MSVC: at least `/W4`; GCC/Clang: at least `-Wall -Wextra -Wpedantic`). Consider delaying “warnings as errors” until the learner can interpret warnings reliably. |
| Basic I/O | Gate 0; learner stuck on `iostream`, `std::cout`, `std::cin`, formatting | LearnCpp (tutorial site) | MIT OCW 6.096 (lecture notes) | Keep I/O scope minimal for Gate 0: printing, reading basic types, and handling simple input errors. |
| Stack vs heap | Gate 1; learner confuses “stack vs heap” with “pointer vs reference” or with runtime memory layout myths | LearnCpp (tutorial site) | cppreference (C++ language/library reference) | Teach this as *storage duration + lifetime* first, and only then discuss stack/heap as typical implementations/segments. |
| Value vs reference | Gate 2; learner mixes up copying, aliasing, and “&” meaning | LearnCpp (tutorial site) | Stroustrup C++ Style and Technique FAQ | Curate specific pages/sections: references, pass-by-value vs pass-by-reference, and “what changes at call site.” Avoid drifting into rvalue references/move semantics this early. |
| Basic RAII | Gate 3; learner can write a class but breaks lifetime/ownership invariants or forgets destructor responsibilities | LearnCpp (tutorial site) | cppreference (C++ language/library reference) | Gate 3 should stay “simple RAII thinking”: deterministic cleanup tied to object lifetime. Avoid jumping into smart pointers unless the gate explicitly demands it. |

# Gaps and Risks

Even with the shortlist, there are a few operational gaps that will matter for making Gates 0–3 run smoothly.

The biggest gap is the absence of a single, beginner-friendly, *official* “recommended warnings profile” across toolchains. MSVC documentation precisely defines `/W4` and `/WX`, and GCC defines `-Wall`/`-Wextra`/`-Wpedantic`, but neither set is presented as a unified, beginner pedagogy. LearnCpp fills that gap pedagogically, but it is not an official spec source. This means the repo should decide and document a minimal required flag set for Gate 0 per toolchain, then cite the official docs only for “what the flags mean”.

A second risk is toolchain drift. If learners alternate between MSVC on Windows, GCC in WSL, and “random IDE defaults”, warning sets and diagnostics will differ, and beginners can mistake tool differences for language differences. If Phase 0 is truly competency-based, the most reliable approach is to pick a baseline toolchain per learner (or per cohort) and enforce it consistently in Gate 0.

A third weak spot is lifetime reasoning: “stack vs heap” resources often oversimplify into “stack is fast, heap is slow” or “references live on the stack”. LearnCpp does a good job relative to most tutorials, and cppreference is precise, but cppreference can be too formal for beginners. The repo may still need a short, repo-authored explainer that defines the precise terms used in this curriculum (object lifetime, storage duration, scope) and then uses the curated links as reinforcement.

Finally, exercise alignment is only partially solved. LearnCpp and MIT OCW include exercises/assignments, but they are not designed for your specific binary gates. You may still need small, gate-aligned practice prompts that are written in the repo (which is allowed) and reference these curated resources for remediation.

# Decisions Still Needed

- Decide the Phase 0 **baseline toolchain**: MSVC on Windows, GCC in WSL, or “either but chosen once per learner” (and then enforce that choice to reduce diagnostic drift).
- Decide the **required C++ language standard** for Phase 0 (e.g., C++20) and how strictly to disable vendor extensions (MSVC conformance mode, GCC `-pedantic` vs `-Wpedantic`, etc.).
- Decide the Gate 0 **warnings policy**: required warning level/flags, and whether “treat warnings as errors” is required immediately or only after a learner demonstrates they can interpret warnings.
- Decide a repo-wide **licensing/reuse policy** for external materials:
  - Strict link-only by default, even for CC-licensed PDFs?
  - Whether to store local copies of CC-licensed resources and manage attribution/NC/SA obligations explicitly.
- Decide how the repo will handle **external exercise solutions** (e.g., LearnCpp solutions):
  - Are learners allowed to read them at all during gates?
  - If yes, under what rule (only after two attempts; only after writing an explanation; etc.).
- Decide how `RESOURCE_MAP.md` will encode **toolchain branches** (MSVC vs GCC/WSL) without bloating the map:
  - One row with notes (“if MSVC do X; if GCC do Y”), or separate rows per toolchain.
- Decide whether “Modern-CPP-Programming” is treated as a later-phase backbone (curriculum reference) or just a “nice-to-have” link; this affects whether it ever moves into `RESOURCES.md`.

# Modern-CPP-Programming Assessment

- Should it remain in `SOURCES.md`?
  - Yes, but it should be explicitly marked as **later-phase / not for true beginners** and “licence unclear until verified”. It is a legitimate candidate source, but not an early-gate primary.
- For which phase/gates is it actually suitable?
  - Best fit is **Later** (post-Phase 0), once Gate 0–3 fundamentals are stable and the learner can resist being pulled into templates/advanced semantics too early.
  - It may provide useful reference material around compilation/tooling and basic concepts, but its own stated target audience (prior C + OOP familiarity) makes it risky as a Phase 0 spine.
- Is it too advanced for Gate 0 / early Phase 0?
  - Yes for most learners. The material is broad and includes advanced topics; even early chapters assume enough background that a beginner can easily miscalibrate what matters for Gate 0 competence.
- Should it be promoted early, later, or kept only as a secondary/later resource?
  - Keep it **later** (or “secondary/later”), not promoted early.
  - Additionally: do not mirror content into the repo without verifying an explicit licence. Use link-only until the rights situation is clear.

# Copy-Paste-Ready Appendix for SOURCES.md

- Source ID: S-002
- Title: LearnCpp.com – “Learn C++” tutorials
- Type (book, article, video, documentation, course, etc): Tutorial site
- Author/organization: LearnCpp.com
- URL: https://www.learncpp.com/
- Area: Phase 0 spine (compiler setup, warnings, syntax/I-O, stack/heap, references, classes, intro RAII)
- Strengths: Beginner-friendly, coherent progression, directly maps to Gates 0–3, includes compiler configuration and diagnostic discipline.
- Risks/limitations: Not official documentation; contains exercise solutions; content is not licensed for redistribution (link-only recommended).
- Candidate for `RESOURCES.md` (yes/no): yes
- Reviewed date: 2026-03-02

- Source ID: S-003
- Title: MIT OpenCourseWare 6.096 – Introduction to C++ (IAP 2011) – Lecture Notes
- Type (book, article, video, documentation, course, etc): University course notes (PDFs)
- Author/organization: MIT OpenCourseWare / MIT EECS
- URL: https://ocw.mit.edu/courses/6-096-introduction-to-c-january-iap-2011/pages/lecture-notes/
- Area: Supplemental fundamentals + exercises (functions, pointers, classes, memory management)
- Strengths: Reputable university source; strong overlap with Gates 0–3; useful for targeted repetition and alternative explanations.
- Risks/limitations: Older (2011) and may emphasise raw pointers/new/delete earlier than desired; some embedded materials may have separate rights; link-only recommended unless licence handling is deliberate.
- Candidate for `RESOURCES.md` (yes/no): yes
- Reviewed date: 2026-03-02

- Source ID: S-004
- Title: Walkthrough: Compiling a Native C++ Program on the Command Line (MSVC)
- Type (book, article, video, documentation, course, etc): Official documentation / walkthrough
- Author/organization: Microsoft Learn (MSVC documentation)
- URL: https://learn.microsoft.com/en-us/cpp/build/walkthrough-compiling-a-native-cpp-program-on-the-command-line?view=msvc-170
- Area: Gate 0 Windows baseline (toolchain setup, compile/link/run, reading diagnostics)
- Strengths: Official, practical Windows guidance; reinforces compilation as an explicit step; introduces warning levels and common setup failures.
- Risks/limitations: Walkthrough style and sample code may not match repo style rules; limited to single-file builds; link-only.
- Candidate for `RESOURCES.md` (yes/no): yes
- Reviewed date: 2026-03-02

- Source ID: S-005
- Title: MSVC compiler warning options – /W0…/W4, /Wall, /WX
- Type (book, article, video, documentation, course, etc): Official documentation / reference
- Author/organization: Microsoft Learn (MSVC documentation)
- URL: https://learn.microsoft.com/en-us/cpp/build/reference/compiler-option-warning-level?view=msvc-170
- Area: Gate 0 warnings and flags (MSVC)
- Strengths: Canonical definitions of MSVC warning levels and “warnings as errors”; supports a strict “warnings matter” policy.
- Risks/limitations: Reference-style; learners still need a repo-defined “required flags” policy; link-only.
- Candidate for `RESOURCES.md` (yes/no): yes
- Reviewed date: 2026-03-02

- Source ID: S-006
- Title: Using C++ and WSL in VS Code
- Type (book, article, video, documentation, course, etc): Official tutorial
- Author/organization: Microsoft (Visual Studio Code documentation)
- URL: https://code.visualstudio.com/docs/cpp/config-wsl
- Area: Gate 0 Windows/WSL setup (GCC/GDB), repeatable build tasks
- Strengths: Practical Windows-friendly path to a Linux toolchain; produces a repeatable build command (tasks.json); supports early debugging workflow.
- Risks/limitations: Introduces extra C++ concepts in sample code (vector/string) that may distract absolute beginners; does not enable warning flags by default; link-only.
- Candidate for `RESOURCES.md` (yes/no): yes
- Reviewed date: 2026-03-02

- Source ID: S-007
- Title: Using the GNU Compiler Collection (GCC) – online manual
- Type (book, article, video, documentation, course, etc): Official documentation / manual
- Author/organization: Free Software Foundation (GCC project)
- URL: https://gcc.gnu.org/onlinedocs/gcc/
- Area: Gate 0 compile model + flags reference (g++, -std=, -Wall/-Wextra/-Wpedantic/-Werror)
- Strengths: Authoritative “source of truth” for GCC command-line semantics; supports strict warning and standard-selection policies.
- Risks/limitations: Manual can overwhelm beginners; GCC flags vary by version; documentation licence is GFDL with specific conditions (link-only recommended to avoid redistribution obligations).
- Candidate for `RESOURCES.md` (yes/no): yes
- Reviewed date: 2026-03-02

- Source ID: S-008
- Title: cppreference.com (C++ language and standard library reference)
- Type (book, article, video, documentation, course, etc): Reference site
- Author/organization: cppreference.com
- URL: https://en.cppreference.com/w/
- Area: Long-term C++ reference (storage duration, lifetime, references, RAII, standard library)
- Strengths: Stable, searchable reference; precise definitions for lifetime/ownership-related concepts; explicit CC BY-SA licence page exists.
- Risks/limitations: Not beginner pedagogy; easy to misread without guidance; should be used via curated deep links; link-only preferred.
- Candidate for `RESOURCES.md` (yes/no): yes
- Reviewed date: 2026-03-02

- Source ID: S-009
- Title: Bjarne Stroustrup – C++ Style and Technique FAQ
- Type (book, article, video, documentation, course, etc): FAQ / articles
- Author/organization: Bjarne Stroustrup
- URL: https://www.stroustrup.com/bs_faq2.html
- Area: Gate 2 conceptual authority (value vs reference; pointers vs references; basic program structure)
- Strengths: High-value guidance on parameter passing trade-offs; credible “checkpoint” reference for common misconceptions.
- Risks/limitations: Not a structured beginner course; may include older conventions; no explicit open licence on-page (link-only).
- Candidate for `RESOURCES.md` (yes/no): yes
- Reviewed date: 2026-03-02

- Source ID: S-010
- Title: Modern C++ Programming Course (Modern-CPP-Programming)
- Type (book, article, video, documentation, course, etc): Course / GitHub repository (slides + compiled PDF)
- Author/organization: Federico Busato
- URL: https://github.com/federico-busato/Modern-CPP-Programming
- Area: Broad modern C++ curriculum (fundamentals to advanced topics; tooling; optimisation; design)
- Strengths: Large structured curriculum; potentially useful later as a roadmap and reference; includes many later-repo areas (debugging/testing, translation units, optimisation).
- Risks/limitations: Explicitly aimed at learners already familiar with C and OOP; too broad/advanced for Gates 0–3; licence/redistribution rights unclear without an explicit licence file (link-only).
- Candidate for `RESOURCES.md` (yes/no): no
- Reviewed date: 2026-03-02
