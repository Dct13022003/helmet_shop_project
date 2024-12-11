<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <!DOCTYPE html>
        <html lang="zxx" class="no-js">

        <head>
          <!-- Mobile Specific Meta -->
          <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
          <!-- Favicon-->
          <link rel="shortcut icon" href="img/fav.png">
          <!-- Author Meta -->
          <meta name="author" content="CodePixar">
          <!-- Meta Description -->
          <meta name="description" content="">
          <!-- Meta Keyword -->
          <meta name="keywords" content="">
          <!-- meta character set -->
          <meta charset="UTF-8">
          <!-- Site Title -->
          <title>Karma Shop</title>
          <!--
        CSS
        ============================================= -->
          <link rel="stylesheet" href="/client/css/linearicons.css">
          <link rel="stylesheet" href="/client/css/font-awesome.min.css">
          <link rel="stylesheet" href="/client/css/themify-icons.css">
          <link rel="stylesheet" href="/client/css/bootstrap.css">
          <link rel="stylesheet" href="/client/css/owl.carousel.css">
          <link rel="stylesheet" href="/client/css/nice-select.css">
          <link rel="stylesheet" href="/client/css/nouislider.min.css">
          <link rel="stylesheet" href="/client/css/ion.rangeSlider.css" />
          <link rel="stylesheet" href="/client/css/ion.rangeSlider.skinFlat.css" />
          <link rel="stylesheet" href="/client/css/magnific-popup.css">
          <link rel="stylesheet" href="/client/css/main.css">
          <style>
            /* Định dạng ảnh */
            .zoom-image {
              width: 300px;
              height: auto;
              transition: transform 0.3s ease;
              /* Hiệu ứng chuyển đổi mượt mà */
            }

            /* Khi hover vào ảnh */
            .zoom-image:hover {
              transform: scale(1.1);
              /* Phóng to 10% */
            }
          </style>
        </head>

        <body>

          <!-- Start Header Area -->
          <jsp:include page="../layout/header.jsp" />
          <!-- End Header Area -->

          <!-- start banner Area -->
          <section class="banner-area">
            <div class="container">
              <div class="row fullscreen align-items-center justify-content-start">
                <div class="col-lg-12">
                  <div class="active-banner-slider owl-carousel">
                    <div class="row single-slide">
                      <div class="col-lg-5">
                        <div class="banner-content">
                          <h1>Nike New <br>Collection!</h1>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt
                            ut
                            labore et
                            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                          <div class="add-bag d-flex align-items-center">
                            <a class="add-btn" href=""><span class="lnr lnr-cross"></span></a>
                            <span class="add-text text-uppercase">Add to Bag</span>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-7">
                        <div class="banner-img">
                          <img class="img-fluid" src="img/banner/banner-img.png" alt="">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
          <!-- End banner Area -->

          <!-- start features Area -->
          <section class="features-area section_gap">
            <div class="container">
              <div class="row features-inner">
                <!-- single features -->
                <div class="col-lg-3 col-md-6 col-sm-6">
                  <div class="single-features">
                    <div class="f-icon">
                      <img src="img/features/f-icon1.png" alt="">
                    </div>
                    <h6>Free Delivery</h6>
                    <p>Free Shipping on all order</p>
                  </div>
                </div>
                <!-- single features -->
                <div class="col-lg-3 col-md-6 col-sm-6">
                  <div class="single-features">
                    <div class="f-icon">
                      <img src="img/features/f-icon2.png" alt="">
                    </div>
                    <h6>Return Policy</h6>
                    <p>Free Shipping on all order</p>
                  </div>
                </div>
                <!-- single features -->
                <div class="col-lg-3 col-md-6 col-sm-6">
                  <div class="single-features">
                    <div class="f-icon">
                      <img src="img/features/f-icon3.png" alt="">
                    </div>
                    <h6>24/7 Support</h6>
                    <p>Free Shipping on all order</p>
                  </div>
                </div>
                <!-- single features -->
                <div class="col-lg-3 col-md-6 col-sm-6">
                  <div class="single-features">
                    <div class="f-icon">
                      <img src="img/features/f-icon4.png" alt="">
                    </div>
                    <h6>Secure Payment</h6>
                    <p>Free Shipping on all order</p>
                  </div>
                </div>
              </div>
            </div>
          </section>
          <!-- end features Area -->

          <!-- Start category Area -->
          <section class="category-area">
            <div class="container">
              <div class="row justify-content-center">
                <div class="col-lg-6 text-center">
                  <div class="section-title">
                    <h1>Category</h1>
                  </div>
                </div>
                <div class="col-lg-8 col-md-12">
                  <div class="row">
                    <c:forEach var="category" items="${categories}">
                      <div class="col-lg-4 col-md-8">
                        <div class="single-deal">
                          <div class="overlay"></div>
                          <img class="img-fluid w-100" src="/img/category/${category.thumbnail}" alt="">
                          <a href="img/category/c1.jpg" class="img-pop-up" target="_blank">
                            <div class="deal-details">
                              <h6 class="deal-title">${category.name}</h6>
                            </div>
                          </a>
                        </div>
                      </div>
                    </c:forEach>
                  </div>

                </div>
              </div>
            </div>
          </section>
          <!-- End category Area -->

          <!-- start product Area -->
          <section class="owl-carousel active-product-area section_gap">
            <!-- single product slide -->
            <div class="single-product-slider">
              <div class="container">
                <div class="row justify-content-center">
                  <div class="col-lg-6 text-center">
                    <div class="section-title">
                      <h1>Sản phẩm nổi bật</h1>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore et
                        dolore
                        magna aliqua.</p>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <c:forEach var="product" items="${productNBs}">
                    <!-- single product -->
                    <div class="col-lg-3 col-md-6">

                      <div class="single-product">

                        <img class="img-fluid zoom-image" src="/img/product/${product.avatar}" alt="">

                        <div class="product-details">
                          <a href="">
                            <h6>${product.code}</h6>
                          </a>
                          <div class="price" style="color: rgb(253, 114, 8);">

                            <c:if test="${product.product_sizes[0].price !=null}">
                              <fmt:formatNumber type="number" value="${product.product_sizes[0].price}" /> đ
                            </c:if>

                            <div class="prd-bottom">

                              <a href="" class="social-info">
                                <span class="ti-bag"></span>
                                <p class="hover-text">add to bag</p>
                              </a>

                              <a href="/product/${product.id}" class="social-info">
                                <span class="lnr lnr-move"></span>
                                <p class="hover-text">view more</p>
                              </a>
                            </div>
                          </div>
                        </div>

                      </div>

                    </div>
                  </c:forEach>
                </div>
              </div>
              <!-- single product slide -->
              <div class="single-product-slider">
                <div class="container">
                  <div class="row justify-content-center">
                    <div class="col-lg-6 text-center">
                      <div class="section-title">
                        <h1>Sắp về</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                          labore et
                          dolore
                          magna aliqua.</p>
                      </div>
                    </div>
                  </div>

                </div>
              </div>
          </section>
          <!-- end product Area -->

          <!-- Start exclusive deal Area -->
          <section class="exclusive-deal-area">
            <div class="container-fluid">
              <div class="row justify-content-center align-items-center">
                <div class="col-lg-6 no-padding exclusive-left">
                  <div class="row clock_sec clockdiv" id="clockdiv">
                    <div class="col-lg-12">
                      <h1>Exclusive Hot Deal Ends Soon!</h1>
                      <p>Who are in extremely love with eco friendly system.</p>
                    </div>
                    <div class="col-lg-12">
                      <div class="row clock-wrap">
                        <div class="col clockinner1 clockinner">
                          <h1 class="days">150</h1>
                          <span class="smalltext">Days</span>
                        </div>
                        <div class="col clockinner clockinner1">
                          <h1 class="hours">23</h1>
                          <span class="smalltext">Hours</span>
                        </div>
                        <div class="col clockinner clockinner1">
                          <h1 class="minutes">47</h1>
                          <span class="smalltext">Mins</span>
                        </div>
                        <div class="col clockinner clockinner1">
                          <h1 class="seconds">59</h1>
                          <span class="smalltext">Secs</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <a href="" class="primary-btn">Shop Now</a>
                </div>
                <div class="col-lg-6 no-padding exclusive-right">
                  <div class="active-exclusive-product-slider">
                    <!-- single exclusive carousel -->
                    <div class="single-exclusive-slider">
                      <img class="img-fluid" src="img/product/e-p1.png" alt="">
                      <div class="product-details">
                        <div class="price">
                          <h6>$150.00</h6>
                          <h6 class="l-through">$210.00</h6>
                        </div>
                        <h4>addidas New Hammer sole
                          for Sports person</h4>
                        <div class="add-bag d-flex align-items-center justify-content-center">
                          <a class="add-btn" href=""><span class="ti-bag"></span></a>
                          <span class="add-text text-uppercase">Add to Bag</span>
                        </div>
                      </div>
                    </div>
                    <!-- single exclusive carousel -->
                    <div class="single-exclusive-slider">
                      <img class="img-fluid" src="img/product/e-p1.png" alt="">
                      <div class="product-details">
                        <div class="price">
                          <h6>$150.00</h6>
                          <h6 class="l-through">$210.00</h6>
                        </div>
                        <h4>addidas New Hammer sole
                          for Sports person</h4>
                        <div class="add-bag d-flex align-items-center justify-content-center">
                          <a class="add-btn" href=""><span class="ti-bag"></span></a>
                          <span class="add-text text-uppercase">Add to Bag</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
          <!-- End exclusive deal Area -->

          <!-- Start brand Area -->
          <section class="brand-area section_gap">
            <div class="container">
              <div class="row">
                <a class="col single-img" href="#">
                  <img class="img-fluid d-block mx-auto" src="img/brand/1.png" alt="">
                </a>
                <a class="col single-img" href="#">
                  <img class="img-fluid d-block mx-auto" src="img/brand/2.png" alt="">
                </a>
                <a class="col single-img" href="#">
                  <img class="img-fluid d-block mx-auto" src="img/brand/3.png" alt="">
                </a>
                <a class="col single-img" href="#">
                  <img class="img-fluid d-block mx-auto" src="img/brand/4.png" alt="">
                </a>
                <a class="col single-img" href="#">
                  <img class="img-fluid d-block mx-auto" src="img/brand/5.png" alt="">
                </a>
              </div>
            </div>
          </section>
          <!-- End brand Area -->



          <!-- start footer Area -->
          <jsp:include page="../layout/footer.jsp" />
          <!-- End footer Area -->

          <script src="/client/js/vendor/jquery-2.2.4.min.js"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
            integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
            crossorigin="anonymous"></script>
          <script src="/client/js/vendor/bootstrap.min.js"></script>
          <script src="/client/js/jquery.ajaxchimp.min.js"></script>
          <script src="/client/js/jquery.nice-select.min.js"></script>
          <script src="/client/js/jquery.sticky.js"></script>
          <script src="/client/js/nouislider.min.js"></script>
          <script src="/client/js/countdown.js"></script>
          <script src="/client/js/jquery.magnific-popup.min.js"></script>
          <script src="/client/js/owl.carousel.min.js"></script>
          <!--gmaps Js-->
          <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
          <script src="/client/js/gmaps.min.js"></script>
          <script src="/client/js/main.js"></script>
        </body>

        </html>