<!-- Footer area: START -->
{def $footer_links= fetch( 'content', 'list',
        hash( 'parent_node_id', 134 ) )}
<footer> 
    <hr />    
    <div class="container footer">
        <ul class="nav-collapse">
            {foreach $footer_links as $link}
                <li><a href={$link.url|ezurl('yes')}>{$link.name|wash()}</a></li>
                {/foreach}
                {if $current_user.is_logged_in}
                <li id="myprofile"><a href={"/user/edit/"|ezurl} title="{'My profile'|i18n('design/ezdemo/pagelayout')}">{'My profile'|i18n('design/ezdemo/pagelayout')}</a></li>
                <li id="logout"><a href={"/user/logout"|ezurl} title="{'Logout'|i18n('design/ezdemo/pagelayout')}">{'Logout'|i18n('design/ezdemo/pagelayout')} ( {$current_user.contentobject.name|wash} )</a></li>
                {else}
                    {if ezmodule( 'user/register' )}
                    <li id="registeruser"><a href={"/user/register"|ezurl} title="{'Register'|i18n('design/ezdemo/pagelayout')}">{'Register'|i18n('design/ezdemo/pagelayout')}</a></li>
                    {/if}
                <li id="login" class="transition-showed">
                    <a href="#login" title="show login form" class="show-login-form">{'Login'|i18n('design/ezdemo/pagelayout')}</a>
                    <a href="#" title="hide login form" class="hide-login-form">{'Login'|i18n('design/ezdemo/pagelayout')}</a>
                    <form class="login-form span3" action="{'/user/login'|ezurl( 'no' )}" method="post">
                        <fieldset>
                            <label>
                                <span class="hidden">{'Username'|i18n('design/ezdemo/pagelayout')}</span>
                                <input type="text" name="Login" id="login-username" placeholder="Username">
                            </label>
                            <label>
                                <span class="hidden">{'Password'|i18n('design/ezdemo/pagelayout')}</span>
                                <input type="password" name="Password" id="login-password" placeholder="Password">
                            </label>
                            <div class="clearfix">
                                <a href="{'/user/forgotpassword'|ezurl( 'no' )}" class="forgot-password">{'Forgot your password?'|i18n('design/ezdemo/pagelayout')}</a>
                                <button class="btn btn-warning pull-right" type="submit">
                                    {'Login'|i18n('design/ezdemo/pagelayout')}
                                </button>
                            </div>
                        </fieldset>
                        <input type="hidden" name="RedirectURI" value="" />
                    </form>
                </li>
            {/if}
        </ul>
    </div>
</footer>
<hr />
<hr />
<hr />
<!-- Footer area: END -->
{undef $footer_links $link}
