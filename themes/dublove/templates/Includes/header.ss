<header>
  <nav>
    <a class="home" href="/dublove/" title="Dublove">Dublove</a>
    <ul>
      <% loop $Menu(1) %>
        <li><a class="$LinkingMode" href="$Link" title="$Title">$MenuTitle</a></li>
      <% end_loop %>
    </ul>
  </nav>
</header>
