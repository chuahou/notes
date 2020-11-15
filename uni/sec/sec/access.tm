<TeXmacs|1.99.15>

<style|<tuple|generic|biolinum-font|notesStyle>>

<\body>
  <doc-data|<doc-title|Access Control and Integrity>>

  <section|Definitions [2.1]>

  <dfn|Access control> implements authorization, granting or denying access
  accordingly.

  <\compact>
    <\description>
      <item*|Subject>an entity that may access objects <math|\<in\>\<cal-S\>>

      <item*|Object>system resources <math|\<in\>\<cal-O\>>

      <item*|Modes/permissions>ways in which <dfn|objects> can be accessed
      <math|\<in\>\<cal-P\>>

      <item*|Authorized accesses>described by a set of tuples
      <math|\<cal-A\>\<subseteq\>\<cal-S\>\<times\>\<cal-O\>\<times\>\<cal-P\>>

      we typically distinguish between permissions which <dfn|can be granted>
      and permissions which <dfn|have been granted>

      <item*|Discretionary access control (DAC)>each object has a subject as
      <dfn|owner>, which controls its permissions (e.g. <name|Unix> file
      permissions)

      <item*|Mandatory access control (MAC)>administrator sets all
      permissions with central control, preventing badly behaving users
      affecting security (e.g. <name|SELinux>)
    </description>
  </compact>

  <section|Access control structures [2.1]>

  <\compact>
    <\description>
      <item*|Access control matrix>matrix <math|M> with entries for each
      subject <math|s\<in\>\<cal-S\>> and object <math|o\<in\>\<cal-O\>> pair
      such that

      <math|M<rsub|s,o>=<around*|{|p\<barsuchthat\><around*|\<langle\>|s,o,p|\<rangle\>>\<in\>\<cal-A\>|}>>

      <item*|Access control lists>a list <math|A<rsub|o>> for each object
      <math|o\<in\>\<cal-O\>> containing permissible subject-permission pairs

      <math|A<rsub|o>=<around*|{|<around*|\<langle\>|s,p|\<rangle\>>\<barsuchthat\><around*|\<langle\>|s,o,p|\<rangle\>>\<in\>\<cal-A\>|}>>,
      easier to modify for specific objects

      <item*|Capabilities>subject store tokens which determine their
      permissions
    </description>
  </compact>

  <section|Security models>

  <subsection|<with|font-shape|small-caps|Bell-LaPadula> model [2.2]>

  Aims to achieve <strong|confidentiality> only.

  <\compact>
    <\itemize>
      <item>Permissions <math|<around*|{|<math-up|<with|font-shape|small-caps|read>>,<math-up|<with|font-shape|small-caps|write>>,<math-up|<with|font-shape|small-caps|append>>,<math-up|<with|font-shape|small-caps|execute>>|}>>

      <item>Set of security levels <math|\<cal-L\>> comparable by
      <math|\<leq\>> (should be a <dfn|lattice>)

      <item>Maximum security level for each subject (clearance)
      <math|f<rsub|S>\<of\><around*|\<nobracket\>|\<cal-S\>\<rightarrow\>\<cal-L\>|\<nobracket\>>>

      <item>Current security level for each subject
      <math|f<rsub|C>\<of\><around*|\<nobracket\>|\<cal-S\>\<rightarrow\>\<cal-L\>|\<nobracket\>>>

      <item>Classification for each object
      <math|f<rsub|O>\<of\><around*|\<nobracket\>|\<cal-O\>\<rightarrow\>\<cal-L\>|\<nobracket\>>>

      <item>Set of allowable permissions <math|\<cal-A\>=<around*|{|<around*|\<langle\>|s,o,p|\<rangle\>>,\<ldots\>|}>>

      <item>Set of granted permissions <math|<around*|{|<around*|\<langle\>|s,o,p|\<rangle\>>,\<ldots\>|}>>
    </itemize>
  </compact>

  Systems evolve through <dfn|states>, which are individually considered
  secure if they satisfy the conditions below, and the system is secure if
  every implementation action preserves these conditions.

  <\compact>
    <\description>
      <item*|Discretionary security property>(ds-property)

      If access <math|<around*|\<langle\>|s,o,p|\<rangle\>>> has been
      granted, then <math|<around*|\<langle\>|s,o,p|\<rangle\>>\<in\>\<cal-A\>>

      <item*|Simple security property>(ss-property)

      If access <math|<around*|\<langle\>|s,o,<with|font-shape|small-caps|<math-up|<with|font-shape|small-caps|read>>>|\<rangle\>>>
      or <math|<around*|\<langle\>|s,o,<math-up|<with|font-shape|small-caps|write>>|\<rangle\>>>
      granted, then <math|f<rsub|O><around*|(|o|)>\<leq\>f<rsub|S><around*|(|s|)>>

      <item*|*-property>(no write-down)

      If access <math|<around*|\<langle\>|s,o,<math-up|<with|font-shape|small-caps|write>>|\<rangle\>>>
      or <math|<around*|\<langle\>|s,o,<math-up|<with|font-shape|small-caps|append>>|\<rangle\>>>
      granted, then <math|f<rsub|C><around*|(|s|)>\<leq\>f<rsub|O><around*|(|o|)>>
      and <math|f<rsub|O><around*|(|o<rprime|'>|)>\<leq\>f<rsub|O><around*|(|o|)>>
      for all <math|o<rprime|'>> where access
      <math|<around*|\<langle\>|s,o<rprime|'>,<math-up|<with|font-shape|small-caps|read>>|\<rangle\>>>
      or <math|<around*|\<langle\>|s,o<rprime|'>,<math-up|<with|font-shape|small-caps|write>>|\<rangle\>>>
      granted
    </description>
  </compact>

  <side-note|Note that the permission <with|font-shape|small-caps|write>
  includes permissions to read the file (something like <verbatim|rw> mode),
  while <with|font-shape|small-caps|append> does not.>

  <subsection|Role-based access control (RBAC)>

  <\itemize>
    <item><dfn|Privileges> are rights to execute specific operations (usually
    OS functions), and act as an <dfn|intermediate layer> between users and
    operations.

    <item><dfn|Roles> are groups with some privileges, which users are
    assigned to.
  </itemize>

  <subsection|Protection rings>
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
    <associate|auto-3|<tuple|3|1>>
    <associate|auto-4|<tuple|3.1|1>>
    <associate|auto-5|<tuple|3.2|2>>
    <associate|auto-6|<tuple|3.3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Definitions
      [2.1]<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%155DE4208-158CD2EF0-EA70>|<link|hyperlink|<id|%155DE4208-158CD2EF0-EA70>|<url|#>>|up>]>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Access
      control structures [2.1]<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%155DE4208-156EF9118-EA70>|<link|hyperlink|<id|%155DE4208-156EF9118-EA70>|<url|#>>|up>]>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Security
      models<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%155DE4208-156F170B0-EA70>|<link|hyperlink|<id|%155DE4208-156F170B0-EA70>|<url|#>>|up>]>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc><with|font-shape|<quote|small-caps>|Bell-LaPadula>
      model [2.2]<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%155DE4208-154EE9140-EA70>|<link|hyperlink|<id|%155DE4208-154EE9140-EA70>|<url|#>>|up>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Role-based access control
      (RBAC)<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%155DE4208-158CDB920-EA70>|<link|hyperlink|<id|%155DE4208-158CDB920-EA70>|<url|#>>|up>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Protection
      rings<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%155DE4208-158CDBF40-EA70>|<link|hyperlink|<id|%155DE4208-158CDBF40-EA70>|<url|#>>|up>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>
    </associate>
  </collection>
</auxiliary>