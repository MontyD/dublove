<header>
  <nav>
    <a class="home" href="/dublove/" title="Dublove">Dublove</a>
    <ul>
      <% loop $Menu(1) %>
        <% if $MenuTitle != "Home" %>
          <li><a class="$LinkingMode" href="$Link" title="$Title">$MenuTitle</a></li>
        <% end_if %>
      <% end_loop %>
    </ul>
    <a href="#" title="Menu" class="menu topA rightA"><span class="icon-hamburger"></span></a>
  </nav>
</header>
<!--[if lt IE 9]>
  <main>
    <section>
      <h1>You're using quite an old browser</h1>
      <p>
        From the looks of things you are using a fairly old browser.
        This website will not render correctly in this browser, and
        other websites will probably look odd too!
      </p>
      <p>
        <a href="http://outdatedbrowser.com/en" title="Upgrade your browser">
          Please upgrade your browser using this link</a>
      </p>
    </section>
  </main>
<![endif]-->
