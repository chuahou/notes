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
</body>

<\initial>
  <\collection>
    <associate|font|roman>
    <associate|font-family|rm>
    <associate|math-font|roman>
    <associate|preamble|true>
  </collection>
</initial>