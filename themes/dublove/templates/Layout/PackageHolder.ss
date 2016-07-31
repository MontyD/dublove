<% include header %>
<main>
  <section>
    <h1>Packages</h1>
    <article class="subtleText">
      $Content
    </article>
  </section>
  <% loop $Packages %>
    <% if $Odd %>
      <section class="emphasis short">
    <% else %>
      <section>
    <% end_if %>
      <article class="innerModal $EvenOdd" id="target__$Name">
        <div class="imageContainer">
          <% if $FrankDescription %>
            <img class="b-lazy transparent" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$FrankPhoto.SetWidth(700).URL" alt="$Name" />
            <noscript>
              <img class="transparent" src="$FrankPhoto.SetWidth(700).URL" alt="$Name" />
            </noscript>
          <% else %>
            <img class="b-lazy transparent" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$FranniePhoto.SetWidth(700).URL" alt="$Name" />
            <noscript>
              <img class="transparent" src="$FranniePhoto.SetWidth(700).URL" alt="$Name" />
            </noscript>
          <% end_if %>
          <div class="title">
            <h3 class="white">$Name</h3>
          </div>
        </div>
        <div class="content">
          <% if $FrankDescription %>
            <img class="boxed b-lazy breakMedium break" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$FrankPhoto.SetWidth(700).URL" alt="$Name" />
            <noscript>
              <img class="boxed breakMedium break" src="$FrankPhoto.SetWidth(700).URL" alt="$Name" />
            </noscript>
            $FrankDescription
          <% else %>
            <img class="boxed b-lazy breakMedium break" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$FranniePhoto.SetWidth(700).URL" alt="$Name" />
            <noscript>
              <img class="boxed breakMedium break" src="$FranniePhoto.SetWidth(700).URL" alt="$Name" />
            </noscript>
            $FrannieDescription
          <% end_if %>
          <a class="likeButton subtle" href="contact" title="Book now">Book now</a>
        </div>
      </article>
    </section>
  <% end_loop %>
  <section>
      <p class="strongText">Not found what you're looking for? Get in contact<a class="likeButton small" href="contact" title="Conctact us!">Contact us</a></p>
  </section>
</main>

<% include footer %>
