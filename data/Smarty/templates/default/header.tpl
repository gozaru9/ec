<!--{strip}-->
    <div class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div id="logo_area">
                <p id="site_description"></p>
                <a href="<!--{$smarty.const.TOP_URL}-->"><img src="<!--{$TPL_URLPATH}-->img/common/logo.jpg" alt="<!--{$arrSiteInfo.shop_name|h}-->/<!--{$tpl_title|h}-->" /></a>
            </div>
        </div>
        <div class="collapse navbar-collapse">
            <ul id="hederMenu" class="nav navbar-nav">
                <li class="">
                    <a href="<!--{$smarty.const.TOP_URL}-->">HOME</a>
                </li>
                <li class="">
                    <a href="<!--{$smarty.const.HTTPS_URL}-->mypage/login.php">LOGIN</a>
                </li>
                <li class="">
                    <a href="<!--{$smarty.const.HTTPS_URL}-->mypage/login.php">カート</a>
                </li>
                <li class="">
                    <a href="<!--{$smarty.const.ROOT_URLPATH}-->entry/kiyaku.php">ご利用案内</a>
                </li>
                <li>
                    <a href="<!--{$smarty.const.CART_URL}-->">お問い合わせ</a>
                </li>
            </ul>
        </div>
    </div>
        <!--
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>
            
            <div class="carousel-inner">
                <div class="item active">
                    <img src="/ec/html/user_data/packages/default/img/banner/bnr_top_main.jpg" alt="slide-1">
                      <div class="carousel-caption">
                      </div>
                </div>
                <div class="item">
                    <img src="/ec/html/user_data/packages/default/img/banner/bnr_top_main.jpg" alt="slide-2">
                    <div class="carousel-caption">
                    </div>
                </div>
                <div class="item">
                    <img src="/ec/html/user_data/packages/default/img/banner/bnr_top_main.jpg" alt="slide-3">
                    <div class="carousel-caption">
                    </div>
                </div>
            </div>
            
            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
        -->
<!--{/strip}-->
