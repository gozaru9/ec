<!--{strip}-->
<div class="block_outer">
    <div class="block_body">

        <div class="panel panel-default">
            <div class="panel-heading">
                <span class="title"><img src="<!--{$TPL_URLPATH}-->img/title/tit_bloc_cart.gif"alt="現在のカゴの中" /></span>
            </div>
            <div class="panel-body">
                <div class="">
                    <p class="item">合計数量：<span class="attention"><!--{$arrCartList.0.TotalQuantity|number_format|default:0}--></span></p>
                    <p class="total">商品金額：<span class="price"><!--{$arrCartList.0.ProductsTotal|number_format|default:0}-->円</span></p>
                    <!--{*************************************
                         * カゴの中に商品がある場合にのみ表示
                         * 複数の商品種別が存在する場合は非表示
                         *************************************}-->
                    <!--{if $arrCartList.0.TotalQuantity > 0 and $arrCartList.0.free_rule > 0 and !$isMultiple and !$hasDownload}-->
                    <p class="postage">
                        <!--{if $arrCartList.0.deliv_free > 0}-->
                            <span class="point_announce">送料手数料無料まで</span>あと<span class="price"><!--{$arrCartList.0.deliv_free|number_format|default:0}-->円（税込）</span>です。
                        <!--{else}-->
                            現在、送料は「<span class="price">無料</span>」です。
                        <!--{/if}-->
                    </p>
                    <!--{/if}-->
                </div>
            </div>
            <div class="panel-footer"><button type="button" class="btn btn-default">カゴの中を見る</button></div>
        </div>
    </div>
</div>
<!--{/strip}-->
