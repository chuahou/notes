<TeXmacs|1.99.15>

<style|<tuple|generic|notesStyle|biolinum-font>>

<\body>
  <doc-data|<doc-title|Compilers: Introduction>>

  A <dfn|compiler> translates a program from a <with|font-series|bold|source
  language> into a <with|font-series|bold|semantically equivalent> program in
  a <with|font-series|bold|target language>.

  Typically, it translates from languages of higher level to those of lower
  level of abstraction.

  Interpreters, on the other hand, directly execute instructions written in
  the source language.

  <section*|Stages of compilation>

  <side-note|Or at least those for the compiler we study in this course,
  designed for the <name|PicoPascal> language and <name|Keiko> virtual
  machine.>

  <\compact>
    <\description>
      <item*|Lexer>Source character stream \<rightarrow\> token stream

      <item*|Parser>Token stream \<rightarrow\> ast

      <item*|Type checker>Annotates tree (for codegen's use), does semantic
      analysis

      <item*|Codegen>Annotated tree \<rightarrow\> postfix code

      <item*|Peephole optmizer>Postfix code \<rightarrow\> Optimized postfix
      code

      <item*|Intermediate codegen>Optimized postfix \<rightarrow\> operator
      tree

      <item*|Optimizer>Further optimization

      <item*|Instruction selection>Tree \<rightarrow\> tiled tree, code
      templates

      <item*|Register assignment>Code templates \<rightarrow\> assembly

      <item*|Assembler>Assembly \<rightarrow\> machine code
    </description>
  </compact>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
    <associate|preamble|false>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Stages
      of compilation<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[
      <locus|<id|%4E5B733F8-4E2264420-EA70>|<link|hyperlink|<id|%4E5B733F8-4E2264420-EA70>|<url|#>>|up>
      ]>>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>