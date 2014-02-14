<!--{*
* NEWS BLOK
*
* @auther niikawa
*}-->
<!--{strip}-->
    <div class="panel panel-default">
        <div class="panel-heading">
            新着情報
        </div>
        <div class="panel-body">
            <div class="news_contents">
            <!--{section name=data loop=$arrNews}-->
            <!--{assign var="date_array" value="-"|explode:$arrNews[data].cast_news_date}-->
            <dl class="newslist">
                <dt><!--{$date_array[0]}-->年<!--{$date_array[1]}-->月<!--{$date_array[2]}-->日</dt>
                <dt>
                    <a
                        <!--{if $arrNews[data].news_url}--> href="<!--{$arrNews[data].news_url}-->" <!--{if $arrNews[data].link_method eq "2"}--> target="_blank"
                            <!--{/if}-->
                        <!--{/if}-->
                    >
                        <!--{$arrNews[data].news_title|h|nl2br}--></a>
                </dt>
                <dd class="mini"><!--{$arrNews[data].news_comment|h|nl2br}--></dd>
            </dl>
            <!--{/section}-->
            </div>
        </div>
    </div>
<!--{/strip}-->
