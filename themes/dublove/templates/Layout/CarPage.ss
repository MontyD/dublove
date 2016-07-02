<% include header %>

<main>
  <div class="flowerGroup leftA down topA">
      <i class="icon-Hibiscus-flip small two "></i>
      <i class="icon-Hibiscus one "></i>
      <i class="icon-Hibiscus v-small three "></i>
  </div>
  <section class="fullWidthImgContainer">
    <div class="large img" style="background-image: url('$largeImage.SetWidth(1200).URL')"></div>
    <div class="medium img" style="background-image: url('$mediumImage.SetWidth(900).URL')"></div>
    <div class="small img" style="background-image: url('$smallImage.SetWidth(700).URL')"></div>
    <h1 class="carTitle">$Name</h1>
  </section>
  <section class="emphasis overlap">
    <div class="flowerGroup rightA topA up animate">
      <i class="icon-Hibiscus-flip-p one animateScale"></i>
      <i class="icon-Hibiscus-p small two animateScale"></i>
      <i class="icon-Hibiscus-flip-p v-small three animateScale"></i>
    </div>
    <h2>$tagLine</h2>
    <article class="innerModal">
      <div class="content">
        $mainDescription
        <img class="boxed b-lazy breakMedium break" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$squareImage.SetWidth(1000).URL"  alt="$tagLine" />
      </div>
      <div class="imageContainer hide">
        <img class="b-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$squareImage.SetWidth(700).URL"  alt="$tagLine" />
      </div>
    </article>
  </section>
  <section>
    <% include featureImageViewer %>
  </section>
  <% if getPackages() %>
  <section class="emphasis">
    <div class="flowerGroup rightA topA up animate">
      <i class="icon-Hibiscus-flip-p one animateScale"></i>
      <i class="icon-Hibiscus-p small two animateScale"></i>
      <i class="icon-Hibiscus-flip-p v-small three animateScale"></i>
    </div>
    <h2>Packages</h2>
    <% loop $getPackages() %>
      <article class="innerModal $EvenOdd">
        <div class="imageContainer">
          <% if $Top.Name == 'Frank' %>
            <img class="b-lazy transparent" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$FrankPhoto.SetWidth(700).URL" alt="$Name" />
          <% else %>
            <img class="b-lazy transparent" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$FranniePhoto.SetWidth(700).URL" alt="$Name" />
          <% end_if %>
          <div class="title">
            <h3 class="white">$Name</h3>
          </div>
        </div>
        <div class="content">
          <% if $Top.Name == 'Frank' %>
            <img class="boxed b-lazy breakMedium break" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$FrankPhoto.SetWidth(700).URL" alt="$Name" />
            $FrankDescription
          <% else %>
            <img class="boxed b-lazy breakMedium break" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$FranniePhoto.SetWidth(700).URL" alt="$Name" />
            $FrannieDescription
          <% end_if %>
          <a class="likeButton subtle" href="#" title="Book now">Book now</a>
        </div>
      </article>
    <% end_loop %>
  </section>
  <% end_if %>
  <section class="last">
      <p class="strongText">Not found what you're looking for? Have a look at our other packages:<a class="likeButton small" href="packages" title="Conctact us!">Packages</a></p>
  </section>
</main>


<% include footer %>
