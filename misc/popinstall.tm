<TeXmacs|1.99.15>

<style|<tuple|generic|biolinum-font|notesStyle>>

<\body>
  <doc-data|<doc-title|Pop_OS! Installation Procedure>>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Miscellanous
    useful commands<space|1em><with|font-size|0.595|<with|font-shape|small-caps|[<locus|<id|%427C64338-425A7A018-EA70>|<link|hyperlink|<id|%427C64338-425A7A018-EA70>|<url|#>>|up>]>>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Procedure<space|1em><with|font-size|0.595|<with|font-shape|small-caps|[<locus|<id|%427C64338-427FA2138-EA70>|<link|hyperlink|<id|%427C64338-427FA2138-EA70>|<url|#>>|up>]>>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <with|par-left|1tab|2.1<space|2spc>Partitioning<space|1em><with|font-size|0.595|<with|font-shape|small-caps|[<locus|<id|%427C64338-42584D570-EA70>|<link|hyperlink|<id|%427C64338-42584D570-EA70>|<url|#>>|up>]>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|2.2<space|2spc>Installer<space|1em><with|font-size|0.595|<with|font-shape|small-caps|[<locus|<id|%427C64338-4272A1178-EA70>|<link|hyperlink|<id|%427C64338-4272A1178-EA70>|<url|#>>|up>]>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|1tab|2.3<space|2spc>Post-install<space|1em><with|font-size|0.595|<with|font-shape|small-caps|[<locus|<id|%427C64338-425862590-EA70>|<link|hyperlink|<id|%427C64338-425862590-EA70>|<url|#>>|up>]>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|2tab|2.3.1<space|2spc>Set up
    subvolumes<space|1em><with|font-size|0.595|<with|font-shape|small-caps|[<locus|<id|%427C64338-42585EF78-EA70>|<link|hyperlink|<id|%427C64338-42585EF78-EA70>|<url|#>>|up>]>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|2tab|2.3.2<space|2spc>Edit
    /etc/fstab<space|1em><with|font-size|0.595|<with|font-shape|small-caps|[<locus|<id|%427C64338-425833B10-EA70>|<link|hyperlink|<id|%427C64338-425833B10-EA70>|<url|#>>|up>]>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|2tab|2.3.3<space|2spc>Add
    rootflags<space|1em><with|font-size|0.595|<with|font-shape|small-caps|[<locus|<id|%427C64338-425828B08-EA70>|<link|hyperlink|<id|%427C64338-425828B08-EA70>|<url|#>>|up>]>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|2tab|2.3.4<space|2spc><with|font-shape|small-caps|chroot>
    and set-up<space|1em><with|font-size|0.595|<with|font-shape|small-caps|[<locus|<id|%427C64338-4258325C8-EA70>|<link|hyperlink|<id|%427C64338-4258325C8-EA70>|<url|#>>|up>]>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|2tab|2.3.5<space|2spc>Other
    <with|font-shape|small-caps|btrfs> partitions<space|1em><with|font-size|0.595|<with|font-shape|small-caps|[<locus|<id|%427C64338-4257EEBE8-EA70>|<link|hyperlink|<id|%427C64338-4257EEBE8-EA70>|<url|#>>|up>]>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|2.4<space|2spc>Post-reboot<space|1em><with|font-size|0.595|<with|font-shape|small-caps|[<locus|<id|%427C64338-4257F7360-EA70>|<link|hyperlink|<id|%427C64338-4257F7360-EA70>|<url|#>>|up>]>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|2tab|2.4.1<space|2spc>Install
    <with|font-shape|small-caps|Windows><space|1em><with|font-size|0.595|<with|font-shape|small-caps|[<locus|<id|%427C64338-4257D3638-EA70>|<link|hyperlink|<id|%427C64338-4257D3638-EA70>|<url|#>>|up>]>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <with|par-left|2tab|2.4.2<space|2spc><with|font-shape|small-caps|Firefox>
    configuration<space|1em><with|font-size|0.595|<with|font-shape|small-caps|[<locus|<id|%427C64338-4257E8220-EA70>|<link|hyperlink|<id|%427C64338-4257E8220-EA70>|<url|#>>|up>]>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>>

    <with|par-left|2tab|2.4.3<space|2spc>HP printer
    setup<space|1em><with|font-size|0.595|<with|font-shape|small-caps|[<locus|<id|%427C64338-42574E880-EA70>|<link|hyperlink|<id|%427C64338-42574E880-EA70>|<url|#>>|up>]>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14>>
  </table-of-contents>

  <\remark*>
    Tested on:

    <\compact>
      <\itemize>
        <item>CH-20B (2020-10-23), Pop!_OS 20.04

        <item>CH-20B (2020-10-24), Pop!_OS 20.04
      </itemize>
    </compact>
  </remark*>

  This is a recording of steps I took to set up a new system, heavily based
  on <hlink|this article|https://mutschler.eu/linux/install-guides/pop-os-btrfs/>
  on setting up btrfs\<nbhyph\>on\<nbhyph\>luks Pop!_OS.

  <section|Miscellanous useful commands>

  <side-note|Especially useful on the LiveCD.>

  <\verbatim-code>
    <\code>
      gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'flat'

      nvidia-settings --assign \\

      \ \ \ \ CurrentMetaMode="nvidia-auto-select +0+0 {
      ForceFullCompositionPipeline = On }"
    </code>
  </verbatim-code>

  <section|Procedure>

  If necessary, <hlink|disable RST|https://discourse.ubuntu.com/t/ubuntu-installation-on-computers-with-intel-r-rst-enabled/15347>
  first.

  <subsection|Partitioning>

  <\compact>
    <\description-compact>
      <item*|esp>512MiB<space|1em>fat32<space|1em><verbatim|boot,esp>

      <item*|recovery>4GiB<space|1em>fat32

      <item*|cryptdata>unformatted
    </description-compact>
  </compact>

  Afterwards, set up the LUKS partition:

  <\verbatim-code>
    <\code>
      cryptsetup luksFormat /dev/... \ \ \ \ \ # Make LUKS partition

      cryptsetup open /dev/... cryptdata \ # Open it

      \;

      pvcreate /dev/mapper/cryptdata \ \ \ \ \ # Create LVM physical volume

      \;

      vgcreate data /dev/mapper/cryptdata # Volume group

      lvcreate -n root -l 100%FREE data \ \ # Logical volume

      \;

      cryptsetup close data-root

      cryptsetup close cryptdata \ \ \ \ \ \ \ \ \ # Close up
    </code>
  </verbatim-code>

  <subsection|Installer>

  <\compact>
    <\description>
      <item*|esp><with|font-shape|small-caps|as >fat32,
      <with|font-shape|small-caps|mount> /boot/efi

      <item*|recovery><with|font-shape|small-caps|as> fat32,
      <with|font-shape|small-caps|mount> /recovery

      <item*|cryptdata>Decrypt, then <with|font-shape|small-caps|as> btrfs,
      <with|font-shape|small-caps|mount> /
    </description>
  </compact>

  <strong|Do not reboot/power off after completion!> Return to the terminal
  to complete post-install steps.

  <subsection|Post-install>

  <subsubsection|Set up subvolumes>

  <\verbatim-code>
    # Mount btrfs partition

    cryptsetup open /dev/... cryptdata

    mount -o ssd,noatime,space_cache,commit=120,compress=zstd
    /dev/mapper/data-root /mnt

    \;

    # Move into @ subvol

    cd /mnt

    btrfs sub create @

    ls \| grep -v @ \| xargs mv -t @

    \;

    # Create /var/log subvol

    btrfs sub create @varlog

    cp -ax --reflink=always @/var/log/. @varlog

    rm @/var/log -rf

    \;

    # Create other subvolumes

    btrfs sub create @home

    btrfs sub create @swap

    \;

    # Create swapfile

    truncate -s 0 @swap/swapfile

    chattr +C @swap/swapfile

    btrfs property set @swap/swapfile compression none

    fallocate -l 4G @swap/swapfile

    chmod 600 @swap/swapfile

    mkswap @swap/swapfile

    mkdir @/swap
  </verbatim-code>

  <subsubsection|Edit /etc/fstab>

  <\verbatim-code>
    # /etc/fstab: static file system information.

    # \<less\>file system\<gtr\> \ \<less\>mount point\<gtr\>
    \ \<less\>type\<gtr\> \ \<less\>options\<gtr\> \ \<less\>dump\<gtr\>
    \ \<less\>pass\<gtr\>

    PARTUUID=... /boot/efi vfat umask=0077 0 0

    PARTUUID=... /recovery vfat umask=0077 0 0

    UUID=... / btrfs defaults,subvol=@,ssd,noatime,space_cache,commit=120,compress=zstd
    0 0

    UUID=... /home btrfs defaults,subvol=@home,ssd,noatime,space_cache,commit=120,compress=zstd
    0 0

    UUID=... /var/log btrfs defaults,subvol=@varlog,ssd,noatime,space_cache,commit=120,compress=zstd
    0 0

    UUID=... /swap btrfs defaults,subvol=@swap,compress=no 0 0

    /swap/swapfile none swap defaults 0 0
  </verbatim-code>

  <subsubsection|Add rootflags>

  Add <verbatim|rootflags=subvol=@> to

  <\compact>
    <\itemize>
      <item>the last line of /mnt/@/boot/efi/loader/entries/Pop_OS-current.conf,
      and to

      <item><verbatim|user.kernel_options> in
      /mnt/@/etc/kernelstub/configuration.
    </itemize>
  </compact>

  <subsubsection|<name|chroot> and set-up>

  <\verbatim-code>
    cd /

    umount -l /mnt

    mount -o <code|defaults,subvol=@,ssd,noatime,space_cache,commit=120,compress=zstd
    /dev/mapper/data-root /mnt>

    for i in /dev /dev/pts /proc /sys /run; do sudo mount -B $i /mnt$i; done

    cp /etc/resolv.conf /mnt/etc

    chroot /mnt

    \;

    mount -av # check fstab correct

    apt install btrfs-progs

    update-initramfs -c -k all
  </verbatim-code>

  Lastly, add <verbatim|timeout 5> to /mnt/@/boot/efi/loader/loader.conf if
  desired.

  <subsubsection|Other <name|btrfs> partitions>

  If necessary, create <name|btrfs> partitions on other drives, and create
  subvolumes as desired. Set up all encrypted partitions to unlock together
  using <name|<hlink|decrypt_keyctl|https://unix.stackexchange.com/questions/392284/using-a-single-passphrase-to-unlock-multiple-encrypted-disks-at-boot>>\Vadd
  <verbatim|keyscript=decrypt_keyctl> to the options of each entry in
  /etc/crypttab, and then run <verbatim|update-initramfs -u>.

  <subsection|Post-reboot>

  <\compact>
    <\itemize>
      <item>Set <name|apt> source to <href|mirror.0x.sg> in
      /etc/apt/sources.list.

      <item>Setup <hlink|<name|kiwami>|https://github.com/chuahou/kiwami>

      <\verbatim-code>
        mkdir -p ~/dev && cd ~/dev

        git clone git@github.com:chuahou/kiwami --recurse-submodules

        cd kiwami

        ./init.sh
      </verbatim-code>

      <item>Edit hostname in /etc/hostname, /etc/hosts.

      <item>Add to root crontab <verbatim|sudo crontab -e>

      <\itemize>
        <item><verbatim|0 * * * * apt-get update>
      </itemize>

      <item>Console font: <verbatim|dpkg-reconfigure console-setup>

      <item>GnuPG setup

      <\itemize>
        <item>~/.gnupg/gpg.conf: <verbatim|default-key [<text-dots>]>

        <item>~/.gnupg/gpg-agent.conf: <verbatim|no-allow-external-cache>
      </itemize>
    </itemize>
  </compact>

  <subsubsection|Install <name|Windows>>

  Remember to disable <name|fast boot> and use the setup spreadsheet.

  <subsubsection|<name|Firefox> configuration>

  In <verbatim|about:config>, set

  <\compact>
    <\itemize>
      <item><verbatim|widget.content.gtk-theme-override>

      <item><verbatim|ui.key.menuAccessKeyFocuses>
    </itemize>
  </compact>

  <subsubsection|HP printer setup>

  <\verbatim-code>
    sudo apt-get install hplip python3-pyqt5

    sudo hp-setup

    sudo hp-plugin
  </verbatim-code>
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
    <associate|auto-10|<tuple|2.3.5|3>>
    <associate|auto-11|<tuple|2.4|3>>
    <associate|auto-12|<tuple|2.4.1|3>>
    <associate|auto-13|<tuple|2.4.2|3>>
    <associate|auto-14|<tuple|2.4.3|3>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|2.1|1>>
    <associate|auto-4|<tuple|2.2|2>>
    <associate|auto-5|<tuple|2.3|2>>
    <associate|auto-6|<tuple|2.3.1|2>>
    <associate|auto-7|<tuple|2.3.2|2>>
    <associate|auto-8|<tuple|2.3.3|2>>
    <associate|auto-9|<tuple|2.3.4|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Miscellanous
      useful commands<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%427C64338-42582ECE8-EA70>|<link|hyperlink|<id|%427C64338-42582ECE8-EA70>|<url|#>>|up>]>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Procedure<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%427C64338-4258715C8-EA70>|<link|hyperlink|<id|%427C64338-4258715C8-EA70>|<url|#>>|up>]>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Partitioning<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%427C64338-425AA8F68-EA70>|<link|hyperlink|<id|%427C64338-425AA8F68-EA70>|<url|#>>|up>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Installer<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%427C64338-4272E1318-EA70>|<link|hyperlink|<id|%427C64338-4272E1318-EA70>|<url|#>>|up>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Post-install<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%427C64338-4258740F0-EA70>|<link|hyperlink|<id|%427C64338-4258740F0-EA70>|<url|#>>|up>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|2tab>|2.3.1<space|2spc>Set up
      subvolumes<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%427C64338-425BB3D98-EA70>|<link|hyperlink|<id|%427C64338-425BB3D98-EA70>|<url|#>>|up>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|2tab>|2.3.2<space|2spc>Edit
      /etc/fstab<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%427C64338-4258791E8-EA70>|<link|hyperlink|<id|%427C64338-4258791E8-EA70>|<url|#>>|up>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|2tab>|2.3.3<space|2spc>Add
      rootflags<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%427C64338-42582AEC8-EA70>|<link|hyperlink|<id|%427C64338-42582AEC8-EA70>|<url|#>>|up>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|2tab>|2.3.4<space|2spc><with|font-shape|<quote|small-caps>|chroot>
      and set-up<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%427C64338-4257F1430-EA70>|<link|hyperlink|<id|%427C64338-4257F1430-EA70>|<url|#>>|up>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|2tab>|2.3.5<space|2spc>Other
      <with|font-shape|<quote|small-caps>|btrfs>
      partitions<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%427C64338-4257D3830-EA70>|<link|hyperlink|<id|%427C64338-4257D3830-EA70>|<url|#>>|up>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Post-reboot<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%427C64338-4257DF638-EA70>|<link|hyperlink|<id|%427C64338-4257DF638-EA70>|<url|#>>|up>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|2tab>|2.4.1<space|2spc>Install
      <with|font-shape|<quote|small-caps>|Windows><space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%427C64338-42652A8C0-EA70>|<link|hyperlink|<id|%427C64338-42652A8C0-EA70>|<url|#>>|up>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|2tab>|2.4.2<space|2spc><with|font-shape|<quote|small-caps>|Firefox>
      configuration<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%427C64338-425A7E500-EA70>|<link|hyperlink|<id|%427C64338-425A7E500-EA70>|<url|#>>|up>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|2tab>|2.4.3<space|2spc>HP printer
      setup<space|1em><with|font-size|<quote|0.595>|<with|font-shape|<quote|small-caps>|[<locus|<id|%427C64338-42652EAC0-EA70>|<link|hyperlink|<id|%427C64338-42652EAC0-EA70>|<url|#>>|up>]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>
    </associate>
  </collection>
</auxiliary>