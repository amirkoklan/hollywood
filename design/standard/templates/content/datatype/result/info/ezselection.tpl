{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{section show=$attribute|get_class|eq('ezinformationcollectionattribute')}
{let selected_id_array=$attribute.content}
{section var=Options loop=$attribute.class_content.options}
{section-exclude match=$selected_id_array|contains( $Options.item.id )|not}
{$Options.item.name|wash( xhtml )}{delimiter}<br/>{/delimiter}{/section}
{/let}
{/section}

