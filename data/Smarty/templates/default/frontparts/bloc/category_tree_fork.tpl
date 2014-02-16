<!--{*
<!--{strip}-->
    <ul <!--{if $treeID != ""}-->id="<!--{$treeID}-->"<!--{/if}--> style="<!--{if !$display}-->display: none;<!--{/if}-->">
        <!--{foreach from=$children item=child}-->
            <li class="level<!--{$child.level}--><!--{if in_array($child.category_id, $tpl_category_id)}--> onmark<!--{/if}-->">
                <p><a href="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php?category_id=<!--{$child.category_id}-->"<!--{if in_array($child.category_id, $tpl_category_id)}--> class="onlink"<!--{/if}-->><!--{$child.category_name|h}-->(<!--{$child.product_count|default:0}-->)</a></p>
                <!--{if in_array($child.category_id, $arrParentID)}-->
                    <!--{assign var=disp_child value=1}-->
                <!--{else}-->
                    <!--{assign var=disp_child value=0}-->
                <!--{/if}-->
                <!--{if isset($child.children|smarty:nodefaults)}-->
                    <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/bloc/category_tree_fork.tpl" children=$child.children display=$disp_child}-->
                <!--{/if}-->
            </li>
        <!--{/foreach}-->
    </ul>
<!--{/strip}-->
 *}-->
<!--{strip}-->
        <div id="collapse<!--{$treeID}-->" class="panel-collapse collapse in">
        <!--{foreach from=$childrenList item=child}-->
            <div class="panel-body">
                <a href="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php?category_id=<!--{$child.category_id}-->"<!--{if in_array($child.category_id, $tpl_category_id)}--> class="onlink"<!--{/if}-->><!--{$child.category_name|h}--></a>
                <span class="badge"><!--{$child.product_count|default:0}--></span>
                <!--{if in_array($child.category_id, $arrParentID)}-->
                    <!--{assign var=disp_child value=1}-->

                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse<!--{$child.category_id}-->">
                    <span class="pull-right glyphicon glyphicon-circle-arrow-down"></span>
                </a>
                    
                <!--{else}-->
                    <!--{assign var=disp_child value=0}-->
                <!--{/if}-->
                <!--{if isset($child.children|smarty:nodefaults)}-->
                    <div class="panel-group" id="accordion">
                        <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/bloc/category_tree_fork.tpl" childrenList=$child.children treeID=$child.category_id display=$disp_child}-->
                    </div>
                <!--{/if}-->
            </div>
    <!--{/foreach}-->
    </div>
<!--{/strip}-->
