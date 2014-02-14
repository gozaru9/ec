<!--{strip}-->
<!--{if count($arrBestProducts) > 0}-->
<div class="block_outer　clearfix">
    <div class="panel panel-default">
        <div class="panel-heading">
            <img src="<!--{$TPL_URLPATH}-->img/title/tit_bloc_recommend.png" alt="*" class="title_icon" />
        </div>
        <div class="panel-body">
            <div id="recommend_area">
                <div class="block_body">
                    <div class="row">
                    <!--{foreach from=$arrBestProducts item=arrProduct name="recommend_products"}-->
                        <div class="col-sm-4">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrProduct.product_id|u}-->">
                                        <img src="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrProduct.main_list_image|sfNoImageMainList|h}-->" class="img-rounded img-responsive" alt="<!--{$arrProduct.name|h}-->" />
                                    </a>
                                    <p class="sale_price">
                                        <!--{$smarty.const.SALE_PRICE_TITLE}-->(税込)： <span class="price"><!--{$arrProduct.price02_min_inctax|number_format}--> 円</span>
                                    </p>
                                    <p class="mini comment"><!--{$arrProduct.comment|h|nl2br}--></p>
                                </div>
                                <div class="panel-footer">
                                    <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrProduct.product_id|u}-->"><!--{$arrProduct.name|h}--></a>
                                </div>
                            </div>
                        </div>
                    <!--{/foreach}-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--{/if}-->
<!--{/strip}-->
