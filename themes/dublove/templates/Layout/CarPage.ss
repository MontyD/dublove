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
  <section class="emphasis">
    <div class="flowerGroup rightA topA up animate">
      <i class="icon-Hibiscus-flip-p one animateScale"></i>
      <i class="icon-Hibiscus-p small two animateScale"></i>
      <i class="icon-Hibiscus-flip-p v-small three animateScale"></i>
    </div>
    <h2>Packages</h2>
    <% loop $Packages %>
      <article class="innerModal $EvenOdd">
        <div class="imageContainer">
          <img class="b-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$Photo.SetWidth(700).URL" alt="$Name" />
          <div class="title">
            <h3 class="white">$Name</h3>
          </div>
        </div>
        <div class="content">
          <img class="boxed b-lazy breakMedium break" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$Photo.SetWidth(700).URL" alt="$Name" />
          $Description
          <a class="likeButton subtle" href="#" title="Book now">Book now</a>
        </div>
      </article>
    <% end_loop %>
  </section>
  <section class="last">
      <p class="strongText">Not found what you're looking for? Have a look at our other packages:<a class="likeButton small" href="packages" title="Conctact us!">Packages</a></p>
  </section>
</main>


<% include footer %>
