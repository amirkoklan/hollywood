{def $children= fetch( 'content', 'list',
        hash( 'parent_node_id', $node.node_id ) )}
<div class="section-container">      
    <span class="section-title">{$node.name}</span>
    {attribute_view_gui attribute=$node.data_map.image image_class='section_view'}
</div>
{foreach $children as $key => $child}
    {node_view_gui view='line' content_node=$child key=$key|sum(1)}
{/foreach}
