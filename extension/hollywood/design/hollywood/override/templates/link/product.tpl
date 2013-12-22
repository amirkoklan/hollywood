{literal}
    <script>
        $(function() {
            var index ={/literal}{$key}{$index}{literal};
            var str = "#dialog-";
            var dialog = str.concat(index);
            var str1 = 'a[href=\\';
            var adialog = str1.concat(dialog);
            var str2 = ']';
            var str3 = adialog.concat(str2);
            $(str3).on('click', function(e) {
                e.preventDefault();
                $(dialog).dialog({width: 600, height: 632, modal: true});
            });
        });
    </script>
{/literal}
<div class="product-link">
    <p>{$node.data_map.type.content|wash()}</p>
    <a id="opener" href="#dialog-{$key}{$index}">{$node.data_map.price.data_float|l10n( 'clean_currency' )}&nbsp;&euro;</a>
</div>

<div id="dialog-{$key}{$index}">
    <article class="">
        <div class="title-dialog">
            <div class="star-title"></div>
            <div class="attribute-header-dialog">
                <span>{$node.name|wash()}&nbsp;&nbsp;</span>
                <span class="item-price">
                    {$node.data_map.price.content.inc_vat_price|l10n( 'clean_currency' )}&euro;
                </span>
            </div>
            <div class="star-title"></div>
        </div>
        <form method="post" action={"content/action"|ezurl}>
            <div class="dialog-extras">
                {attribute_view_gui attribute=$node.data_map.additional_options}
            </div>

            <div class="item-buying-action form-inline">
                <button class="btn-product" type="submit" name="ActionAddToBasket">
                    {*'Buy'|i18n("design/ezdemo/block_item/product")*}
                </button>
            </div>
            <input type="hidden" name="ContentNodeID" value="{$node.node_id}" />
            <input type="hidden" name="ContentObjectID" value="{$node.object.id}" />
            <input type="hidden" name="ViewMode" value="full" />
        </form>
    </article>    
</div>