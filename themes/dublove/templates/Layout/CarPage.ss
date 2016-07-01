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
    <div class="overlayPurple overlay"></div>
    <h1 class="main">$Name</h1>
  </section>
  <section class="emphasis overlap">
    <div class="flowerGroup rightA topA up animate">
      <i class="icon-Hibiscus-flip-p one animateScale"></i>
      <i class="icon-Hibiscus-p small two animateScale"></i>
      <i class="icon-Hibiscus-flip-p v-small three animateScale"></i>
    </div>
    <h2>$tagLine</h2>
    <article class="thirds two centerAlign">
      $mainDescription
    </article>
    <img class="thirds boxed b-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$squareImage.SetWidth(600).URL" alt="$Name" />
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
        <div class="halfWidthImgContainer">
          <div class="img" style="background-image: url($Photo.SetWidth(600).URL)"></div>
          <div class="title"><h3 class="white">$Name</h3></div>
        </div>
        <div class="content">
          $Description
        </div>
      </article>
    <% end_loop %>
  </section>
</main>


<% include footer %>
