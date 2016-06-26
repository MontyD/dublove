<section class="dark second centerAlign animate">
  <div class="flowerGroup left top">
      <i class="icon-Hibiscus one animateScale"></i>
      <i class="icon-Hibiscus-flip small two animateScale"></i>
      <i class="icon-Hibiscus v-small three animateScale"></i>
  </div>
  <div class="flowerGroup right bottom">
    <i class="icon-Hibiscus-flip one animateScale"></i>
    <i class="icon-Hibiscus small two animateScale"></i>
    <i class="icon-Hibiscus-flip v-small three animateScale"></i>
  </div>
    <h2 class="textShadow funFont">A Retro-Chic Ride</h2>
    <div class="imageViewer" id="imageViewer">
        <button id="imgLeft" class="imgLeft"><img src="$ThemeDir/images/left.png" alt="Left" /></button>
        <% loop $FeatureImages %>
          <img class="imgFeature b-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$Photo.SetWidth(400).URL" alt="$Caption">
        <% end_loop %>
        <button id="imgRight" class="imgRight"><img src="$ThemeDir/images/right.png" alt="Right" /></button>
    </div>
    <a href="photos" title="Book now!" class="likeButton primary">View more photos!</a>
</section>
