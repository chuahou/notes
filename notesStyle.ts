<TeXmacs|1.99.15>

<style|source>

<\body>
  <\active*>
    <\src-title>
      <src-package|notesStyle|1.0>

      <src-purpose|Style package for notes.>
    </src-title>
  </active*>

  <\active*>
    <\src-comment>
      Add link to root CSS style.
    </src-comment>
  </active*>

  <provide|html-extra-css|<tuple|/notes/style.css>>

  <\active*>
    <\src-comment>
      Style parameters.
    </src-comment>
  </active*>

  <assign|full-screen-mode|false>

  <assign|page-medium|paper>

  <assign|project-flag|true>

  <\active*>
    <\src-comment>
      Macro definitions.
    </src-comment>
  </active*>

  <assign|verbatim|<macro|body|<small|<with|font|Ioslabka|language|verbatim|<arg|body>>>>>

  <assign|side-note|<macro|body|<small|<with|font-shape|italic|<arg|body>>>>>

  <assign|uni-summary|<\macro|acknowledge|leclist|refs>
    <side-note|<arg|acknowledge>>

    <subsection*|Chapters>

    <compact|<itemize|<arg|leclist>>>

    <subsection*|References>

    <compact|<itemize|<arg|refs>>>
  </macro>>

  <assign|uni-summary-ref|<\macro|author|title|year>
    <arg|author>. <with|font-shape|italic|<arg|title>>, <arg|year>.
  </macro>>

  <\active*>
    <\src-comment>
      Links for headers.
    </src-comment>
  </active*>

  <assign|old-doc-title|<value|doc-title>>

  <assign|title-link|<macro|text|tgt|<tiny|<with|font-shape|small-caps|[<hlink|<arg|text>|<arg|tgt>>]>>>>

  <assign|doc-title|<macro|title|<old-doc-title|<arg|title><space|1em><title-link|..|../index.tm>
  <title-link|top|~/dev/notes/index.tm>>>>

  <assign|top-doc-title|<macro|title|<old-doc-title|<arg|title>>>>

  <assign|old-section|<value|section>>

  <assign|section|<macro|text|<old-section|<arg|text><space|1em><title-link|up|#>>>>

  <assign|old-subsection|<value|subsection>>

  <assign|subsection|<macro|text|<old-subsection|<arg|text><space|1em><title-link|up|#>>>>

  <assign|old-subsubsection|<value|subsubsection>>

  <assign|subsubsection|<macro|text|<old-subsubsection|<arg|text><space|1em><title-link|up|#>>>>

  <assign|old-section*|<value|section*>>

  <assign|section*|<macro|text|<old-section*|<arg|text><space|1em><title-link|up|#>>>>

  <assign|old-subsection*|<value|subsection*>>

  <assign|subsection*|<macro|text|<old-subsection*|<arg|text><space|1em><title-link|up|#>>>>

  <assign|old-subsubsection*|<value|subsubsection*>>

  <assign|subsubsection*|<macro|text|<old-subsubsection*|<arg|text><space|1em><title-link|up|#>>>>
</body>

<\initial>
  <\collection>
    <associate|font|roman>
    <associate|font-family|rm>
    <associate|math-font|roman>
    <associate|preamble|true>
  </collection>
</initial>