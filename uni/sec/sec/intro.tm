<TeXmacs|1.99.15>

<style|<tuple|generic|biolinum-font|notesStyle>>

<\body>
  <doc-data|<doc-title|Security: Introduction>>

  <section|Notation>

  <\compact>
    <\description>
      <item*|Tuples><math|<around*|\<langle\>|a,b,c|\<rangle\>>><space|1em>brackets
      are omitted when <math|f> applied: <math|f<around*|\<langle\>|a,b|\<rangle\>>>
      instead of <math|f<around*|(|<around*|\<langle\>|a,b|\<rangle\>>|)>>

      <item*|XOR><math|\<oplus\>>

      <item*|Concatenation><math|\<\|\|\>>

      <item*|Sequences>given an alphabet <math|\<Sigma\>>

      <math|n> length sequence: <math|\<Sigma\><rsup|n>>

      any finite length (closure): <math|\<Sigma\><rsup|\<star\>>>
    </description>
  </compact>

  <section|Basic definitions>

  <\side-note>
    These definitions were written as summaries based on my understanding of
    the slides. When needed, the original notes should be consulted to check
    for misunderstandings.

    Some definitions were lifted word-for-word due to difficulty in
    rephrasing while maintaining clarity.
  </side-note>

  <\compact>
    <\description>
      <item*|Computer security>methods to keep computer systems and digital
      assets free from risk

      <item*|Asset>something valuable

      tangible like machinery, or

      intangible like reputation

      <item*|Threat>circumstance/event that puts assets at risk

      <item*|Threat actors>that may or may not have malign intent

      malign intent means it is an <dfn|attack>

      otherwise, they may pose <dfn|accidental risk>

      <item*|Vulnerability>a weakness in a component of a system\Va potential
      <dfn|attack surface> that may be used as a point of entry

      internet etc. are potential external attack surfaces

      systems reachable from inside are also viable internal attack surfaces

      humans are also an attack surface

      <item*|Exploits>tools used to exploit vulnerabilities, usually reusable
      on many targets (<dfn|economies of scale>)

      <item*|Risks>a <dfn|risk> needs a <dfn|motivated and able threat>,
      <dfn|an exploitable vulnerability>, and a <dfn|negative/impact harm
      upon successful attack> to manifest
    </description>
  </compact>

  <subsection|Desired properties>

  <\compact>
    <\description>
      <item*|Confidentiality>information not being disclosed to unauthorized
      entities

      <item*|Integrity>assets should not be altered by unauthorized entities

      <item*|Information integrity>unauthorized alteration should be detected
      and rejected

      <item*|Availability>information and resources should be available to
      authorized parties

      <item*|Authorization>determines which actors have the right to access
      which resources

      <item*|Authentication>verification of identity of an actor

      <item*|Non-repudiation>means an actor cannot deny having taken an
      action
    </description>
  </compact>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
    <associate|preamble|false>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|2.1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Notation<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%14D615118-14E9E6B60-EA70>|<link|hyperlink|<id|%14D615118-14E9E6B60-EA70>|<url|#>>|up>]>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Basic
      definitions<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%14D615118-14E9CC4A8-EA70>|<link|hyperlink|<id|%14D615118-14E9CC4A8-EA70>|<url|#>>|up>]>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Desired
      properties<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%14D615118-14EA60B20-EA70>|<link|hyperlink|<id|%14D615118-14EA60B20-EA70>|<url|#>>|up>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>
    </associate>
  </collection>
</auxiliary>