<% include header %>

<main>
  <div class="flowerGroup leftA down topA hidden-small">
      <i class="icon-Hibiscus-flip small two "></i>
      <i class="icon-Hibiscus one "></i>
      <i class="icon-Hibiscus v-small three "></i>
  </div>
  <section class="fullWidthImgContainer">
    <div class="large img" style="background-image: url('$backgroundImage.croppedImage(1100, 500).URL')"></div>
    <div class="medium img" style="background-image: url('$backgroundImage.croppedImage(900, 500).URL')"></div>
    <div class="small img" style="background-image: url('$backgroundImage.croppedImage(700, 500).URL')"></div>
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
        <img class="boxed b-lazy breakMedium break" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$descriptionImage.SetWidth(700).URL"  alt="$tagLine" />
        <noscript>
          <img class="boxed breakMedium break" src="$descriptionImage.SetWidth(700).URL" alt="$tagLine" />
        </noscript>
      </div>
      <div class="imageContainer hide">
        <img class="b-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$descriptionImage.croppedImage(500, 610).URL"  alt="$tagLine" />
        <noscript>
          <img src="$descriptionImage.croppedImage(500, 610).URL" alt="$tagLine" />
        </noscript>
      </div>
    </article>
  </section>
  <section class="imageViewer">
    <% include featureImageViewer %>
  </section>
  <% if returnPackages() %>
  <section class="emphasis">
    <div class="flowerGroup rightA topA up animate">
      <i class="icon-Hibiscus-flip-p one animateScale"></i>
      <i class="icon-Hibiscus-p small two animateScale"></i>
      <i class="icon-Hibiscus-flip-p v-small three animateScale"></i>
    </div>
    <h2>Packages</h2>
    <% loop $returnPackages() %>
      <article class="innerModal $EvenOdd">
        <div class="imageContainer">
          <% if $Top.Name == 'Frank' %>
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
          <% if $Top.Name == 'Frank' %>
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
    <% end_loop %>
  </section>
  <% end_if %>
  <section class="last">
    <p class="strongText">$lastSentence
      <% if $finalLinkLocation && $finalLinkText %>
        <a class="likeButton small" href="$finalLinkLocation" title="$finalLinkText">$finalLinkText</a>
      <% end_if %>
    </p>
  </section>
</main>


<% include footer %>
