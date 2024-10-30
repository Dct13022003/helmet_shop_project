<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>

                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <meta name="description" content="">
                <meta name="author" content="">

                <title>Helmet-Shop</title>

                <!-- Custom fonts for this template-->
                <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
                <link
                    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
                    rel="stylesheet">

                <!-- Custom styles for this template-->
                <link href="/css/sb-admin-2.min.css" rel="stylesheet">

            </head>

            <body id="page-top">

                <!-- Page Wrapper -->
                <div id="wrapper">

                    <!-- Sidebar -->
                    <jsp:include page="../layout/sidebar.jsp" />
                    <!-- End of Sidebar -->

                    <!-- Content Wrapper -->
                    <div id="content-wrapper" class="d-flex flex-column">

                        <!-- Main Content -->
                        <div id="content">

                            <jsp:include page="../layout/header.jsp" />

                            <!-- Begin Page Content -->
                            <div class="container-fluid">

                                <!-- DataTales Example -->
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">Danh sách người dùng</h6>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
                                                <div class="row d-flex justify-content-end  ">
                                                    <div class="col-sm-12 col-md-6 py-2 d-flex justify-content-end">
                                                        <a href="/admin/user/create"
                                                            class="btn btn-primary btn-icon-split btn-sm">
                                                            <span class="icon text-white-50">
                                                                <i class="fas fa-plus-circle"></i>
                                                            </span>
                                                            <span class="text">Thêm mới</span>
                                                        </a>
                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <table class="table table-bordered dataTable" id="dataTable"
                                                            width="100%" cellspacing="0" role="grid"
                                                            aria-describedby="dataTable_info" style="width: 100%;">
                                                            <thead>
                                                                <tr role="row">
                                                                    <th class="sorting sorting_asc" tabindex="0"
                                                                        aria-controls="dataTable" rowspan="1"
                                                                        colspan="1"
                                                                        aria-label="Name: activate to sort column descending"
                                                                        aria-sort="ascending" style="width: 102.333px;">
                                                                        Name</th>
                                                                    <th class="sorting" tabindex="0"
                                                                        aria-controls="dataTable" rowspan="1"
                                                                        colspan="1"
                                                                        aria-label="Position: activate to sort column ascending"
                                                                        style="width: 153.333px;">Position</th>
                                                                    <th class="sorting" tabindex="0"
                                                                        aria-controls="dataTable" rowspan="1"
                                                                        colspan="1"
                                                                        aria-label="Office: activate to sort column ascending"
                                                                        style="width: 72.3333px;">Office</th>
                                                                    <th class="sorting" tabindex="0"
                                                                        aria-controls="dataTable" rowspan="1"
                                                                        colspan="1"
                                                                        aria-label="Age: activate to sort column ascending"
                                                                        style="width: 30.3333px;">Age</th>
                                                                    <th class="sorting" tabindex="0"
                                                                        aria-controls="dataTable" rowspan="1"
                                                                        colspan="1"
                                                                        aria-label="Start date: activate to sort column ascending"
                                                                        style="width: 74.3333px;">Start date</th>
                                                                    <th class="sorting" tabindex="0"
                                                                        aria-controls="dataTable" rowspan="1"
                                                                        colspan="1"
                                                                        aria-label="Salary: activate to sort column ascending"
                                                                        style="width: 66.3333px;">Salary</th>
                                                                </tr>
                                                            </thead>
                                                            <tfoot>
                                                                <tr>
                                                                    <th rowspan="1" colspan="1">Name</th>
                                                                    <th rowspan="1" colspan="1">Position</th>
                                                                    <th rowspan="1" colspan="1">Office</th>
                                                                    <th rowspan="1" colspan="1">Age</th>
                                                                    <th rowspan="1" colspan="1">Start date</th>
                                                                    <th rowspan="1" colspan="1">Salary</th>
                                                                </tr>
                                                            </tfoot>
                                                            <tbody>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Airi Satou</td>
                                                                    <td class="">Accountant</td>
                                                                    <td>Tokyo</td>
                                                                    <td>33</td>
                                                                    <td>2008/11/28</td>
                                                                    <td>$162,700</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Angelica Ramos</td>
                                                                    <td class="">Chief Executive Officer (CEO)</td>
                                                                    <td>London</td>
                                                                    <td>47</td>
                                                                    <td>2009/10/09</td>
                                                                    <td>$1,200,000</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Ashton Cox</td>
                                                                    <td class="">Junior Technical Author</td>
                                                                    <td>San Francisco</td>
                                                                    <td>66</td>
                                                                    <td>2009/01/12</td>
                                                                    <td>$86,000</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Bradley Greer</td>
                                                                    <td class="">Software Engineer</td>
                                                                    <td>London</td>
                                                                    <td>41</td>
                                                                    <td>2012/10/13</td>
                                                                    <td>$132,000</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Brenden Wagner</td>
                                                                    <td class="">Software Engineer</td>
                                                                    <td>San Francisco</td>
                                                                    <td>28</td>
                                                                    <td>2011/06/07</td>
                                                                    <td>$206,850</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Brielle Williamson</td>
                                                                    <td class="">Integration Specialist</td>
                                                                    <td>New York</td>
                                                                    <td>61</td>
                                                                    <td>2012/12/02</td>
                                                                    <td>$372,000</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Bruno Nash</td>
                                                                    <td class="">Software Engineer</td>
                                                                    <td>London</td>
                                                                    <td>38</td>
                                                                    <td>2011/05/03</td>
                                                                    <td>$163,500</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Caesar Vance</td>
                                                                    <td class="">Pre-Sales Support</td>
                                                                    <td>New York</td>
                                                                    <td>21</td>
                                                                    <td>2011/12/12</td>
                                                                    <td>$106,450</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Cara Stevens</td>
                                                                    <td class="">Sales Assistant</td>
                                                                    <td>New York</td>
                                                                    <td>46</td>
                                                                    <td>2011/12/06</td>
                                                                    <td>$145,600</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Cedric Kelly</td>
                                                                    <td class="">Senior Javascript Developer</td>
                                                                    <td>Edinburgh</td>
                                                                    <td>22</td>
                                                                    <td>2012/03/29</td>
                                                                    <td>$433,060</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Charde Marshall</td>
                                                                    <td class="">Regional Director</td>
                                                                    <td>San Francisco</td>
                                                                    <td>36</td>
                                                                    <td>2008/10/16</td>
                                                                    <td>$470,600</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Colleen Hurst</td>
                                                                    <td class="">Javascript Developer</td>
                                                                    <td>San Francisco</td>
                                                                    <td>39</td>
                                                                    <td>2009/09/15</td>
                                                                    <td>$205,500</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Dai Rios</td>
                                                                    <td class="">Personnel Lead</td>
                                                                    <td>Edinburgh</td>
                                                                    <td>35</td>
                                                                    <td>2012/09/26</td>
                                                                    <td>$217,500</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Donna Snider</td>
                                                                    <td class="">Customer Support</td>
                                                                    <td>New York</td>
                                                                    <td>27</td>
                                                                    <td>2011/01/25</td>
                                                                    <td>$112,000</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Doris Wilder</td>
                                                                    <td class="">Sales Assistant</td>
                                                                    <td>Sidney</td>
                                                                    <td>23</td>
                                                                    <td>2010/09/20</td>
                                                                    <td>$85,600</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Finn Camacho</td>
                                                                    <td class="">Support Engineer</td>
                                                                    <td>San Francisco</td>
                                                                    <td>47</td>
                                                                    <td>2009/07/07</td>
                                                                    <td>$87,500</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Fiona Green</td>
                                                                    <td class="">Chief Operating Officer (COO)</td>
                                                                    <td>San Francisco</td>
                                                                    <td>48</td>
                                                                    <td>2010/03/11</td>
                                                                    <td>$850,000</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Garrett Winters</td>
                                                                    <td class="">Accountant</td>
                                                                    <td>Tokyo</td>
                                                                    <td>63</td>
                                                                    <td>2011/07/25</td>
                                                                    <td>$170,750</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Gavin Cortez</td>
                                                                    <td class="">Team Leader</td>
                                                                    <td>San Francisco</td>
                                                                    <td>22</td>
                                                                    <td>2008/10/26</td>
                                                                    <td>$235,500</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Gavin Joyce</td>
                                                                    <td class="">Developer</td>
                                                                    <td>Edinburgh</td>
                                                                    <td>42</td>
                                                                    <td>2010/12/22</td>
                                                                    <td>$92,575</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Gloria Little</td>
                                                                    <td class="">Systems Administrator</td>
                                                                    <td>New York</td>
                                                                    <td>59</td>
                                                                    <td>2009/04/10</td>
                                                                    <td>$237,500</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Haley Kennedy</td>
                                                                    <td class="">Senior Marketing Designer</td>
                                                                    <td>London</td>
                                                                    <td>43</td>
                                                                    <td>2012/12/18</td>
                                                                    <td>$313,500</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Hermione Butler</td>
                                                                    <td class="">Regional Director</td>
                                                                    <td>London</td>
                                                                    <td>47</td>
                                                                    <td>2011/03/21</td>
                                                                    <td>$356,250</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Herrod Chandler</td>
                                                                    <td class="">Sales Assistant</td>
                                                                    <td>San Francisco</td>
                                                                    <td>59</td>
                                                                    <td>2012/08/06</td>
                                                                    <td>$137,500</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Hope Fuentes</td>
                                                                    <td class="">Secretary</td>
                                                                    <td>San Francisco</td>
                                                                    <td>41</td>
                                                                    <td>2010/02/12</td>
                                                                    <td>$109,850</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Howard Hatfield</td>
                                                                    <td class="">Office Manager</td>
                                                                    <td>San Francisco</td>
                                                                    <td>51</td>
                                                                    <td>2008/12/16</td>
                                                                    <td>$164,500</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Jackson Bradshaw</td>
                                                                    <td class="">Director</td>
                                                                    <td>New York</td>
                                                                    <td>65</td>
                                                                    <td>2008/09/26</td>
                                                                    <td>$645,750</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Jena Gaines</td>
                                                                    <td class="">Office Manager</td>
                                                                    <td>London</td>
                                                                    <td>30</td>
                                                                    <td>2008/12/19</td>
                                                                    <td>$90,560</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Jenette Caldwell</td>
                                                                    <td class="">Development Lead</td>
                                                                    <td>New York</td>
                                                                    <td>30</td>
                                                                    <td>2011/09/03</td>
                                                                    <td>$345,000</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Jennifer Acosta</td>
                                                                    <td class="">Junior Javascript Developer</td>
                                                                    <td>Edinburgh</td>
                                                                    <td>43</td>
                                                                    <td>2013/02/01</td>
                                                                    <td>$75,650</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Jennifer Chang</td>
                                                                    <td class="">Regional Director</td>
                                                                    <td>Singapore</td>
                                                                    <td>28</td>
                                                                    <td>2010/11/14</td>
                                                                    <td>$357,650</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Jonas Alexander</td>
                                                                    <td class="">Developer</td>
                                                                    <td>San Francisco</td>
                                                                    <td>30</td>
                                                                    <td>2010/07/14</td>
                                                                    <td>$86,500</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Lael Greer</td>
                                                                    <td class="">Systems Administrator</td>
                                                                    <td>London</td>
                                                                    <td>21</td>
                                                                    <td>2009/02/27</td>
                                                                    <td>$103,500</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Martena Mccray</td>
                                                                    <td class="">Post-Sales support</td>
                                                                    <td>Edinburgh</td>
                                                                    <td>46</td>
                                                                    <td>2011/03/09</td>
                                                                    <td>$324,050</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Michael Bruce</td>
                                                                    <td class="">Javascript Developer</td>
                                                                    <td>Singapore</td>
                                                                    <td>29</td>
                                                                    <td>2011/06/27</td>
                                                                    <td>$183,000</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Michael Silva</td>
                                                                    <td class="">Marketing Designer</td>
                                                                    <td>London</td>
                                                                    <td>66</td>
                                                                    <td>2012/11/27</td>
                                                                    <td>$198,500</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Michelle House</td>
                                                                    <td class="">Integration Specialist</td>
                                                                    <td>Sidney</td>
                                                                    <td>37</td>
                                                                    <td>2011/06/02</td>
                                                                    <td>$95,400</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Olivia Liang</td>
                                                                    <td class="">Support Engineer</td>
                                                                    <td>Singapore</td>
                                                                    <td>64</td>
                                                                    <td>2011/02/03</td>
                                                                    <td>$234,500</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Paul Byrd</td>
                                                                    <td class="">Chief Financial Officer (CFO)</td>
                                                                    <td>New York</td>
                                                                    <td>64</td>
                                                                    <td>2010/06/09</td>
                                                                    <td>$725,000</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Prescott Bartlett</td>
                                                                    <td class="">Technical Author</td>
                                                                    <td>London</td>
                                                                    <td>27</td>
                                                                    <td>2011/05/07</td>
                                                                    <td>$145,000</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Quinn Flynn</td>
                                                                    <td class="">Support Lead</td>
                                                                    <td>Edinburgh</td>
                                                                    <td>22</td>
                                                                    <td>2013/03/03</td>
                                                                    <td>$342,000</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Rhona Davidson</td>
                                                                    <td class="">Integration Specialist</td>
                                                                    <td>Tokyo</td>
                                                                    <td>55</td>
                                                                    <td>2010/10/14</td>
                                                                    <td>$327,900</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Sakura Yamamoto</td>
                                                                    <td class="">Support Engineer</td>
                                                                    <td>Tokyo</td>
                                                                    <td>37</td>
                                                                    <td>2009/08/19</td>
                                                                    <td>$139,575</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Serge Baldwin</td>
                                                                    <td class="">Data Coordinator</td>
                                                                    <td>Singapore</td>
                                                                    <td>64</td>
                                                                    <td>2012/04/09</td>
                                                                    <td>$138,575</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Shad Decker</td>
                                                                    <td class="">Regional Director</td>
                                                                    <td>Edinburgh</td>
                                                                    <td>51</td>
                                                                    <td>2008/11/13</td>
                                                                    <td>$183,000</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Shou Itou</td>
                                                                    <td class="">Regional Marketing</td>
                                                                    <td>Tokyo</td>
                                                                    <td>20</td>
                                                                    <td>2011/08/14</td>
                                                                    <td>$163,000</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Sonya Frost</td>
                                                                    <td class="">Software Engineer</td>
                                                                    <td>Edinburgh</td>
                                                                    <td>23</td>
                                                                    <td>2008/12/13</td>
                                                                    <td>$103,600</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Suki Burks</td>
                                                                    <td class="">Developer</td>
                                                                    <td>London</td>
                                                                    <td>53</td>
                                                                    <td>2009/10/22</td>
                                                                    <td>$114,500</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Tatyana Fitzpatrick</td>
                                                                    <td class="">Regional Director</td>
                                                                    <td>London</td>
                                                                    <td>19</td>
                                                                    <td>2010/03/17</td>
                                                                    <td>$385,750</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Thor Walton</td>
                                                                    <td class="">Developer</td>
                                                                    <td>New York</td>
                                                                    <td>61</td>
                                                                    <td>2013/08/11</td>
                                                                    <td>$98,540</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Tiger Nixon</td>
                                                                    <td class="">System Architect</td>
                                                                    <td>Edinburgh</td>
                                                                    <td>61</td>
                                                                    <td>2011/04/25</td>
                                                                    <td>$320,800</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Timothy Mooney</td>
                                                                    <td class="">Office Manager</td>
                                                                    <td>London</td>
                                                                    <td>37</td>
                                                                    <td>2008/12/11</td>
                                                                    <td>$136,200</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Unity Butler</td>
                                                                    <td class="">Marketing Designer</td>
                                                                    <td>San Francisco</td>
                                                                    <td>47</td>
                                                                    <td>2009/12/09</td>
                                                                    <td>$85,675</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Vivian Harrell</td>
                                                                    <td class="">Financial Controller</td>
                                                                    <td>San Francisco</td>
                                                                    <td>62</td>
                                                                    <td>2009/02/14</td>
                                                                    <td>$452,500</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Yuri Berry</td>
                                                                    <td class="">Chief Marketing Officer (CMO)</td>
                                                                    <td>New York</td>
                                                                    <td>40</td>
                                                                    <td>2009/06/25</td>
                                                                    <td>$675,000</td>
                                                                </tr>
                                                                <tr class="even">
                                                                    <td class="sorting_1">Zenaida Frank</td>
                                                                    <td class="">Software Engineer</td>
                                                                    <td>New York</td>
                                                                    <td>63</td>
                                                                    <td>2010/01/04</td>
                                                                    <td>$125,250</td>
                                                                </tr>
                                                                <tr class="odd">
                                                                    <td class="sorting_1">Zorita Serrano</td>
                                                                    <td class="">Software Engineer</td>
                                                                    <td>San Francisco</td>
                                                                    <td>56</td>
                                                                    <td>2012/06/01</td>
                                                                    <td>$115,000</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-12 col-md-5">
                                                        <div class="dataTables_info" id="dataTable_info" role="status"
                                                            aria-live="polite">Showing 1 to 57 of 57 entries</div>
                                                    </div>
                                                    <div class="col-sm-12 col-md-7">
                                                        <div class="dataTables_paginate paging_simple_numbers"
                                                            id="dataTable_paginate">
                                                            <ul class="pagination">
                                                                <li class="paginate_button page-item previous disabled"
                                                                    id="dataTable_previous"><a href="#"
                                                                        aria-controls="dataTable" data-dt-idx="0"
                                                                        tabindex="0" class="page-link">Previous</a></li>
                                                                <li class="paginate_button page-item active"><a href="#"
                                                                        aria-controls="dataTable" data-dt-idx="1"
                                                                        tabindex="0" class="page-link">1</a></li>
                                                                <li class="paginate_button page-item next disabled"
                                                                    id="dataTable_next"><a href="#"
                                                                        aria-controls="dataTable" data-dt-idx="2"
                                                                        tabindex="0" class="page-link">Next</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!-- /.container-fluid -->

                        </div>
                        <!-- End of Main Content -->

                        <!-- Footer -->
                        <jsp:include page="../layout/footer.jsp" />
                        <!-- End of Footer -->

                    </div>
                    <!-- End of Content Wrapper -->

                </div>
                <!-- End of Page Wrapper -->

                <!-- Scroll to Top Button-->
                <a class="scroll-to-top rounded" href="#page-top">
                    <i class="fas fa-angle-up"></i>
                </a>

                <!-- Logout Modal-->
                <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <div class="modal-body">Select "Logout" below if you are ready to end your current session.
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                                <a class="btn btn-primary" href="login.html">Logout</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Bootstrap core JavaScript-->
                <script src="/vendor/jquery/jquery.min.js"></script>
                <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

                <!-- Core plugin JavaScript-->
                <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

                <!-- Custom scripts for all pages-->
                <script src="/js/sb-admin-2.min.js"></script>

                <!-- Page level plugins -->
                <script src="/vendor/chart.js/Chart.min.js"></script>

                <!-- Page level custom scripts -->
                <script src="/js/demo/chart-area-demo.js"></script>
                <script src="/js/demo/chart-pie-demo.js"></script>

            </body>

            </html>