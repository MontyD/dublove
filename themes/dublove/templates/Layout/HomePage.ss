<header class="centerAlign">
  <section class="container padded">
      <h1 class="main">$SiteConfig.Title</h1>
      <h2 class="main">$tagLine</h2>
      <a href="contact" title="Book now!" class="likeButton primary">Book now</a>
      <div class="flowerGroup leftA down topA">
          <i class="icon-Hibiscus-flip small two animateScale"></i>
          <i class="icon-Hibiscus one animateScale"></i>
          <i class="icon-Hibiscus v-small three animateScale"></i>
      </div>
      <div class="flowerGroup rightA up bottomA">
        <i class="icon-Hibiscus-flip one animateScale"></i>
        <i class="icon-Hibiscus small two animateScale"></i>
        <i class="icon-Hibiscus-flip v-small three animateScale"></i>
      </div>
  </section>
</header>
<main class="overlap">
    <section class="first">
      <article class="innerModal">
        <div class="content">
          <h2 class="topHeading">$sectionOneHeading</h2>
          $sectionOneText
          <img class="boxed b-lazy breakMedium break" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$sectionOneImage.SetWidth(700).URL" alt="$sectionOneHeading" />
        </div>
        <div class="imageContainer hide">
          <img class="b-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$sectionOneImage.SetWidth(700).URL" alt="$sectionOneHeading" />
        </div>
      </article>
    </section>
    <% if $getCarPages() %>
    <section class="second emphasis">
      <div class="flowerGroup rightA topA up animate">
        <i class="icon-Hibiscus-flip-p one animateScale"></i>
        <i class="icon-Hibiscus-p small two animateScale"></i>
        <i class="icon-Hibiscus-flip-p v-small three animateScale"></i>
      </div>
      <h2 class="funFont">Our Dubs</h2>
        <% loop $getCarPages() %>
          <article class="halves centerAlign">
            <h3 class="normalFont">$Name</h3>
            <img class="boxed b-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$mediumImage.SetWidth(400).URL" alt="$Name" />
            <p>
              $mainDescription.FirstParagraph()
            </p>
            <a class="likeButton" href="$Link" title="$Name">Meet $Name</a>
          </article>
        <% end_loop %>
    </section>
    <% end_if %>
    <% if $getPackages() %>
    <section class="third">
      <h2>Our Packages</h2>
      <% loop $getPackages() %>
        <article class="thirds top">
          <h3 class="funFont">$Name</h3>
          <p>$ShortDescription</p>
          <a class="likeButton subtle" href="packages/#target__$Name" title="$Name">More info</a>
        </article>
      <% end_loop %>
    <% end_if %>
  </section>
  <section class="fourth emphasis">
    <p class="strongText">Interested? Get in contact with Mike and Jane today<a class="likeButton small" href="contact" title="Conctact us!">Contact us</a></p>
  </section>
</main>
<% include footer %>
