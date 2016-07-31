<!--[if lt IE 9]>
  <main>
    <section>
      <h1>You're using quite an old browser</h1>
      <p>
        From the looks of things you are using a fairly old browser.
        This website will not render correctly in this browser, and
        other websites will probably look odd too!
      </p>
      <p>
        <a href="http://outdatedbrowser.com/en" title="Upgrade your browser">
          Please upgrade your browser using this link</a>
      </p>
    </section>
  </main>
<![endif]-->
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
      <a href="#" title="Menu" class="menu topA rightA"><span class="icon-hamburger"></span></a>
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
            <img class="boxed b-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$backgroundImage.croppedImage(430, 280).URL" alt="$Name" />
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
          <% if $Up.packagesCount() > 2 %>
            <article class="thirds top">
          <% else %>
            <article class="halves top">
          <% end_if %>
            <h3 class="funFont">$Name</h3>
            <p>$ShortDescription</p>
            <a class="likeButton subtle" href="packages/#target__$Name" title="$Name">More info</a>
          </article>
        <% end_loop %>
        <% if $packagesCount > 3 %>
        <div>
          <a class="likeButton subtle" href="packages" title="All packages">View all packages</a>
        </div>
        <% end_if %>
      </section>
    <% end_if %>
  <section class="fourth emphasis last">
    <p class="strongText">Interested? Get in contact with Mike and Jane today<a class="likeButton small" href="contact" title="Conctact us!">Contact us</a></p>
  </section>
</main>
<% include footer %>
