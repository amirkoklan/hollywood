{*Food LineView*}
{def $products=fetch('content','list',hash('parent_node_id',$node.node_id,'depth',1))}
<article class="selected-products">
    <div class="food-image">
        {attribute_view_gui image_class=original attribute=$node.data_map.image}
    </div>
    <div class="product-info">
        <div class="attribute-header">
            <h3>{$node.name|wash()}</h3>
            {attribute_view_gui attribute=$node.data_map.description}
            <img src="{'dots.png'|ezimage( 'no' )}" alt="Dots" />&nbsp;<img src="{'dots.png'|ezimage( 'no' )}" alt="Dots" />
        </div>
        <div class="products-children">
            {foreach $products as $index => $product}
                {node_view_gui view='link' content_node=$product index=$index|sum(1) key=$key}
            {/foreach}           
        </div>
    </div>
</article>
{undef $products}