<TeXmacs|1.99.15>

<style|<tuple|generic|biolinum-font|notesStyle>>

<\body>
  <doc-data|<doc-title|Lexical analysis>>

  The <dfn|lexical analyzer> (more commonly <dfn|lexer>) takes in an input
  stream, identifying <with|font-series|bold|meaningful tokens>, ignoring
  whitespace/comments.

  <section|Regular expressions>

  <text-dots> are used to specify valid tokens.

  <\big-table|<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|1fn>|<cwith|1|-1|1|-1|cell-rsep|1fn>|<cwith|1|1|1|-1|cell-halign|c>|<cwith|2|-1|1|1|cell-halign|c>|<table|<row|<cell|<with|font-series|bold|Regex>>|<cell|<with|font-series|bold|Meaning>>>|<row|<cell|<math|\<epsilon\>>>|<cell|empty
  string>>|<row|<cell|<math|a>>|<cell|literal character
  <verbatim|a>>>|<row|<cell|<math|E<rsub|1>
  E<rsub|2>>>|<cell|concatenation>>|<row|<cell|<math|E<rsub|1>\<divides\>E<rsub|2>>>|<cell|union>>|<row|<cell|<math|E<rsub|1><rsup|\<ast\>>>>|<cell|Kleene
  star (closure)>>>>>>
    Regular expression syntax.
  </big-table>

  <dfn|Extended regular expressions> add

  <\big-table|<tabular|<tformat|<cwith|1|-1|1|-1|cell-lsep|1fn>|<cwith|1|-1|1|-1|cell-rsep|1fn>|<cwith|1|1|1|-1|cell-halign|c>|<cwith|2|-1|1|1|cell-halign|c>|<table|<row|<cell|<with|font-series|bold|ERE>>|<cell|<with|font-series|bold|Meaning>>>|<row|<cell|<math|<around*|[|a
  b c|]>>>|<cell|<math|a\<divides\>b\<divides\>c>>>|<row|<cell|<math|<around*|[|a-z|]>>>|<cell|<math|a\<divides\>b\<divides\>\<ldots\>\<divides\>z>>>|<row|<cell|<math|E<rsub|1>*<math-up|?>>>|<cell|<math|\<epsilon\>\<divides\>E<rsub|1>>>>|<row|<cell|<math|E<rsub|1>+>>|<cell|<math|E<rsub|1>*E<rsub|1><rsup|\<star\>>>>>|<row|<cell|<math|<around*|[|<math-up|^>a
  b c|]>>>|<cell|any character except <text-dots>>>|<row|<cell|<math|.>>|<cell|any
  character>>>>>>
    EREs.
  </big-table>

  <section|Non-deterministic finite automata>

  Regexes can be written as a NFA using Thompson's construction, accepting a
  string if there is a path\Vlabelled with the string's characters\Vfrom the
  start state to a final state.

  NFAs are a directed graph with edges consuming a character, otherwise being
  labelled with <math|\<epsilon\>>. The start state is labelled with an
  incoming arrow, and the final state is marked with a *.

  See the slides/coursebook for excellent examples.

  <section|Deterministic finite automata>

  NFAs are non-deterministic (duh) and are hence hard to use programmatically
  for lexing. NFAs can be converted to DFAs (they are equivalent) by
  <dfn|subset construction>:

  <\compact>
    <\enumerate>
      <item>Every state in the DFA is labelled by the subset of possible
      states in the NFA we could be in<label|dfapoint>

      <item>Dustbin state <math|s<rsub|\<emptyset\>>> is where all other
      undefined transitions lead to

      <item>Transition function <math|\<delta\>> is total (and is
      <math|Q\<rightarrow\>Q> instead of <math|Q\<rightarrow\>\<cal-P\> Q>)

      <item>There are no <math|\<epsilon\>> transitions (they are captured by
      point<nbsp><reference|dfapoint>)
    </enumerate>
  </compact>

  Once again, see slides/coursebook for an excellent example.

  <section|Lex>

  The tool <name|Lex> takes as input a script consisting of a list of
  regexes, creating a DFA for their union. It returns the longest sequence
  that mathces a rule, prioritizing rules that occur earlier in the script.
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
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|2|1>>
    <associate|auto-4|<tuple|2|1>>
    <associate|auto-5|<tuple|3|1>>
    <associate|auto-6|<tuple|4|?>>
    <associate|dfapoint|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|table>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|1>|>
        Regular expression syntax.
      </surround>|<pageref|auto-2>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|2>|>
        EREs.
      </surround>|<pageref|auto-3>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Regular
      expressions<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[
      <locus|<id|%4E7A350E8-4EAD816F0-EA70>|<link|hyperlink|<id|%4E7A350E8-4EAD816F0-EA70>|<url|#>>|up>
      ]>>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Non-deterministic
      finite automata<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[
      <locus|<id|%4E7A350E8-4EBAA26C8-EA70>|<link|hyperlink|<id|%4E7A350E8-4EBAA26C8-EA70>|<url|#>>|up>
      ]>>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Deterministic
      finite automata<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[
      <locus|<id|%4E7A350E8-4EBD17748-EA70>|<link|hyperlink|<id|%4E7A350E8-4EBD17748-EA70>|<url|#>>|up>
      ]>>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>