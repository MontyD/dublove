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
