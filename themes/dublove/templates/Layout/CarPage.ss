<% include header %>

<main>
  <div class="fullWidthImgContainer">
    <div class="large img" style="background-image: url('$mainImage.SetWidth(1200).URL')"></div>
    <div class="medium img" style="background-image: url('$mainImage.SetWidth(900).URL')"></div>
    <div class="small img" style="background-image: url('$mainImage.SetWidth(700).URL')"></div>
  </div>

  <h2>$Name</h2>
  $content
</main>


<% include footer %>
