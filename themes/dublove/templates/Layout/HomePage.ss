<header>
  <section class="container padded">
      <h1 class="main">$SiteConfig.Title</h1>
      <h2 class="main">$tagLine</h2>
      <a href="contact" title="Book now!" class="likeButton primary">Book now</a>
      <div class="flowerGroup leftA topA">
          <i class="icon-Hibiscus-flip small two animateScale"></i>
          <i class="icon-Hibiscus one animateScale"></i>
          <i class="icon-Hibiscus v-small three animateScale"></i>
      </div>
      <div class="flowerGroup rightA bottomA">
        <i class="icon-Hibiscus-flip one animateScale"></i>
        <i class="icon-Hibiscus small two animateScale"></i>
        <i class="icon-Hibiscus-flip v-small three animateScale"></i>
      </div>
  </section>
</header>
<main class="overlap">
    <section class="centerAlign first">
      <article class="thirds two centerAlign">
        <h2>$sectionOneHeading</h2>
        $sectionOneText
      </article>
      <img class="thirds boxed b-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$sectionOneImage.SetWidth(600).URL" alt="Campervan" />
    </section>
    <section class="centerAlign second emphasis">
      <h2 class="funFont">Our Dubs</h2>
      <% if $getCarPages() %>
        <% loop $getCarPages() %>
          <article class="halves centerAlign">
            <h3 class="normalFont">$Name</h3>
            <img class="boxed b-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$mainImage.SetWidth(400).URL" alt="$Name" />
            <p>
              $mainDescription
            </p>
            <a class="likeButton" href="$Link" title="$Name">More info</a>
          </article>
        <% end_loop %>
      <% end_if %>
    </section>
</main>
