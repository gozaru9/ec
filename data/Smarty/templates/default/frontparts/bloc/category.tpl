<!--{*

<script type="text/javascript">//<![CDATA[
    $(function(){
        $('#category_area li.level1:last').css('border-bottom', 'none');
    });
//]]></script>

<!--{strip}-->
    <div class="block_outer">
        <div id="category_area">
            <div class="block_body">
                <h2><img src="<!--{$TPL_URLPATH}-->img/title/tit_bloc_category.gif" alt="商品カテゴリ" /></h2>
                <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/bloc/category_tree_fork.tpl" children=$arrTree treeID="" display=1}-->
            </div>
        </div>
    </div>
<!--{/strip}-->
 *}-->
<!--{strip}-->
<div class="block_outer">
    <div class="block_body">
        <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <img src="<!--{$TPL_URLPATH}-->img/title/tit_bloc_category.gif" alt="商品カテゴリ" />
                </div>
                <div class="panel-body">
                    <div class="block_body">
                        <div class="panel-group" id="accordion">
                            <!--{foreach from=$arrTree item=children}-->
                            <!--{* 第一階層を生成 *}-->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a href="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php?category_id=<!--{$children.category_id}-->"<!--{if in_array($children.category_id, $tpl_category_id)}--> class="onlink"<!--{/if}-->><!--{$children.category_name|h}--></a>
                                        <span class="badge"><!--{$children.product_count|default:0}--></span>
                                        
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse<!--{$children.category_id}-->">
                                            <span class="pull-right glyphicon glyphicon-circle-arrow-down"></span>
                                        </a>
                                    </h4>
                                </div>
                                <!--{* 第二階層以降は不特定数のため子要素のテンプレートに処理させる *}-->
                                <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/bloc/category_tree_fork.tpl" childrenList=$children.children treeID=$children.category_id display=1}-->
                            </div>
                            <!--{/foreach}-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--{/strip}-->

 