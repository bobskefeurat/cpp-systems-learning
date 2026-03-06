# Learner-facing reading coverage audit for Phase 1 core language and object model

## Executive verdict

**gc101 Numeric Types and Safety**: **covered by LearnCpp**. LearnCpp provides learner-safe explanations and examples for signed vs unsigned reasoning, signed overflow and undefined behaviour framing, numeric conversions (including narrowing), “usual arithmetic conversions” (at a “bounded tasks” level), and floating‑point precision plus safer comparison techniques (absolute + relative epsilon). citeturn42search12turn42search1turn42search0turn27search1turn39view0

**gc102 Aggregates and Language Organisation**: **covered by LearnCpp**. LearnCpp covers program-defined types (including structs), aggregates and aggregate initialisation, enumerations (unscoped and scoped), and namespaces with a learner-first narrative and examples. citeturn26search0turn24view0turn24view1turn24view2turn24view3turn24view4turn24view5

**gc103 Function Surface and Callables**: **needs new companion source** (primarily for **lambdas as Phase 1 reading**). LearnCpp’s lambda lessons are accurate and high-quality, but their *teaching setup* relies heavily on `<algorithm>` and `std::array` examples (e.g., `std::find_if`, `std::sort`, iterators), which can introduce prerequisite drift if your Phase 1 does not already include STL algorithms/iterators/containers. citeturn28view0turn28view3turn40search1turn40search0  
**Macros/preprocessing**: should be **narrowed**; macro *programming* should be deferred (teach only `#include` + header guards + “what the preprocessor is”). LearnCpp + ISO C++ FAQ are sufficient at that limited scope. citeturn25view7turn25view9turn37view1turn37view2

**gc104 Special Members and Dynamic Object Model**: **covered by LearnCpp + existing companion sources**. LearnCpp provides substantial learner-safe coverage of copy constructor/copy control basics, `this`, inheritance, virtual dispatch, operator overloading, and functors. Use cppreference as *reference-only* reinforcement for “rule of three/five/zero” framing and terminology. citeturn41search2turn41search8turn0search2turn26search2turn21search0turn0search3turn12search0turn26search3turn37view3

### How verdicts were determined

A cluster was treated as **“covered by LearnCpp”** when LearnCpp provides: a coherent learning narrative, examples that don’t pull in unstated prerequisites for bounded tasks, and explicit safety guidance for common failure modes (undefined behaviour, narrowing, float equality pitfalls, signed/unsigned hazards, etc.). citeturn39view0turn42search0turn42search1turn41search2  
A cluster was treated as **“needs new companion source”** when LearnCpp is accurate but likely to cause **Phase 1 scope creep** (notably lambdas demonstrated via `<algorithm>` + containers), or when learners would otherwise have to rely on dense reference pages to bridge the gap. citeturn28view0turn40search1

## Detailed source table

### gc101 Numeric Types and Safety

| Cluster ID | Concept area | Verdict | Recommended primary reading source | Exact page/lesson URLs | Recommended secondary/reference source | Exact page/lesson URLs | Learner level fit | Why this source fits | Risks / limitations | Should be added to curated resources? (yes/no) |
|---|---|---|---|---|---|---|---|---|---|---|
| gc101 | signed vs unsigned reasoning; overflow; conversions; arithmetic conversions; FP precision & comparison | covered by LearnCpp | LearnCpp | https://www.learncpp.com/cpp-tutorial/signed-integers/ citeturn42search12<br>https://www.learncpp.com/cpp-tutorial/unsigned-integers-and-why-to-avoid-them/ citeturn42search1<br>https://www.learncpp.com/cpp-tutorial/narrowing-conversions-list-initialization-and-constexpr-initializers/ citeturn42search0<br>https://www.learncpp.com/cpp-tutorial/arithmetic-conversions/ citeturn27search1turn42search3<br>https://www.learncpp.com/cpp-tutorial/relational-operators-and-floating-point-comparisons/ citeturn39view0 | entity["book","C++ Core Guidelines","isocpp safety guidelines"] (good safety rules, not first teaching), plus cppreference (good reference, dense) | https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines (see ES.100–ES.107 “Arithmetic”) citeturn20view1turn37view0<br>https://en.cppreference.com/w/cpp/language/usual_arithmetic_conversions.html citeturn42search2 | beginner → early-intermediate | LearnCpp explicitly teaches the pitfalls your tasks will likely trigger (signed overflow UB, unsigned wraparound surprises, narrowing via list-init, float equality pitfalls, workable abs+rel epsilon comparisons). citeturn42search12turn42search1turn42search0turn39view0 | LearnCpp intentionally simplifies “usual arithmetic conversions”; if tasks require corner cases of ranks/extended integer types, learners will need deeper reference reading (cppreference), which is not learner-first. citeturn27search1turn42search2 | **Yes** (Core Guidelines “Arithmetic” as a short safety supplement); cppreference remains reference-only |

### gc102 Aggregates and Language Organisation

| Cluster ID | Concept area | Verdict | Recommended primary reading source | Exact page/lesson URLs | Recommended secondary/reference source | Exact page/lesson URLs | Learner level fit | Why this source fits | Risks / limitations | Should be added to curated resources? (yes/no) |
|---|---|---|---|---|---|---|---|---|---|---|
| gc102 | program-defined types; enums; structs; namespaces; aggregates | covered by LearnCpp | LearnCpp | https://www.learncpp.com/cpp-tutorial/introduction-to-program-defined-user-defined-types/ citeturn26search0<br>https://www.learncpp.com/cpp-tutorial/introduction-to-structs-members-and-member-selection/ citeturn24view0<br>https://www.learncpp.com/cpp-tutorial/struct-aggregate-initialization/ citeturn24view1<br>https://www.learncpp.com/cpp-tutorial/unscoped-enumerations/ citeturn24view2<br>https://www.learncpp.com/cpp-tutorial/scoped-enumerations-enum-classes/ citeturn24view3<br>https://www.learncpp.com/cpp-tutorial/naming-collisions-and-an-introduction-to-namespaces/ citeturn24view5<br>https://www.learncpp.com/cpp-tutorial/user-defined-namespaces-and-the-scope-resolution-operator/ citeturn24view4 | cppreference (reference-only) | (Enums) https://en.cppreference.com/w/cpp/language/enum.html<br>(Namespaces) https://en.cppreference.com/w/cpp/language/namespace.html<br>(Aggregate init) https://en.cppreference.com/w/cpp/language/aggregate_initialization.html | beginner → early-intermediate | LearnCpp explicitly ties these features to learner problems: name collisions and scoping with namespaces, avoiding global namespace pollution with enums, and what makes a struct an aggregate + how memberwise initialisation works. citeturn24view5turn24view2turn24view1 | Aggregate rules evolve across standards; if you include constructors/member functions, the type may stop being an aggregate. Learner tasks must be careful not to implicitly require full “aggregate eligibility” edge rules. citeturn24view1turn41search4 | **No** for new sources (LearnCpp is sufficient); keep cppreference as *reference-only* |

### gc103 Function Surface and Callables

| Cluster ID | Concept area | Verdict | Recommended primary reading source | Exact page/lesson URLs | Recommended secondary/reference source | Exact page/lesson URLs | Learner level fit | Why this source fits | Risks / limitations | Should be added to curated resources? (yes/no) |
|---|---|---|---|---|---|---|---|---|---|---|
| gc103 | overloading; default args; inline; recursion; lambdas; preprocessing/macros | needs new companion source | LearnCpp (most subtopics) + companion for lambdas-in-Phase-1 | **Overloading / defaults / inline / recursion (LearnCpp):**<br>https://www.learncpp.com/cpp-tutorial/introduction-to-function-overloading/ citeturn25view0<br>https://www.learncpp.com/cpp-tutorial/function-overload-resolution-and-ambiguous-matches/ citeturn25view1<br>https://www.learncpp.com/cpp-tutorial/default-arguments/ citeturn25view2<br>https://www.learncpp.com/cpp-tutorial/inline-functions-and-variables/ citeturn25view3<br>https://www.learncpp.com/cpp-tutorial/recursion/ citeturn25view4<br>**Preprocessor minimum (LearnCpp):**<br>https://www.learncpp.com/cpp-tutorial/introduction-to-the-preprocessor/ citeturn25view7<br>https://www.learncpp.com/cpp-tutorial/header-files/ citeturn25view8<br>https://www.learncpp.com/cpp-tutorial/header-guards/ citeturn25view9<br>**Lambdas (LearnCpp, but prerequisite-heavy):**<br>https://www.learncpp.com/cpp-tutorial/introduction-to-lambdas-anonymous-functions/ citeturn28view0<br>https://www.learncpp.com/cpp-tutorial/lambda-captures/ citeturn28view3 | **New companion recommended for lambdas:** “Back to Basics – Lambda Expressions” slides from entity["organization","CppCon","c++ conference"] 2020 (teaches lambda syntax/capture with minimal STL dependencies) | Stable repo listing: https://github.com/CppCon/CppCon2020 citeturn34view0<br>Slide deck (PDF): https://github.com/CppCon/CppCon2020/blob/main/Presentations/back_to_basics_lambda_expressions/back_to_basics_lambda_expressions__barbara_geller__ansel_sermersheim__cppcon_2020.pdf citeturn35view0<br>Content confirmation (PDF text extract): https://www.copperspice.com/pdf/Lambda-Expressions-CppCon-2020.pdf citeturn32view0turn33search0<br>**Macro “why defer” + “safe macro when necessary”:** ISO C++ FAQ citeturn37view1turn37view2 | beginner → early-intermediate (if narrowed) | LearnCpp is excellent for overloading/defaults/inline/recursion. citeturn25view0turn25view2turn25view3turn25view4 The companion PDF teaches lambdas as *core language syntax* first (capture/value/reference, closure idea) without requiring learners to already understand STL algorithms/iterators. citeturn32view0turn28view0 | **Key Phase 1 risk:** LearnCpp lambda lessons heavily motivate via `<algorithm>` + `std::array`, so tasks can accidentally require additional STL concepts. citeturn28view0turn40search1turn40search0 **Macro risk:** macro programming invites unbounded complexity; keep macro scope minimal. citeturn37view1turn37view2 | **Yes** (add the CppCon 2020 lambda PDF as a “first teaching supplement” for Phase 1 lambdas). ISO C++ FAQ macro pages: **No** as primary; **Yes** as optional safety reference if you keep macros minimal. citeturn37view1turn37view2 |

### gc104 Special Members and Dynamic Object Model

| Cluster ID | Concept area | Verdict | Recommended primary reading source | Exact page/lesson URLs | Recommended secondary/reference source | Exact page/lesson URLs | Learner level fit | Why this source fits | Risks / limitations | Should be added to curated resources? (yes/no) |
|---|---|---|---|---|---|---|---|---|---|---|
| gc104 | copy constructor/control basics; `this`; inheritance; virtual dispatch; operator overloading; functors | covered by LearnCpp + existing companion sources | LearnCpp | **Copy control basics:**<br>https://www.learncpp.com/cpp-tutorial/introduction-to-the-copy-constructor/ citeturn41search2<br>https://www.learncpp.com/cpp-tutorial/class-initialization-and-copy-elision/ citeturn41search8<br>https://www.learncpp.com/cpp-tutorial/shallow-vs-deep-copying/ citeturn0search2<br>**`this` surface:**<br>https://www.learncpp.com/cpp-tutorial/the-hidden-this-pointer-and-member-function-chaining/ citeturn26search2<br>**Inheritance & dispatch:**<br>https://www.learncpp.com/cpp-tutorial/introduction-to-inheritance/ citeturn14view3<br>https://www.learncpp.com/cpp-tutorial/basic-inheritance-in-c/ citeturn21search0<br>https://www.learncpp.com/cpp-tutorial/virtual-functions/ citeturn0search3<br>https://www.learncpp.com/cpp-tutorial/virtual-destructors-virtual-assignment-and-overriding-virtualization/ citeturn20view3<br>**Operator overloading & functors:**<br>https://www.learncpp.com/cpp-tutorial/introduction-to-operator-overloading/ citeturn14view5turn12search0<br>https://www.learncpp.com/cpp-tutorial/overloading-the-parenthesis-operator/ citeturn26search3turn14view6 | cppreference (reference-only) + optional rule-of-zero framing from Standard C++ blog | (Rule of 3/5/0) https://en.cppreference.com/w/cpp/language/rule_of_three.html citeturn37view3turn0search11<br>(Rule of Zero article) https://isocpp.org/blog/2012/11/rule-of-zero citeturn20view0turn0search0 | early-intermediate | LearnCpp gives a coherent story: what the copy constructor is and why it mustn’t have side effects (copy elision), shallow vs deep copying pitfalls, what `this` is, and a first-pass inheritance/virtual function model (including virtual destructors). citeturn41search2turn41search8turn0search2turn20view3turn26search2 Also, LearnCpp’s operator overloading and functor lesson makes “callables as objects” concrete. citeturn12search0turn14view6 | **Phase 1 safety risk:** if tasks require learners to implement deep-copying with ownership and raw `new`/`delete`, complexity spikes sharply. Keep tasks value-semantics and standard-library-managed. LearnCpp itself warns that dynamic memory + copying needs care. citeturn0search2turn37view3 | **No** new primary sources required. Optional: add the “Rule of Zero” article as a short conceptual reinforcement (not mandatory). citeturn20view0 |

## Packet-ready recommendation

### Cluster: gc101

Primary reading:
1. **Signed integers** — https://www.learncpp.com/cpp-tutorial/signed-integers/ citeturn42search12  
   Why: Establishes the core mental model that “out of representable range” → undefined behaviour for signed overflow in typical arithmetic, which is essential for learner-safe tasks that manipulate integers. citeturn42search12  
   Stop when learner can explain: what “overflow” means in C++ terms; why signed overflow is not something to rely on; what kinds of bugs it can cause.

2. **Unsigned integers, and why to avoid them** — https://www.learncpp.com/cpp-tutorial/unsigned-integers-and-why-to-avoid-them/ citeturn42search1  
   Why: Gives learner-safe guidance on when unsigned is appropriate (bit manipulation / modular arithmetic) and why “non-negative = unsigned” is often a trap in real code. citeturn42search1  
   Stop when learner can explain: why mixed signed/unsigned leads to surprising results; a safe default policy for “counts and indices” in beginner code.

3. **Narrowing conversions, list initialization, and constexpr initializers** — https://www.learncpp.com/cpp-tutorial/narrowing-conversions-list-initialization-and-constexpr-initializers/ citeturn42search0  
   Why: Teaches the main “learner guardrail” that bounded tasks can rely on: brace initialisation as a narrowing detector. citeturn42search0  
   Stop when learner can explain: what narrowing is; why `T x{value};` is safer than permissive forms in many cases; how to react when narrowing is rejected.

4. **Arithmetic conversions** — https://www.learncpp.com/cpp-tutorial/arithmetic-conversions/ citeturn27search1turn42search3  
   Why: Covers the practical “common type” reasoning learners need to predict results of mixed-type expressions in everyday code. citeturn27search1turn42search3  
   Stop when learner can explain: why `int + double -> double`; why small integer types promote; how mixing signed and unsigned can flip results.

5. **Relational operators and floating point comparisons** — https://www.learncpp.com/cpp-tutorial/relational-operators-and-floating-point-comparisons/ citeturn39view0  
   Why: Provides a realistic “don’t use `==` on computed floats” rule *and* gives a pragmatic abs+rel epsilon approach suitable for many beginner tasks. citeturn39view0  
   Stop when learner can explain: why float equality often fails; when `<`/`>` can be acceptable; how abs/rel epsilon comparisons work and when they break down near zero. citeturn39view0

Secondary/reference reading:
1. **C++ Core Guidelines — Arithmetic (ES.100–ES.107)** — https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines citeturn20view1turn37view0  
   Why: Adds a short, memorable “safety rules” layer (don’t mix signed and unsigned; don’t overflow/underflow) that can be used as policy for tasks and code review. citeturn20view1turn37view0  
   Use only when: learners need a policy-style checklist rather than another tutorial narrative.

2. **cppreference — Usual arithmetic conversions** — https://en.cppreference.com/w/cpp/language/usual_arithmetic_conversions.html citeturn42search2  
   Why: Canonical reference for edge cases and precise rank rules. citeturn42search2  
   Use only when: a task intentionally targets corner cases (generally avoid for Phase 1 tasks).

Scope control:
- Explicitly NOT included yet: “prove the full conversion rank algorithm”, extended integer types, bit-precise types, ULP-based float comparisons, numeric libraries, sanitizers/tooling policy. citeturn42search2turn39view0  
- Narrowing recommendation: keep tasks on `int`, `double`, and intentional `std::size_t` boundaries; do not require learners to reason about implementation widths beyond what LearnCpp already frames. citeturn42search12turn42search1

Decision:
- **Ready for learner-facing rollout** (bounded tasks; avoid conversion corner cases that force cppreference-first reading). citeturn27search1turn39view0

### Cluster: gc102

Primary reading:
1. **Intro to program-defined (user-defined) types** — https://www.learncpp.com/cpp-tutorial/introduction-to-program-defined-user-defined-types/ citeturn26search0  
   Why: Establishes what “program-defined” means in LearnCpp’s framing, including that enums and class types are program-defined types. citeturn26search0  
   Stop when learner can explain: why you define a type; what problems structs/enums solve vs parallel variables/magic integers.

2. **Structs and member selection** — https://www.learncpp.com/cpp-tutorial/introduction-to-structs-members-and-member-selection/ citeturn24view0  
   Why: Provides the concrete learner path from “group fields” to “use dot operator” with readable examples. citeturn24view0  
   Stop when learner can explain: how to define a `struct`; how to create an instance; how to read/write members.

3. **Struct aggregate initialization** — https://www.learncpp.com/cpp-tutorial/struct-aggregate-initialization/ citeturn24view1  
   Why: Enables safe, bounded tasks that initialise plain-data aggregates by brace lists and understand memberwise initialisation order. citeturn24view1  
   Stop when learner can explain: what an aggregate is at this level (struct with only data members); why brace init is preferred; what happens with missing initialisers.

4. **Unscoped & scoped enums** — https://www.learncpp.com/cpp-tutorial/unscoped-enumerations/ citeturn24view2 and https://www.learncpp.com/cpp-tutorial/scoped-enumerations-enum-classes/ citeturn24view3  
   Why: Teaches the “use enums instead of magic ints” habit and introduces scoping to prevent name pollution. citeturn24view2turn24view3  
   Stop when learner can explain: unscoped vs scoped enums; how enumerator scoping changes; why `enum class` prevents accidental comparisons/conversions. citeturn24view3

5. **Namespaces** — https://www.learncpp.com/cpp-tutorial/naming-collisions-and-an-introduction-to-namespaces/ citeturn24view5 and https://www.learncpp.com/cpp-tutorial/user-defined-namespaces-and-the-scope-resolution-operator/ citeturn24view4  
   Why: Supports Phase 1 code organisation tasks that need to avoid collisions and teach qualified names early. citeturn24view5turn24view4  
   Stop when learner can explain: how namespaces prevent collisions; how `::` qualification resolves names.

Secondary/reference reading:
1. cppreference pages for enums/namespaces/aggregate initialisation (reference-only, optional).  
   Use only when: learners need exact wording or edge-case rules (generally avoid for Phase 1 tasks).

Scope control:
- Explicitly NOT included yet: classes with constructors (breaks aggregate status), unions/bitfields, inline namespaces, argument-dependent lookup, “ODR across namespaces” edge topics. citeturn24view1turn24view4  
- Narrowing recommendation: keep aggregates as “plain-data structs with no constructors” for Phase 1 tasks. citeturn24view1turn41search4

Decision:
- **Ready for learner-facing rollout**. citeturn24view1turn24view3turn24view4

### Cluster: gc103

Primary reading:
1. **Function overloading + overload resolution** — https://www.learncpp.com/cpp-tutorial/introduction-to-function-overloading/ citeturn25view0 and https://www.learncpp.com/cpp-tutorial/function-overload-resolution-and-ambiguous-matches/ citeturn25view1  
   Why: LearnCpp is unusually good at turning overload resolution into a deterministic, learnable process suitable for bounded tasks. citeturn25view1  
   Stop when learner can explain: what makes two overloads distinct; what causes ambiguity; what “best match” means at a practical level.

2. **Default arguments** — https://www.learncpp.com/cpp-tutorial/default-arguments/ citeturn25view2  
   Why: Enables readable beginner APIs without templates/overloads explosion. citeturn25view2  
   Stop when learner can explain: what a default argument is; where defaults are allowed; why defaults are for “reasonable” common cases.

3. **Inline functions and variables** — https://www.learncpp.com/cpp-tutorial/inline-functions-and-variables/ citeturn25view3  
   Why: Teaches the modern (ODR-related) meaning of `inline`, which avoids the most common beginner misconception (“inline always means faster”). citeturn25view3  
   Stop when learner can explain: why `inline` exists; when it matters (header definitions); why it does not guarantee inlining.

4. **Recursion** — https://www.learncpp.com/cpp-tutorial/recursion/ citeturn25view4  
   Why: Provides safe mental models (termination condition, stack growth) and avoids “mystery recursion.” citeturn25view4  
   Stop when learner can explain: base case; why missing base case fails; how to trace a simple recursive call chain.

5. **Preprocessor minimum for Phase 1** — https://www.learncpp.com/cpp-tutorial/introduction-to-the-preprocessor/ citeturn25view7, https://www.learncpp.com/cpp-tutorial/header-files/ citeturn25view8, https://www.learncpp.com/cpp-tutorial/header-guards/ citeturn25view9  
   Why: Lets learners compile multi-file projects safely (headers, includes, guards) without turning macros into a language-within-a-language. citeturn25view8turn25view9  
   Stop when learner can explain: what preprocessing does; why headers exist; what a header guard prevents.

Primary reading (new companion for lambdas in Phase 1):
6. **Back to Basics – Lambda Expressions (CppCon 2020) slide deck** — https://github.com/CppCon/CppCon2020/blob/main/Presentations/back_to_basics_lambda_expressions/back_to_basics_lambda_expressions__barbara_geller__ansel_sermersheim__cppcon_2020.pdf citeturn35view0turn34view0  
   Why: Provides a Phase‑1‑friendly lambda introduction (syntax pieces, capture by value/ref, closure idea) using small standalone examples, instead of assuming prior use of STL algorithms/iterators. citeturn32view0turn28view0  
   Stop when learner can explain: `[](){}` structure; capture by value vs reference; why reference capture has lifetime risk; how a lambda can be stored in a variable and called later. citeturn32view0

Secondary/reference reading:
1. **ISO C++ FAQ: “preprocessor is evil” (why macro programming should be avoided)** — https://isocpp.org/wiki/faq/newbie citeturn37view1  
   Why: A short, memorable framing that supports your “defer macro programming” decision while acknowledging header guards as legitimate. citeturn37view1  
   Use only when: learners ask “why not macros?” beyond the minimal preprocessor scope.

2. **ISO C++ FAQ: safe patterns when macros are unavoidable** — https://isocpp.org/wiki/faq/misc-technical-issues citeturn37view2  
   Why: If your environment forces some macro use (e.g., platform defines), this gives safer idioms (e.g., multi-statement macro hazards). citeturn37view2  
   Use only when: tasks include legacy macro surfaces (prefer to avoid in Phase 1). citeturn37view1

Scope control:
- Explicitly NOT included yet: advanced lambda topics (generic lambdas, captures of `this`/`*this`, move-capture, `std::function`, async/threading capture pitfalls as core requirements), sophisticated macro techniques (`##`, `#`, variadic macros), custom build configuration via `#ifdef` beyond header guards. citeturn32view0turn37view2turn37view1  
- Narrowing recommendation:  
  - Lambdas: Phase 1 tasks should use lambdas only as “callable objects” (define/store/call; capture basics), **not** as STL algorithm predicates unless you also curate containers/algorithms readings for Phase 1. citeturn28view0turn40search1  
  - Preprocessor: restrict to `#include` + header guards. Treat macro programming as deferred. citeturn25view9turn37view1

Decision:
- **Ready only if narrowed** (or ready if you explicitly add Phase 1 prerequisite reading on containers/algorithms before using LearnCpp’s lambda lessons). citeturn28view0turn40search1turn32view0

### Cluster: gc104

Primary reading:
1. **Copy constructor basics** — https://www.learncpp.com/cpp-tutorial/introduction-to-the-copy-constructor/ citeturn41search2  
   Why: Explains implicit copy construction, when it is invoked, and best-practice guidance that copy ctors should have no side effects (ties directly into copy elision). citeturn41search2turn41search8  
   Stop when learner can explain: what a copy constructor is; when copying happens (initialisation from another object); why side effects are unreliable with copy elision.

2. **Copy elision** — https://www.learncpp.com/cpp-tutorial/class-initialization-and-copy-elision/ citeturn41search8  
   Why: Prevents learners from building incorrect mental models (“my copy ctor prints so I know it ran”). citeturn41search8  
   Stop when learner can explain: what it means to elide a copy; why you can’t depend on copy ctor side effects.

3. **Shallow vs deep copying** — https://www.learncpp.com/cpp-tutorial/shallow-vs-deep-copying/ citeturn0search2  
   Why: Establishes the safety boundary: as soon as you manage resources via raw handles, implicit memberwise copying becomes dangerous; also reinforces “prefer standard library types” counsel. citeturn0search2  
   Stop when learner can explain: what shallow copy means; why it breaks for owning pointers; why standard library types avoid this burden.

4. **The hidden `this` pointer** — https://www.learncpp.com/cpp-tutorial/the-hidden-this-pointer-and-member-function-chaining/ citeturn26search2  
   Why: Makes member function calls and “object as implicit parameter” concrete for the object model. citeturn26search2  
   Stop when learner can explain: what `this` points to; why member access can be seen as `this->member`.

5. **Inheritance and virtual dispatch first pass** — https://www.learncpp.com/cpp-tutorial/introduction-to-inheritance/ citeturn14view3, https://www.learncpp.com/cpp-tutorial/basic-inheritance-in-c/ citeturn21search0, https://www.learncpp.com/cpp-tutorial/virtual-functions/ citeturn0search3, https://www.learncpp.com/cpp-tutorial/virtual-destructors-virtual-assignment-and-overriding-virtualization/ citeturn20view3  
   Why: Provides enough to support bounded polymorphism tasks (base ref/pointer calling most-derived override; why virtual destructors matter). citeturn0search3turn20view3  
   Stop when learner can explain: static vs dynamic type idea (at least informally); why calling via base pointer/reference matters; why base classes with virtual functions need a virtual destructor. citeturn0search3turn20view3

6. **Operator overloading + functors** — https://www.learncpp.com/cpp-tutorial/introduction-to-operator-overloading/ citeturn12search0turn14view5 and https://www.learncpp.com/cpp-tutorial/overloading-the-parenthesis-operator/ citeturn26search3turn14view6  
   Why: Learner-safe operational view: operators are functions; overload only with analogous meaning; `operator()` introduces function objects (“functors”). citeturn12search0turn14view6  
   Stop when learner can explain: why operator overloads must involve a user-defined type; what `operator()` enables; when operator overloading is appropriate vs confusing. citeturn12search0turn14view5

Secondary/reference reading:
1. **cppreference: rule of three/five/zero** — https://en.cppreference.com/w/cpp/language/rule_of_three.html citeturn37view3turn0search11  
   Why: Consolidates the terminology learners will see elsewhere; good for reference cross-checking, not as first teaching. citeturn37view3  
   Use only when: learners need to name or verify the “rules” after the LearnCpp narrative.

2. **Rule of Zero (Standard C++ blog)** — https://isocpp.org/blog/2012/11/rule-of-zero citeturn20view0turn0search0  
   Why: Reinforces the modern “avoid writing special members unless you own something” framing, which helps keep Phase 1 tasks safe. citeturn20view0turn0search2  
   Use only when: you want an explicit conceptual anchor for a “value-semantics first” policy.

Scope control:
- Explicitly NOT included yet: manual resource management via raw owning pointers, implementing deep copy with custom destructors in Phase 1 tasks, multiple inheritance, virtual inheritance, `dynamic_cast`, RTTI design, virtual assignment operator (explicitly called out as complex by LearnCpp), and exotic operator overloads. citeturn20view3turn0search2  
- Narrowing recommendation:  
  - Copy control tasks should remain in the “Rule of Zero” world (compose with STL types; avoid owning raw pointers). citeturn0search2turn20view0turn37view3  
  - Inheritance tasks should stay at: “public inheritance as an is‑a; virtual functions; override; virtual destructor; base reference/pointer usage.” citeturn21search0turn0search3turn20view3  
  - Operator overloading tasks should be limited to a small set with clear intent (e.g., `operator==`, `operator<<`, `operator()`), and should follow LearnCpp’s guidance to keep semantics analogous. citeturn14view5turn14view6

Decision:
- **Ready for learner-facing rollout**, but **only if tasks explicitly avoid manual deep-copy ownership patterns** and keep inheritance/polymorphism at “first pass” scope. citeturn0search2turn20view3turn0search3