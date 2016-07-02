<% include header %>
<main>
  <section>
    <h1>Packages</h1>
    $Content
  </section>
  <% loop $Packages %>
    <% if $Odd %>
      <section class="emphasis short">
    <% else %>
      <section>
    <% end_if %>
      <article class="innerModal $EvenOdd">
        <div class="imageContainer">
          <% if $FrankDescription %>
            <img class="b-lazy transparent" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$FrankPhoto.SetWidth(700).URL" alt="$Name" />
          <% else %>
            <img class="b-lazy transparent" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$FranniePhoto.SetWidth(700).URL" alt="$Name" />
          <% end_if %>
          <div class="title">
            <h3 class="white">$Name</h3>
          </div>
        </div>
        <div class="content">
          <% if $FrankDescription %>
            <img class="boxed b-lazy breakMedium break" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$FrankPhoto.SetWidth(700).URL" alt="$Name" />
            $FrankDescription
          <% else %>
            <img class="boxed b-lazy breakMedium break" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$FranniePhoto.SetWidth(700).URL" alt="$Name" />
            $FrannieDescription
          <% end_if %>
          <a class="likeButton subtle" href="#" title="Book now">Book now</a>
        </div>
      </article>
    </section>
  <% end_loop %>


</main>

<% include footer %>
