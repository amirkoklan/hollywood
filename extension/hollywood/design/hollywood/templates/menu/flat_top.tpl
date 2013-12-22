<div class="navbar main-navi">
    <hr class="nav-collapse"/>
    <hr class="nav-collapse"/>
    <hr class="nav-collapse"/>
    <div id="banner-topmenu" class="container">
        {literal}
            <script type="text/javascript">
                $(document).ready(function() {
                    $("#tabs").tabs({fx: {opacity: "toggle",duration:"fast"}}).tabs("rotate", 5000, true).tabs({event: "click"});
                });</script>
            {/literal}
            {def $banner_images=fetch('content','list',hash('parent_node_id',142,'depth',1))}
        <div id="tabs">
            <ul>
                {foreach $banner_images as $index =>$banner_image}
                    <li><a href="#fragment-{$index|sum(1)}"></a></li>
                    {/foreach}
            </ul>
            {foreach $banner_images as $index => $banner_image}
                <div id="fragment-{$index|sum(1)}">
                    <a href="http://{$banner_image.data_map.url.content}" alt="banner-{$index|sum(1)}"><img src={$banner_image.data_map.image.content[banner].full_path|ezroot}/></a>
                    <a href="http://{$banner_image.data_map.url.content}" alt="banner-{$index|sum(1)}"><img class="liberty-st" src="{'liberty-st.png'|ezimage( 'no' )}" alt="liberty"/></a>
                </div>
            {/foreach}            
        </div>
        {include uri='design:page_header_logo.tpl'}            
    </div>
    <div class="navbar-inner">
        <div class="container">
            <!-- Top menu content: START -->
            <form method="post" action={"/shop/basket/"|ezurl}>
                <input class="checkout-button button" type="submit" onclick="window.location = '{'/shop/basket'|ezurl()}';" value="Checkout" /></form>
            <a class="btn btn-navbar" data-action="toggleclass" data-class="nav-collapse" data-target=".main-navi .nav-collapse">Navigation</a>
            <div class="nav-collapse span7">   
                <ul class="nav">
                    {def $root_node=fetch( 'content', 'node', hash( 'node_id', $pagedata.root_node) )
         $top_menu_items=fetch( 'content', 'list', hash( 'parent_node_id', $root_node.node_id,
                                                          'sort_by', $root_node.sort_array,
                                                          'class_filter_type', 'include',
                                                          'class_filter_array', ezini( 'MenuContentSettings', 'TopIdentifierList', 'menu.ini' ) ) )
         $top_menu_items_count = $top_menu_items|count()
         $item_class = array()
         $current_node_in_path = first_set($pagedata.path_array[1].node_id, 0  )}
                    {if $top_menu_items_count}
                        {foreach $top_menu_items as $key => $item}
                            {set $item_class = cond($current_node_in_path|eq($item.node_id), array("selected"), array())}
                            {if $key|eq(0)}
                                {set $item_class = $item_class|append("firstli")}
                            {/if}
                            {if $top_menu_items_count|eq( $key|inc )}
                                {set $item_class = $item_class|append("lastli")}
                            {/if}
                            {if $item.node_id|eq( $current_node_id )}
                                {set $item_class = $item_class|append("current")}
                            {/if}

                            {if eq( $item.class_identifier, 'link')}
                                <li id="node_id_{$item.node_id}"{if $item_class} class="{$item_class|implode(" ")}"{/if}><a {if eq( $ui_context, 'browse' )}href={concat("content/browse/", $item.node_id)|ezurl}{else}href={$item.data_map.location.content|ezurl}{if and( is_set( $item.data_map.open_in_new_window ), $item.data_map.open_in_new_window.data_int )} target="_blank"{/if}{/if}{if $pagedata.is_edit} onclick="return false
                                                ;"{/if} title="{$item.data_map.location.data_text|wash}" class="menu-item-link" rel={$item.url_alias|ezurl}>{if $item.data_map.location.data_text}{$item.data_map.location.data_text|wash()}{else}{$item.name|wash()}{/if}</a></li>
                                {else}
                                <li id="node_id_{$item.node_id}"{if $item_class} class="{$item_class|implode(" ")}"{/if}><a href={if eq( $ui_context, 'browse' )}{concat("content/browse/", $item.node_id)|ezurl}{else}{$item.url_alias|ezurl}{/if}{if $pagedata.is_edit} onclick="return false;"{/if}>{$item.name|wash()}</a></li>
                            {/if}
                            {/foreach}
                        {/if}
                        {undef $root_node $top_menu_items $item_class $top_menu_items_count $current_node_in_path}
                </ul>
                <!-- Top menu content: END -->
            </div>

            {if eq($pagedata.class_identifier,'section')}

                {def $basket=fetch( 'shop', 'basket' )}
                <h2 style="display:inline;">Warenkorb</h2>
                <span class="login-shop"><a href="{"/user/login/"|ezurl('no')}">Log in</a></span>
                <div class="shopping-cart">
                    {section name=Basket show=$basket.items}
                        <form method="post" action={"/shop/basket/"|ezurl}>
                            <div class="table-wrapper">
                                <table class="shopping-table">

                                    {section name=ProductItem loop=$basket.items sequence=array(bgdark, bglight)}
                                        <tr class="bgdark">
                                            <td><input type="checkbox" name="RemoveProductItemDeleteList[]" value="{$Basket:ProductItem:item.id}" /></td>
                                            <td><input type="text" name="ProductItemCountList[]" value="{$Basket:ProductItem:item.item_count}" size="1" /></td>
                                            <td colspan="7"><input type="hidden" name="ProductItemIDList[]" value="{$Basket:ProductItem:item.id}" />{$Basket:ProductItem:item.object_name}</td>
                                            <td>{$Basket:ProductItem:item.total_price_inc_vat|l10n( 'clean_currency' )}&euro;</td>
                                        </tr>
                                        {section show=$Basket:ProductItem:item.item_object.option_list}
                                            {section name=Options loop=$Basket:ProductItem:item.item_object.option_list sequence=array(bglight, bgdark)}
                                                <tr>
                                                    <td width="33%">{$Basket:ProductItem:Options:item.value}</td>
                                                    <td width="33%">{$Basket:ProductItem:Options:item.price|l10n( 'clean_currency' )}&euro; </td>
                                                </tr>
                                            {/section}


                                        {/section}
                                    {/section}

                                </table>



                            </div>
                            <div class="total-cart">
                                <span>Summe:</span>
                                <span>{$basket.total_inc_vat|l10n( 'clean_currency' )}&nbsp;&euro;</span>
                            </div>
                            {if not($basket.is_empty)}
                                <input class="button" type="submit" name="RemoveProductItemButton" value="{'Remove'|i18n('design/ezdemo/shop/basket')}" />
                                <input class="button" type="submit" name="StoreChangesButton" value="{'Update'|i18n('design/ezdemo/shop/basket')}" />
                                <input class="button" type="submit" onclick="window.location = '{/shop/basket|ezurl()}';" value="Checkout" />
                            {/if}
                        </form>
                    {/section}
                </div>
            {/if}
        </div>
    </div>
</div>
{undef $basket}