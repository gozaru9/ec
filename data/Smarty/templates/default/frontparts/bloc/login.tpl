<!--{*
* LOGIN BLOK
* @auther niikawa
*}-->
<!--{strip}-->
<div class="block_outer">
    <div class="block_body">
        <div class="panel panel-default">
            <div class="panel-heading">
                <img src="<!--{$TPL_URLPATH}-->img/title/tit_bloc_login.gif" alt="ログイン" />
            </div>
            <div class="panel-body">
                    <form name="login_form" id="login_form"  method="post" action="<!--{$smarty.const.HTTPS_URL}-->frontparts/login_check.php"<!--{if $tpl_login}--> onsubmit="return eccube.checkLoginFormInputted('login_form')"<!--{/if}-->>
                        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
                        <input type="hidden" name="mode" value="login" />
                        <input type="hidden" name="url" value="<!--{$smarty.server.REQUEST_URI|h}-->" />
                            <!--{if $tpl_login}-->
                                <p>ようこそ<br />
                                    <span class="user_name"><!--{$tpl_name1|h}--> <!--{$tpl_name2|h}--> 様</span><br />
                                    <!--{if $smarty.const.USE_POINT !== false}-->
                                        所持ポイント：<span class="point"> <!--{$tpl_user_point|number_format|default:0}--> pt</span>
                                    <!--{/if}-->
                                </p>
                                <!--{if !$tpl_disable_logout}-->
                                    <p class="btn">
                                        <input type="image" class="hover_change_image" src="<!--{$TPL_URLPATH}-->img/button/btn_bloc_logout.jpg" onclick="eccube.fnFormModeSubmit('login_form', 'logout', '', ''); return false;" alt="ログアウト" />
                                    </p>
                                <!--{/if}-->
                            <!--{else}-->
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon glyphicon glyphicon-envelope"></span>
                                    <input type="text" class="form-control" name="login_email" value="<!--{$tpl_login_email|h}-->" style="ime-mode: disabled;"　placeholder="メールアドレス">
                                </div>                            
                            </div>                            
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon glyphicon glyphicon-lock"></span>
                                    <input type="text" class="form-control" name="login_pass" placeholder="">
                                </div>                            
                            </div>                            

                                        <input type="checkbox" name="login_memory" id="login_memory" value="1" <!--{$tpl_login_memory|sfGetChecked:1}--> />
                                        <label for="login_memory"><span>コンピューターに記憶する</span></label>
                                        <a href="<!--{$smarty.const.HTTPS_URL}-->forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->" onclick="eccube.openWindow('<!--{$smarty.const.HTTPS_URL}-->forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->','forget','600','400',{scrollbars:'no',resizable:'no'}); return false;" target="_blank">パスワードを忘れた方はこちら</a>
                            <!--{/if}-->
                    </form>
            </div>
            <div class="panel-footer"><button type="button" class="btn btn-default">LOGIN</button></div>
        </div>
    </div>
</div>
<!--{/strip}-->
