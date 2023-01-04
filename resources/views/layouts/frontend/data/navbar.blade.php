 <!-- Offcanvas Menu Begin -->
 <div class="offcanvas-menu-overlay"></div>
 <div class="offcanvas-menu-wrapper">
     <div class="offcanvas__close">+</div>
     <ul class="offcanvas__widget">
         <li><span class="icon_search search-switch"></span></li>
         <li><a href="#"><span class="icon_bag_alt"></span>
             <div class="tip">2</div>
         </a></li>
     </ul>
     <div class="offcanvas__logo">
         <a href="{{ url('/') }}"><img src="{{ asset('ashion') }}/img/logo.png" alt=""></a>
     </div>
     <div id="mobile-menu-wrap"></div>
 </div>
 <!-- Offcanvas Menu End -->

 <!-- Header Section Begin -->
 <header class="header">
     <div class="container-fluid">
         <div class="row">
             <div class="col-xl-3 col-lg-2">
                <br>
                 <div class="">
                     <h2 class="title-logo">{{ $app_name }}</h2>
                 </div>
             </div>
             <div class="col-xl-6 col-lg-7 text-center">
                 <nav class="header__menu">
                     <ul>
                         <li class="{{ request()->is('/') ? 'active' : '' }}"><a href="{{ url('/') }}">Home</a></li>
                         <li class="{{ request()->is('product*') ? 'active' : '' }}"><a href="{{ route('product.index') }}">Shop</a></li>
                         <li class="{{ request()->is('category*') ? 'active' : '' }}"><a href="{{ route('category.index') }}">Category</a></li>
                         <li><a href="{{ route('about.index') }}">About Us</a></li>
                         @auth
                          <li class="{{ request()->is('category*') ? 'active' : '' }}"><a href="#"><i class="fa fa-angle-down"></i> {{ auth()->user()->name }}</a>
                            <ul class="dropdown">
                                <li><a href="{{ route('transaction.index') }}">Shopping History</a></li>
                                {{-- <li><a href="{{ route('account.index') }}">Pengaturan Akun</a></li> --}}
                                <form method="POST" action="{{ route('logout') }}">
                                    @csrf
                                    <li>
                                        <a href="{{ route('logout')  }}" onclick="event.preventDefault();
                                        this.closest('form').submit();" > Logout
                                    </a>
                                    </li>
                                </form>
                            </ul>
                        </li>
                             @else
                             <li><a href="{{ route('login') }}">Login</a></li>
                         @endauth
                     </ul>
                 </nav>
             </div>
             <div class="col-lg-3">
                 <div class="header__right">
                     <ul class="header__right__widget">
                         <li><span class="icon_search search-switch"></span></li>
                         <li><a href="{{ route('cart.index') }}"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
                                
                             <div class="tip">
                                 {{ $totalCart ?? 0 }}
                             </div>
                         </a></li>
                     </ul>
                 </div>
             </div>
         </div>
         <div class="canvas__open">
             <i class="fa fa-bars"></i>
         </div>
     </div>
 </header>
 <!-- Header Section End -->