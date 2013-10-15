<?php
// URI:       design/admin2/templates/details.tpl
// Filename:  design/admin2/templates/details.tpl
// Timestamp: 1342179294 (Fri Jul 13 11:34:54 UTC 2012)
$oldSetArray_0cb4ae21f8ba20a82e649df37ebcff88 = isset( $setArray ) ? $setArray : array();
$setArray = array();
$tpl->Level++;
if ( $tpl->Level > 40 )
{
$text = $tpl->MaxLevelWarning;$tpl->Level--;
return;
}
$eZTemplateCompilerCodeDate = 1074699607;
if ( !defined( 'EZ_TEMPLATE_COMPILER_COMMON_CODE' ) )
include_once( 'var/ezdemo_site/cache/template/compiled/common.php' );

$text .= '<div class="block">


<table class="list" cellspacing="0" summary="Knoten und Objekt Details wie Ersteller, Erstellungsdatum, zugewiesene Sektionen, Anzahl der Versionen und Übersetzungen, Knoten ID und Objekt ID.">
<tr>
    <th>Ersteller</th>
    <th>Erstellt</th>
    <th>Sektion</th>
    <th class="tight">Versionen</th>
    <th class="tight">Übersetzungen</th>
    <th class="tight">Knoten ID</th>
    <th class="tight">Objekt ID</th>
</tr>
<tr class="bglight">
    <td><a href=';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var2 = compiledFetchAttribute( $var1, 'object' );
unset( $var1 );
$var1 = $var2;
$var2 = compiledFetchAttribute( $var1, 'owner' );
unset( $var1 );
$var1 = $var2;
$var2 = compiledFetchAttribute( $var1, 'main_node' );
unset( $var1 );
$var1 = $var2;
$var2 = compiledFetchAttribute( $var1, 'url_alias' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();

eZURI::transformURI( $var1, false, eZURI::getTransformURIMode() );
$var1 = '"' . $var1 . '"';
$var = $var1;
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '>';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var2 = compiledFetchAttribute( $var1, 'object' );
unset( $var1 );
$var1 = $var2;
$var2 = compiledFetchAttribute( $var1, 'owner' );
unset( $var1 );
$var1 = $var2;
$var2 = compiledFetchAttribute( $var1, 'name' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
$var = htmlspecialchars( $var1 );
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '</a></td>
    <td>';
unset( $var );
// l10nTransformation begin
$locale = eZLocale::instance();
// l10nTransformation: static
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var2 = compiledFetchAttribute( $var1, 'object' );
unset( $var1 );
$var1 = $var2;
$var2 = compiledFetchAttribute( $var1, 'published' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
unset( $var2 );
if (! isset( $var2 ) ) $var2 = NULL;
while ( is_object( $var2 ) and method_exists( $var2, 'templateValue' ) )
    $var2 = $var2->templateValue();
while ( is_object( $var2 ) and method_exists( $var2, 'templateValue' ) )
    $var2 = $var2->templateValue();
unset( $var3 );
if (! isset( $var3 ) ) $var3 = NULL;
while ( is_object( $var3 ) and method_exists( $var3, 'templateValue' ) )
    $var3 = $var3->templateValue();
while ( is_object( $var3 ) and method_exists( $var3, 'templateValue' ) )
    $var3 = $var3->templateValue();

$var = $locale->formatShortDateTime( $var1 );
unset( $var1, $var2, $var3 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '</td>
    <td>
    <form name="changesection" id="changesection" method="post" action=';
unset( $var );
unset( $var1 );
unset( $var3 );
unset( $var3 );
$var3 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var4 = compiledFetchAttribute( $var3, 'object' );
unset( $var3 );
$var3 = $var4;
$var4 = compiledFetchAttribute( $var3, 'id' );
unset( $var3 );
$var3 = $var4;
if (! isset( $var3 ) ) $var3 = NULL;
while ( is_object( $var3 ) and method_exists( $var3, 'templateValue' ) )
    $var3 = $var3->templateValue();
while ( is_object( $var3 ) and method_exists( $var3, 'templateValue' ) )
    $var3 = $var3->templateValue();
$var1 = ( 'content/edit/' . $var3 );
unset( $var3 );
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();

eZURI::transformURI( $var1, false, eZURI::getTransformURIMode() );
$var1 = '"' . $var1 . '"';
$var = $var1;
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '>
    <input type="hidden" name="RedirectRelativeURI" value="';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var1 = compiledFetchAttribute( $var, 'url_alias' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '" />
    <input type="hidden" name="ChangeSectionOnly" value="1" />

    <select id="selected-section-id" name="SelectedSectionId">
    ';
// foreach begins
$skipDelimiter = true;
if ( !isset( $fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_8 ) ) $fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_8 = array();
$fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_8[] = compact( 'fe_array_e0c1a825dc8e300075bc150462a8b4ec_8', 'fe_array_keys_e0c1a825dc8e300075bc150462a8b4ec_8', 'fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_8', 'fe_n_items_processed_e0c1a825dc8e300075bc150462a8b4ec_8', 'fe_i_e0c1a825dc8e300075bc150462a8b4ec_8', 'fe_key_e0c1a825dc8e300075bc150462a8b4ec_8', 'fe_val_e0c1a825dc8e300075bc150462a8b4ec_8', 'fe_offset_e0c1a825dc8e300075bc150462a8b4ec_8', 'fe_max_e0c1a825dc8e300075bc150462a8b4ec_8', 'fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_8', 'fe_first_val_e0c1a825dc8e300075bc150462a8b4ec_8', 'fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_8' );
unset( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_8 );
unset( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_8 );
$fe_array_e0c1a825dc8e300075bc150462a8b4ec_8 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$fe_array_e0c1a825dc8e300075bc150462a8b4ec_81 = compiledFetchAttribute( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_8, 'object' );
unset( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_8 );
$fe_array_e0c1a825dc8e300075bc150462a8b4ec_8 = $fe_array_e0c1a825dc8e300075bc150462a8b4ec_81;
$fe_array_e0c1a825dc8e300075bc150462a8b4ec_81 = compiledFetchAttribute( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_8, 'allowed_assign_section_list' );
unset( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_8 );
$fe_array_e0c1a825dc8e300075bc150462a8b4ec_8 = $fe_array_e0c1a825dc8e300075bc150462a8b4ec_81;
if (! isset( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_8 ) ) $fe_array_e0c1a825dc8e300075bc150462a8b4ec_8 = NULL;
while ( is_object( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_8 ) and method_exists( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_8, 'templateValue' ) )
    $fe_array_e0c1a825dc8e300075bc150462a8b4ec_8 = $fe_array_e0c1a825dc8e300075bc150462a8b4ec_8->templateValue();

$fe_array_keys_e0c1a825dc8e300075bc150462a8b4ec_8 = is_array( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_8 ) ? array_keys( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_8 ) : array();
$fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_8 = count( $fe_array_keys_e0c1a825dc8e300075bc150462a8b4ec_8 );
$fe_n_items_processed_e0c1a825dc8e300075bc150462a8b4ec_8 = 0;
$fe_offset_e0c1a825dc8e300075bc150462a8b4ec_8 = 0;
$fe_max_e0c1a825dc8e300075bc150462a8b4ec_8 = $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_8 - $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_8;
$fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_8 = false;
if ( $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_8 < 0 || $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_8 >= $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_8 )
{
    $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_8 = ( $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_8 < 0 ) ? 0 : $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_8;
    if ( $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_8 || $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_8 < 0 )
 {
        eZDebug::writeWarning("Invalid 'offset' parameter specified: '$fe_offset_e0c1a825dc8e300075bc150462a8b4ec_8'. Array count: $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_8");   
}
}
if ( $fe_max_e0c1a825dc8e300075bc150462a8b4ec_8 < 0 || $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_8 + $fe_max_e0c1a825dc8e300075bc150462a8b4ec_8 > $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_8 )
{
    if ( $fe_max_e0c1a825dc8e300075bc150462a8b4ec_8 < 0 )
 eZDebug::writeWarning("Invalid 'max' parameter specified: $fe_max_e0c1a825dc8e300075bc150462a8b4ec_8");
    $fe_max_e0c1a825dc8e300075bc150462a8b4ec_8 = $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_8 - $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_8;
}
if ( $fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_8 )
{
    $fe_first_val_e0c1a825dc8e300075bc150462a8b4ec_8 = $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_8 - 1 - $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_8;
    $fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_8  = 0;
}
else
{
    $fe_first_val_e0c1a825dc8e300075bc150462a8b4ec_8 = $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_8;
    $fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_8  = $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_8 - 1;
}
// foreach
for ( $fe_i_e0c1a825dc8e300075bc150462a8b4ec_8 = $fe_first_val_e0c1a825dc8e300075bc150462a8b4ec_8; $fe_n_items_processed_e0c1a825dc8e300075bc150462a8b4ec_8 < $fe_max_e0c1a825dc8e300075bc150462a8b4ec_8 && ( $fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_8 ? $fe_i_e0c1a825dc8e300075bc150462a8b4ec_8 >= $fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_8 : $fe_i_e0c1a825dc8e300075bc150462a8b4ec_8 <= $fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_8 ); $fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_8 ? $fe_i_e0c1a825dc8e300075bc150462a8b4ec_8-- : $fe_i_e0c1a825dc8e300075bc150462a8b4ec_8++ )
{
$fe_key_e0c1a825dc8e300075bc150462a8b4ec_8 = $fe_array_keys_e0c1a825dc8e300075bc150462a8b4ec_8[$fe_i_e0c1a825dc8e300075bc150462a8b4ec_8];
$fe_val_e0c1a825dc8e300075bc150462a8b4ec_8 = $fe_array_e0c1a825dc8e300075bc150462a8b4ec_8[$fe_key_e0c1a825dc8e300075bc150462a8b4ec_8];
$vars[$rootNamespace]['section'] = $fe_val_e0c1a825dc8e300075bc150462a8b4ec_8;
$text .= '        ';
// if begins
unset( $if_cond );
unset( $if_cond1 );
unset( $if_cond1 );
$if_cond1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'section', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['section'] : null;
$if_cond2 = compiledFetchAttribute( $if_cond1, 'id' );
unset( $if_cond1 );
$if_cond1 = $if_cond2;
if (! isset( $if_cond1 ) ) $if_cond1 = NULL;
while ( is_object( $if_cond1 ) and method_exists( $if_cond1, 'templateValue' ) )
    $if_cond1 = $if_cond1->templateValue();
unset( $if_cond2 );
unset( $if_cond2 );
$if_cond2 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$if_cond3 = compiledFetchAttribute( $if_cond2, 'object' );
unset( $if_cond2 );
$if_cond2 = $if_cond3;
$if_cond3 = compiledFetchAttribute( $if_cond2, 'section_id' );
unset( $if_cond2 );
$if_cond2 = $if_cond3;
if (! isset( $if_cond2 ) ) $if_cond2 = NULL;
while ( is_object( $if_cond2 ) and method_exists( $if_cond2, 'templateValue' ) )
    $if_cond2 = $if_cond2->templateValue();
$if_cond = ( ( $if_cond1 ) == ( $if_cond2 ) );
unset( $if_cond1, $if_cond2 );
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '        <option value="';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'section', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['section'] : null;
$var1 = compiledFetchAttribute( $var, 'id' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '" selected="selected">';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'section', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['section'] : null;
$var2 = compiledFetchAttribute( $var1, 'name' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
$var = htmlspecialchars( $var1 );
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '</option>
        ';
}
else
{
$text .= '        <option value="';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'section', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['section'] : null;
$var1 = compiledFetchAttribute( $var, 'id' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '">';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'section', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['section'] : null;
$var2 = compiledFetchAttribute( $var1, 'name' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
$var = htmlspecialchars( $var1 );
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '</option>
        ';
}
unset( $if_cond );
// if ends

$text .= '    ';
$fe_n_items_processed_e0c1a825dc8e300075bc150462a8b4ec_8++;
} // foreach
$skipDelimiter = false;
if ( count( $fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_8 ) ) extract( array_pop( $fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_8 ) );

else
{

unset( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_8 );

unset( $fe_array_keys_e0c1a825dc8e300075bc150462a8b4ec_8 );

unset( $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_8 );

unset( $fe_n_items_processed_e0c1a825dc8e300075bc150462a8b4ec_8 );

unset( $fe_i_e0c1a825dc8e300075bc150462a8b4ec_8 );

unset( $fe_key_e0c1a825dc8e300075bc150462a8b4ec_8 );

unset( $fe_val_e0c1a825dc8e300075bc150462a8b4ec_8 );

unset( $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_8 );

unset( $fe_max_e0c1a825dc8e300075bc150462a8b4ec_8 );

unset( $fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_8 );

unset( $fe_first_val_e0c1a825dc8e300075bc150462a8b4ec_8 );

unset( $fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_8 );

unset( $fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_8 );

}

// foreach ends
$text .= '    </select>
    <input id="tab-details-set-section" type="submit" value="Setzen" name="SectionEditButton" class="button" />
    </form>

    </td>
    <td class="number" align="right">';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var1 = compiledFetchAttribute( $var, 'object' );
unset( $var );
$var = $var1;
$var1 = compiledFetchAttribute( $var, 'versions' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$varData = array( 'value' => $var );
$tpl->processOperator( 'count',
                       array (
),
                       $rootNamespace, $currentNamespace, $varData, false, false );
$var = $varData['value'];
unset( $varData );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '</td>
    <td class="number" align="right">';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var1 = compiledFetchAttribute( $var, 'contentobject_version_object' );
unset( $var );
$var = $var1;
$var1 = compiledFetchAttribute( $var, 'language_list' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$varData = array( 'value' => $var );
$tpl->processOperator( 'count',
                       array (
),
                       $rootNamespace, $currentNamespace, $varData, false, false );
$var = $varData['value'];
unset( $varData );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '</td>
    <td class="number" align="right">';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var1 = compiledFetchAttribute( $var, 'node_id' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '</td>
    <td class="number" align="right">';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var1 = compiledFetchAttribute( $var, 'object' );
unset( $var );
$var = $var1;
$var1 = compiledFetchAttribute( $var, 'id' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '</td>
</tr>
</table>
</div>

<div class="block">
<table class="list" cellspacing="0" summary="Node Remote ID and Object Remote ID">
    <tr>
        <th>Node Remote ID</th>
        <th>Object Remote ID</th>
    </tr>
    <tr>
         <td>';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var2 = compiledFetchAttribute( $var1, 'remote_id' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
$var = htmlspecialchars( $var1 );
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '</td>
         <td>';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var2 = compiledFetchAttribute( $var1, 'object' );
unset( $var1 );
$var1 = $var2;
$var2 = compiledFetchAttribute( $var1, 'remote_id' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
$var = htmlspecialchars( $var1 );
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '</td>
    </tr>
</table>
</div>

<br />

<div class="block">
<h3>Zustand des Objekts</h3>


<form name="statesform" method="post" action="/hollywood/index.php/site_admin/state/assign">
<input type="hidden" name="ObjectID" value="';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var1 = compiledFetchAttribute( $var, 'object' );
unset( $var );
$var = $var1;
$var1 = compiledFetchAttribute( $var, 'id' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '" />
<input type="hidden" name="RedirectRelativeURI" value="';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var1 = compiledFetchAttribute( $var, 'url_alias' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '" />

<table id="tab-details-states-list" class="list" cellspacing="0" summary="Zustände und ihre Gruppen für das aktuelle Objekt.">';
// if begins
unset( $if_cond );
unset( $if_cond );
$if_cond = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'states_count', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['states_count'] : null;
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '    <tr>
        <th class="tight">Zustandsgruppe</th>
        <th class="wide">Verfügbare Zustände</th>
    </tr>

    ';
// foreach begins
$skipDelimiter = true;
// creating sequence variables for \{foreach} loop
$foreach_sequence_array_e0c1a825dc8e300075bc150462a8b4ec_10 = array (
  0 => 'bglight',
  1 => 'bgdark',
);
$foreach_sequence_var_e0c1a825dc8e300075bc150462a8b4ec_10 = current( $foreach_sequence_array_e0c1a825dc8e300075bc150462a8b4ec_10 );

if ( !isset( $fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_10 ) ) $fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_10 = array();
$fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_10[] = compact( 'fe_array_e0c1a825dc8e300075bc150462a8b4ec_10', 'fe_array_keys_e0c1a825dc8e300075bc150462a8b4ec_10', 'fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_10', 'fe_n_items_processed_e0c1a825dc8e300075bc150462a8b4ec_10', 'fe_i_e0c1a825dc8e300075bc150462a8b4ec_10', 'fe_key_e0c1a825dc8e300075bc150462a8b4ec_10', 'fe_val_e0c1a825dc8e300075bc150462a8b4ec_10', 'fe_offset_e0c1a825dc8e300075bc150462a8b4ec_10', 'fe_max_e0c1a825dc8e300075bc150462a8b4ec_10', 'fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_10', 'fe_first_val_e0c1a825dc8e300075bc150462a8b4ec_10', 'fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_10' );
unset( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_10 );
unset( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_10 );
$fe_array_e0c1a825dc8e300075bc150462a8b4ec_10 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'states', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['states'] : null;
if (! isset( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_10 ) ) $fe_array_e0c1a825dc8e300075bc150462a8b4ec_10 = NULL;
while ( is_object( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_10 ) and method_exists( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_10, 'templateValue' ) )
    $fe_array_e0c1a825dc8e300075bc150462a8b4ec_10 = $fe_array_e0c1a825dc8e300075bc150462a8b4ec_10->templateValue();

$fe_array_keys_e0c1a825dc8e300075bc150462a8b4ec_10 = is_array( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_10 ) ? array_keys( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_10 ) : array();
$fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_10 = count( $fe_array_keys_e0c1a825dc8e300075bc150462a8b4ec_10 );
$fe_n_items_processed_e0c1a825dc8e300075bc150462a8b4ec_10 = 0;
$fe_offset_e0c1a825dc8e300075bc150462a8b4ec_10 = 0;
$fe_max_e0c1a825dc8e300075bc150462a8b4ec_10 = $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_10 - $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_10;
$fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_10 = false;
if ( $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_10 < 0 || $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_10 >= $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_10 )
{
    $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_10 = ( $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_10 < 0 ) ? 0 : $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_10;
    if ( $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_10 || $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_10 < 0 )
 {
        eZDebug::writeWarning("Invalid 'offset' parameter specified: '$fe_offset_e0c1a825dc8e300075bc150462a8b4ec_10'. Array count: $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_10");   
}
}
if ( $fe_max_e0c1a825dc8e300075bc150462a8b4ec_10 < 0 || $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_10 + $fe_max_e0c1a825dc8e300075bc150462a8b4ec_10 > $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_10 )
{
    if ( $fe_max_e0c1a825dc8e300075bc150462a8b4ec_10 < 0 )
 eZDebug::writeWarning("Invalid 'max' parameter specified: $fe_max_e0c1a825dc8e300075bc150462a8b4ec_10");
    $fe_max_e0c1a825dc8e300075bc150462a8b4ec_10 = $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_10 - $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_10;
}
if ( $fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_10 )
{
    $fe_first_val_e0c1a825dc8e300075bc150462a8b4ec_10 = $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_10 - 1 - $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_10;
    $fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_10  = 0;
}
else
{
    $fe_first_val_e0c1a825dc8e300075bc150462a8b4ec_10 = $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_10;
    $fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_10  = $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_10 - 1;
}
// foreach
for ( $fe_i_e0c1a825dc8e300075bc150462a8b4ec_10 = $fe_first_val_e0c1a825dc8e300075bc150462a8b4ec_10; $fe_n_items_processed_e0c1a825dc8e300075bc150462a8b4ec_10 < $fe_max_e0c1a825dc8e300075bc150462a8b4ec_10 && ( $fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_10 ? $fe_i_e0c1a825dc8e300075bc150462a8b4ec_10 >= $fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_10 : $fe_i_e0c1a825dc8e300075bc150462a8b4ec_10 <= $fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_10 ); $fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_10 ? $fe_i_e0c1a825dc8e300075bc150462a8b4ec_10-- : $fe_i_e0c1a825dc8e300075bc150462a8b4ec_10++ )
{
$fe_key_e0c1a825dc8e300075bc150462a8b4ec_10 = $fe_array_keys_e0c1a825dc8e300075bc150462a8b4ec_10[$fe_i_e0c1a825dc8e300075bc150462a8b4ec_10];
$fe_val_e0c1a825dc8e300075bc150462a8b4ec_10 = $fe_array_e0c1a825dc8e300075bc150462a8b4ec_10[$fe_key_e0c1a825dc8e300075bc150462a8b4ec_10];
$vars[$rootNamespace]['allowed_assign_state_info'] = $fe_val_e0c1a825dc8e300075bc150462a8b4ec_10;
// setting current sequence value
$vars[$rootNamespace]['sequence'] = $foreach_sequence_var_e0c1a825dc8e300075bc150462a8b4ec_10;
$text .= '    <tr class="';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'sequence', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['sequence'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '">
        <td>';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'allowed_assign_state_info', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['allowed_assign_state_info'] : null;
$var2 = compiledFetchAttribute( $var1, 'group' );
unset( $var1 );
$var1 = $var2;
$var2 = compiledFetchAttribute( $var1, 'current_translation' );
unset( $var1 );
$var1 = $var2;
$var2 = compiledFetchAttribute( $var1, 'name' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
$var = htmlspecialchars( $var1 );
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '</td>
        <td>
            <select name="SelectedStateIDList[]" ';
// if begins
unset( $if_cond );
unset( $if_cond1 );
unset( $if_cond1 );
$if_cond1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'allowed_assign_state_info', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['allowed_assign_state_info'] : null;
$if_cond2 = compiledFetchAttribute( $if_cond1, 'states' );
unset( $if_cond1 );
$if_cond1 = $if_cond2;
if (! isset( $if_cond1 ) ) $if_cond1 = NULL;
while ( is_object( $if_cond1 ) and method_exists( $if_cond1, 'templateValue' ) )
    $if_cond1 = $if_cond1->templateValue();
$if_cond1Data = array( 'value' => $if_cond1 );
$tpl->processOperator( 'count',
                       array (
),
                       $rootNamespace, $currentNamespace, $if_cond1Data, false, false );
$if_cond1 = $if_cond1Data['value'];
unset( $if_cond1Data );
if (! isset( $if_cond1 ) ) $if_cond1 = NULL;
while ( is_object( $if_cond1 ) and method_exists( $if_cond1, 'templateValue' ) )
    $if_cond1 = $if_cond1->templateValue();
$if_cond = ( ( $if_cond1 ) == ( 1 ) );
unset( $if_cond1 );
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= 'disabled="disabled"';
}
unset( $if_cond );
// if ends

$text .= '>
            ';
// foreach begins
$skipDelimiter = true;
if ( !isset( $fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_9 ) ) $fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_9 = array();
$fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_9[] = compact( 'fe_array_e0c1a825dc8e300075bc150462a8b4ec_9', 'fe_array_keys_e0c1a825dc8e300075bc150462a8b4ec_9', 'fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_9', 'fe_n_items_processed_e0c1a825dc8e300075bc150462a8b4ec_9', 'fe_i_e0c1a825dc8e300075bc150462a8b4ec_9', 'fe_key_e0c1a825dc8e300075bc150462a8b4ec_9', 'fe_val_e0c1a825dc8e300075bc150462a8b4ec_9', 'fe_offset_e0c1a825dc8e300075bc150462a8b4ec_9', 'fe_max_e0c1a825dc8e300075bc150462a8b4ec_9', 'fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_9', 'fe_first_val_e0c1a825dc8e300075bc150462a8b4ec_9', 'fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_9' );
unset( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_9 );
unset( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_9 );
$fe_array_e0c1a825dc8e300075bc150462a8b4ec_9 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'allowed_assign_state_info', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['allowed_assign_state_info'] : null;
$fe_array_e0c1a825dc8e300075bc150462a8b4ec_91 = compiledFetchAttribute( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_9, 'states' );
unset( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_9 );
$fe_array_e0c1a825dc8e300075bc150462a8b4ec_9 = $fe_array_e0c1a825dc8e300075bc150462a8b4ec_91;
if (! isset( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_9 ) ) $fe_array_e0c1a825dc8e300075bc150462a8b4ec_9 = NULL;
while ( is_object( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_9 ) and method_exists( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_9, 'templateValue' ) )
    $fe_array_e0c1a825dc8e300075bc150462a8b4ec_9 = $fe_array_e0c1a825dc8e300075bc150462a8b4ec_9->templateValue();

$fe_array_keys_e0c1a825dc8e300075bc150462a8b4ec_9 = is_array( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_9 ) ? array_keys( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_9 ) : array();
$fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_9 = count( $fe_array_keys_e0c1a825dc8e300075bc150462a8b4ec_9 );
$fe_n_items_processed_e0c1a825dc8e300075bc150462a8b4ec_9 = 0;
$fe_offset_e0c1a825dc8e300075bc150462a8b4ec_9 = 0;
$fe_max_e0c1a825dc8e300075bc150462a8b4ec_9 = $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_9 - $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_9;
$fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_9 = false;
if ( $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_9 < 0 || $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_9 >= $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_9 )
{
    $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_9 = ( $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_9 < 0 ) ? 0 : $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_9;
    if ( $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_9 || $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_9 < 0 )
 {
        eZDebug::writeWarning("Invalid 'offset' parameter specified: '$fe_offset_e0c1a825dc8e300075bc150462a8b4ec_9'. Array count: $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_9");   
}
}
if ( $fe_max_e0c1a825dc8e300075bc150462a8b4ec_9 < 0 || $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_9 + $fe_max_e0c1a825dc8e300075bc150462a8b4ec_9 > $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_9 )
{
    if ( $fe_max_e0c1a825dc8e300075bc150462a8b4ec_9 < 0 )
 eZDebug::writeWarning("Invalid 'max' parameter specified: $fe_max_e0c1a825dc8e300075bc150462a8b4ec_9");
    $fe_max_e0c1a825dc8e300075bc150462a8b4ec_9 = $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_9 - $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_9;
}
if ( $fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_9 )
{
    $fe_first_val_e0c1a825dc8e300075bc150462a8b4ec_9 = $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_9 - 1 - $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_9;
    $fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_9  = 0;
}
else
{
    $fe_first_val_e0c1a825dc8e300075bc150462a8b4ec_9 = $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_9;
    $fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_9  = $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_9 - 1;
}
// foreach
for ( $fe_i_e0c1a825dc8e300075bc150462a8b4ec_9 = $fe_first_val_e0c1a825dc8e300075bc150462a8b4ec_9; $fe_n_items_processed_e0c1a825dc8e300075bc150462a8b4ec_9 < $fe_max_e0c1a825dc8e300075bc150462a8b4ec_9 && ( $fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_9 ? $fe_i_e0c1a825dc8e300075bc150462a8b4ec_9 >= $fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_9 : $fe_i_e0c1a825dc8e300075bc150462a8b4ec_9 <= $fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_9 ); $fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_9 ? $fe_i_e0c1a825dc8e300075bc150462a8b4ec_9-- : $fe_i_e0c1a825dc8e300075bc150462a8b4ec_9++ )
{
$fe_key_e0c1a825dc8e300075bc150462a8b4ec_9 = $fe_array_keys_e0c1a825dc8e300075bc150462a8b4ec_9[$fe_i_e0c1a825dc8e300075bc150462a8b4ec_9];
$fe_val_e0c1a825dc8e300075bc150462a8b4ec_9 = $fe_array_e0c1a825dc8e300075bc150462a8b4ec_9[$fe_key_e0c1a825dc8e300075bc150462a8b4ec_9];
$vars[$rootNamespace]['state'] = $fe_val_e0c1a825dc8e300075bc150462a8b4ec_9;
$text .= '                <option value="';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'state', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['state'] : null;
$var1 = compiledFetchAttribute( $var, 'id' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '" ';
// if begins
unset( $if_cond );
unset( $if_cond1 );
unset( $if_cond1 );
$if_cond1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$if_cond2 = compiledFetchAttribute( $if_cond1, 'object' );
unset( $if_cond1 );
$if_cond1 = $if_cond2;
$if_cond2 = compiledFetchAttribute( $if_cond1, 'state_id_array' );
unset( $if_cond1 );
$if_cond1 = $if_cond2;
if (! isset( $if_cond1 ) ) $if_cond1 = NULL;
while ( is_object( $if_cond1 ) and method_exists( $if_cond1, 'templateValue' ) )
    $if_cond1 = $if_cond1->templateValue();
unset( $if_cond2 );
unset( $if_cond2 );
$if_cond2 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'state', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['state'] : null;
$if_cond3 = compiledFetchAttribute( $if_cond2, 'id' );
unset( $if_cond2 );
$if_cond2 = $if_cond3;
if (! isset( $if_cond2 ) ) $if_cond2 = NULL;
while ( is_object( $if_cond2 ) and method_exists( $if_cond2, 'templateValue' ) )
    $if_cond2 = $if_cond2->templateValue();
if( is_string( $if_cond1 ) )
{
  $if_cond = ( strpos( $if_cond1, $if_cond2 ) !== false );
}
else if ( is_array( $if_cond1 ) )
{
  $if_cond = in_array( $if_cond2, $if_cond1 );
}
else
{
$if_cond = false;
}unset( $if_cond1, $if_cond2 );
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= 'selected="selected"';
}
unset( $if_cond );
// if ends

$text .= '>';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'state', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['state'] : null;
$var2 = compiledFetchAttribute( $var1, 'current_translation' );
unset( $var1 );
$var1 = $var2;
$var2 = compiledFetchAttribute( $var1, 'name' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
$var = htmlspecialchars( $var1 );
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '</option>
            ';
$fe_n_items_processed_e0c1a825dc8e300075bc150462a8b4ec_9++;
} // foreach
$skipDelimiter = false;
if ( count( $fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_9 ) ) extract( array_pop( $fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_9 ) );

else
{

unset( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_9 );

unset( $fe_array_keys_e0c1a825dc8e300075bc150462a8b4ec_9 );

unset( $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_9 );

unset( $fe_n_items_processed_e0c1a825dc8e300075bc150462a8b4ec_9 );

unset( $fe_i_e0c1a825dc8e300075bc150462a8b4ec_9 );

unset( $fe_key_e0c1a825dc8e300075bc150462a8b4ec_9 );

unset( $fe_val_e0c1a825dc8e300075bc150462a8b4ec_9 );

unset( $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_9 );

unset( $fe_max_e0c1a825dc8e300075bc150462a8b4ec_9 );

unset( $fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_9 );

unset( $fe_first_val_e0c1a825dc8e300075bc150462a8b4ec_9 );

unset( $fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_9 );

unset( $fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_9 );

}

// foreach ends
$text .= '            </select>
        </td>
    </tr>
    ';
// sequence iteration
if ( ( $foreach_sequence_var_e0c1a825dc8e300075bc150462a8b4ec_10 = next( $foreach_sequence_array_e0c1a825dc8e300075bc150462a8b4ec_10 ) ) === false )
{
   reset( $foreach_sequence_array_e0c1a825dc8e300075bc150462a8b4ec_10 );
   $foreach_sequence_var_e0c1a825dc8e300075bc150462a8b4ec_10 = current( $foreach_sequence_array_e0c1a825dc8e300075bc150462a8b4ec_10 );
}

$fe_n_items_processed_e0c1a825dc8e300075bc150462a8b4ec_10++;
} // foreach
unset( $foreach_sequence_array_e0c1a825dc8e300075bc150462a8b4ec_10 );

unset( $foreach_sequence_var_e0c1a825dc8e300075bc150462a8b4ec_10 );

unset( $vars[$rootNamespace]['sequence'] );
$skipDelimiter = false;
if ( count( $fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_10 ) ) extract( array_pop( $fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_10 ) );

else
{

unset( $fe_array_e0c1a825dc8e300075bc150462a8b4ec_10 );

unset( $fe_array_keys_e0c1a825dc8e300075bc150462a8b4ec_10 );

unset( $fe_n_items_e0c1a825dc8e300075bc150462a8b4ec_10 );

unset( $fe_n_items_processed_e0c1a825dc8e300075bc150462a8b4ec_10 );

unset( $fe_i_e0c1a825dc8e300075bc150462a8b4ec_10 );

unset( $fe_key_e0c1a825dc8e300075bc150462a8b4ec_10 );

unset( $fe_val_e0c1a825dc8e300075bc150462a8b4ec_10 );

unset( $fe_offset_e0c1a825dc8e300075bc150462a8b4ec_10 );

unset( $fe_max_e0c1a825dc8e300075bc150462a8b4ec_10 );

unset( $fe_reverse_e0c1a825dc8e300075bc150462a8b4ec_10 );

unset( $fe_first_val_e0c1a825dc8e300075bc150462a8b4ec_10 );

unset( $fe_last_val_e0c1a825dc8e300075bc150462a8b4ec_10 );

unset( $fe_variable_stack_e0c1a825dc8e300075bc150462a8b4ec_10 );

}

// foreach ends
}
else
{
$text .= '    <tr class="bgdark">
    <td colspan="2">
    <em>';
unset( $var );
unset( $var2 );
unset( $var3 );
$var3 = ( '<a href=' . '"/hollywood/index.php/site_admin/state/groups"' . '>' );
if (! isset( $var3 ) ) $var3 = NULL;
while ( is_object( $var3 ) and method_exists( $var3, 'templateValue' ) )
    $var3 = $var3->templateValue();
$var2 = array( '%urlstart' => $var3, '%urlend' => "</a>" );unset( $var3 );
if (! isset( $var2 ) ) $var2 = NULL;
while ( is_object( $var2 ) and method_exists( $var2, 'templateValue' ) )
    $var2 = $var2->templateValue();
$var3 = array();
foreach ( $var2 as $var4 => $var5 )
{
  if ( is_int( $var4 ) )
    $var3['%' . ( ($var4%9) + 1 )] = $var5;
  else
    $var3[$var4] = $var5;
}
$var = strtr( 'Es wurde kein Objekt Status konfiguriert. Dies können Sie %urlstart hier machen %urlend.', $var3 );
unset( $var2, $var3, $var4, $var5 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '</em>
    </td>
    </tr>';
}
unset( $if_cond );
// if ends

$text .= '</table>

<div class="block">
<div class="button-left">
    ';
// if begins
unset( $if_cond );
unset( $if_cond );
$if_cond = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'states_count', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['states_count'] : null;
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '    <input type="submit" id="tab-details-set-states" value="Zustände einstellen" name="AssignButton" class="button" title="Zustände der Liste anwenden." />
    ';
}
else
{
$text .= '    <input type="submit" id="tab-details-set-states" value="Zustände einstellen" name="AssignButton" class="button-disabled" disabled="disabled" title="Keiner der Zustände kann dem Content Objekt von Ihnen zugewiesen werden, da Ihnen die Berechtigung fehlt."/>
    ';
}
unset( $if_cond );
// if ends

$text .= '</div>
<div class="break"></div>
</div>

</form>
</div>
<script type="text/javascript">

(function( $ )
{
    $(\'#tab-details-states-list select\').change(function()
    {
        var btn = $(\'#tab-details-set-states\');
        if ( !btn.attr(\'disabled\') )
        {
            btn.removeClass(\'button\').addClass(\'defaultbutton\');
        }
    });
    $(\'#selected-section-id\').change(function()
    {
        var btn = $(\'#tab-details-set-section\');
        if ( !btn.attr(\'disabled\') )
        {
            btn.removeClass(\'button\').addClass(\'defaultbutton\');
        }
    });
})( jQuery );

</script>
';

$setArray = $oldSetArray_0cb4ae21f8ba20a82e649df37ebcff88;
$tpl->Level--;
?>
