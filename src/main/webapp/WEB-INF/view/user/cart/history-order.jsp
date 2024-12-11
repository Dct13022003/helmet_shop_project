<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
                        <link rel="stylesheet" href="/client/css/owl.carousel.css">
                        <link rel="stylesheet" href="/client/css/themify-icons.css">
                        <link rel="stylesheet" href="/client/css/font-awesome.min.css">
                        <link rel="stylesheet" href="/client/css/nice-select.css">
                        <link rel="stylesheet" href="/client/css/nouislider.min.css">
                        <link rel="stylesheet" href="/client/css/bootstrap.css">
                        <link rel="stylesheet" href="/client/css/main.css">
                        <link rel="stylesheet" href="/client/css/custom.css">
                    </head>

                    <body>

                        <!-- Start Header Area -->
                        <jsp:include page="../layout/header.jsp" />
                        <!-- End Header Area -->

                        <!-- Start Banner Area -->
                        <section class="banner-area organic-breadcrumb">
                            <div class="container">
                                <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                                    <div class="col-first">
                                        <h1>Checkout</h1>
                                        <nav class="d-flex align-items-center">
                                            <a href="/">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
                                            <a href="/history-orders">Lịch sử</a>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- End Banner Area -->

                        <!-- Main Content -->
                        <div class="container py-4">
                            <!-- Order Card -->
                            <c:forEach var="order" items="${orders}">
                                <div class="order-card">
                                    <div class="order-header">
                                        Mã đơn hàng: #${order.id}
                                        <span class="float-end">Ngày giao: ${order.create_at}</span>
                                    </div>
                                    <div class="order-body">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <p>Trạng thái:
                                                    <!-- <span class="badge bg-success text-dark">[${order.status}]</span> -->
                                                    <c:if test="${fn:trim(order.status) eq 'CONFIRM'}">
                                                        <span class="badge bg-success text-dark">Thành công</span>
                                                    </c:if>

                                                    <c:if test="${fn:trim(order.status) eq 'PENDING'}">
                                                        <span class="badge bg-warning text-dark ">Đang xử lí</span>

                                                    </c:if>
                                                    <c:if test="${fn:trim(order.status) eq 'DELIVERED'}">
                                                        <span class="badge bg-info text-dark ">Đang Giao</span>

                                                    </c:if>
                                                    <c:if test="${fn:trim(order.status) eq 'CANCELLED'}">
                                                        <span class="badge bg-danger text-dark ">Đã hủy</span>

                                                    </c:if>
                                                </p>
                                                <p>Phương thức thanh toán: <strong>Thanh toán khi nhận hàng</strong></p>
                                            </div>
                                            <div class="col-md-6 text-end">
                                                <p>Tổng tiền: <strong>
                                                        <fmt:formatNumber type="number" value="${order.totalPrice}" />đ
                                                    </strong></p>
                                                <span class="btn-details">Xem chi tiết</span>
                                            </div>
                                        </div>

                                        <!-- Order Details -->
                                        <div class="order-details mt-3">
                                            <h6>Chi tiết đơn hàng:</h6>
                                            <table class="table table-bordered table-striped">
                                                <thead class="table-dark">
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Tên sản phẩm</th>
                                                        <th>Hình ảnh</th>
                                                        <th>Số lượng</th>
                                                        <th>Giá</th>
                                                        <th>Tổng cộng</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="orderDetail" items="${order.orderDetails}"
                                                        varStatus="status">
                                                        <tr>
                                                            <td>${status.index+1}</td>
                                                            <td>${orderDetail.product.code}</td>
                                                            <td>
                                                                <img src="/images/product/${orderDetail.product.avatar}"
                                                                    alt="Product 1" class="rounded-circle">
                                                            </td>
                                                            <td>${orderDetail.quantity}</td>
                                                            <td>
                                                                <fmt:formatNumber type="number"
                                                                    value="${orderDetail.price}" />đ
                                                            </td>
                                                            <td>
                                                                <fmt:formatNumber type="number"
                                                                    value="${orderDetail.quantity*orderDetail.price}" />
                                                                đ
                                                            </td>
                                                        </tr>
                                                    </c:forEach>

                                                </tbody>
                                            </table>
                                            <ul>



                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>



                        </div>
                        <!-- start footer Area -->
                        <footer class="footer-area section_gap">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-3  col-md-6 col-sm-6">
                                        <div class="single-footer-widget">
                                            <h6>About Us</h6>
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt
                                                ut labore dolore
                                                magna aliqua.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-lg-4  col-md-6 col-sm-6">
                                        <div class="single-footer-widget">
                                            <h6>Newsletter</h6>
                                            <p>Stay update with our latest</p>
                                            <div class="" id="mc_embed_signup">

                                                <form target="_blank" novalidate="true"
                                                    action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                                    method="get" class="form-inline">

                                                    <div class="d-flex flex-row">

                                                        <input class="form-control" name="EMAIL"
                                                            placeholder="Enter Email" onfocus="this.placeholder = ''"
                                                            onblur="this.placeholder = 'Enter Email '" required=""
                                                            type="email">


                                                        <button class="click-btn btn btn-default"><i
                                                                class="fa fa-long-arrow-right"
                                                                aria-hidden="true"></i></button>
                                                        <div style="position: absolute; left: -5000px;">
                                                            <input name="b_36c4fd991d266f23781ded980_aefe40901a"
                                                                tabindex="-1" value="" type="text">
                                                        </div>

                                                        <!-- <div class="col-lg-4 col-md-4">
													<button class="bb-btn btn"><span class="lnr lnr-arrow-right"></span></button>
												</div>  -->
                                                    </div>
                                                    <div class="info"></div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3  col-md-6 col-sm-6">
                                        <div class="single-footer-widget mail-chimp">
                                            <h6 class="mb-20">Instragram Feed</h6>
                                            <ul class="instafeed d-flex flex-wrap">
                                                <li><img src="img/i1.jpg" alt=""></li>
                                                <li><img src="img/i2.jpg" alt=""></li>
                                                <li><img src="img/i3.jpg" alt=""></li>
                                                <li><img src="img/i4.jpg" alt=""></li>
                                                <li><img src="img/i5.jpg" alt=""></li>
                                                <li><img src="img/i6.jpg" alt=""></li>
                                                <li><img src="img/i7.jpg" alt=""></li>
                                                <li><img src="img/i8.jpg" alt=""></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-6 col-sm-6">
                                        <div class="single-footer-widget">
                                            <h6>Follow Us</h6>
                                            <p>Let us be social</p>
                                            <div class="footer-social d-flex align-items-center">
                                                <a href="#"><i class="fa fa-facebook"></i></a>
                                                <a href="#"><i class="fa fa-twitter"></i></a>
                                                <a href="#"><i class="fa fa-dribbble"></i></a>
                                                <a href="#"><i class="fa fa-behance"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
                                    <p class="footer-text m-0">
                                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                        Copyright &copy;
                                        <script>document.write(new Date().getFullYear());</script> All rights reserved |
                                        This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by
                                        <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    </p>
                                </div>
                            </div>
                        </footer>
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
                        <script src="/client/js/jquery.magnific-popup.min.js"></script>
                        <script src="/client/js/owl.carousel.min.js"></script>
                        <!--gmaps Js-->
                        <script
                            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
                        <script src="/client/js/gmaps.min.js"></script>
                        <script src="/client/js/main.js"></script>
                        <script>
                            document.querySelectorAll('.btn-details').forEach(button => {
                                button.addEventListener('click', function () {
                                    const details = this.closest('.order-body').querySelector('.order-details');
                                    if (details.style.display === 'block') {
                                        details.style.display = 'none';
                                        this.textContent = 'Xem chi tiết';
                                    } else {
                                        details.style.display = 'block';
                                        this.textContent = 'Ẩn chi tiết';
                                    }
                                });
                            });
                        </script>
                    </body>

                    </html>