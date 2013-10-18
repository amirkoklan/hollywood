{def $children= fetch( 'content', 'list',
        hash( 'parent_node_id', $node.node_id ) )}
{*$children|attribute(show,2)*}
{foreach $children as $child}
{node_view_gui view='line' content_node=$child}
{/foreach}