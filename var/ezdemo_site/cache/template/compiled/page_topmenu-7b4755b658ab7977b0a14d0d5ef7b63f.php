<?php
// URI:       design/admin2/templates/page_topmenu.tpl
// Filename:  design/admin2/templates/page_topmenu.tpl
// Timestamp: 1342179293 (Fri Jul 13 11:34:53 UTC 2012)
$oldSetArray_6cf186ad11b0cb4629dbe3d82ec2714a = isset( $setArray ) ? $setArray : array();
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

$text .= '<div id="header-topmenu">
<ul>';
// foreach begins
$skipDelimiter = true;
if ( !isset( $fe_variable_stack_53e2e0e94e1dcbc3e69ce31b1865d157_30 ) ) $fe_variable_stack_53e2e0e94e1dcbc3e69ce31b1865d157_30 = array();
$fe_variable_stack_53e2e0e94e1dcbc3e69ce31b1865d157_30[] = compact( 'fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30', 'fe_array_keys_53e2e0e94e1dcbc3e69ce31b1865d157_30', 'fe_n_items_53e2e0e94e1dcbc3e69ce31b1865d157_30', 'fe_n_items_processed_53e2e0e94e1dcbc3e69ce31b1865d157_30', 'fe_i_53e2e0e94e1dcbc3e69ce31b1865d157_30', 'fe_key_53e2e0e94e1dcbc3e69ce31b1865d157_30', 'fe_val_53e2e0e94e1dcbc3e69ce31b1865d157_30', 'fe_offset_53e2e0e94e1dcbc3e69ce31b1865d157_30', 'fe_max_53e2e0e94e1dcbc3e69ce31b1865d157_30', 'fe_reverse_53e2e0e94e1dcbc3e69ce31b1865d157_30', 'fe_first_val_53e2e0e94e1dcbc3e69ce31b1865d157_30', 'fe_last_val_53e2e0e94e1dcbc3e69ce31b1865d157_30' );
unset( $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30 );
if (! isset( $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30 ) ) $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30 = NULL;
while ( is_object( $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30 ) and method_exists( $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30, 'templateValue' ) )
    $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30 = $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30->templateValue();
$fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30Data = array( 'value' => $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30 );
$tpl->processOperator( 'topmenu',
                       array (
  0 => 
  array (
    0 => 
    array (
      0 => 4,
      1 => 
      array (
        0 => '',
        1 => 2,
        2 => 'ui_context',
      ),
      2 => false,
    ),
  ),
  1 => 
  array (
    0 => 
    array (
      0 => 7,
      1 => true,
      2 => false,
    ),
  ),
),
                       $rootNamespace, $currentNamespace, $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30Data, false, false );
$fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30 = $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30Data['value'];
unset( $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30Data );
if (! isset( $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30 ) ) $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30 = NULL;
while ( is_object( $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30 ) and method_exists( $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30, 'templateValue' ) )
    $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30 = $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30->templateValue();

$fe_array_keys_53e2e0e94e1dcbc3e69ce31b1865d157_30 = is_array( $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30 ) ? array_keys( $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30 ) : array();
$fe_n_items_53e2e0e94e1dcbc3e69ce31b1865d157_30 = count( $fe_array_keys_53e2e0e94e1dcbc3e69ce31b1865d157_30 );
$fe_n_items_processed_53e2e0e94e1dcbc3e69ce31b1865d157_30 = 0;
$fe_offset_53e2e0e94e1dcbc3e69ce31b1865d157_30 = 0;
$fe_max_53e2e0e94e1dcbc3e69ce31b1865d157_30 = $fe_n_items_53e2e0e94e1dcbc3e69ce31b1865d157_30 - $fe_offset_53e2e0e94e1dcbc3e69ce31b1865d157_30;
$fe_reverse_53e2e0e94e1dcbc3e69ce31b1865d157_30 = false;
if ( $fe_offset_53e2e0e94e1dcbc3e69ce31b1865d157_30 < 0 || $fe_offset_53e2e0e94e1dcbc3e69ce31b1865d157_30 >= $fe_n_items_53e2e0e94e1dcbc3e69ce31b1865d157_30 )
{
    $fe_offset_53e2e0e94e1dcbc3e69ce31b1865d157_30 = ( $fe_offset_53e2e0e94e1dcbc3e69ce31b1865d157_30 < 0 ) ? 0 : $fe_n_items_53e2e0e94e1dcbc3e69ce31b1865d157_30;
    if ( $fe_n_items_53e2e0e94e1dcbc3e69ce31b1865d157_30 || $fe_offset_53e2e0e94e1dcbc3e69ce31b1865d157_30 < 0 )
 {
        eZDebug::writeWarning("Invalid 'offset' parameter specified: '$fe_offset_53e2e0e94e1dcbc3e69ce31b1865d157_30'. Array count: $fe_n_items_53e2e0e94e1dcbc3e69ce31b1865d157_30");   
}
}
if ( $fe_max_53e2e0e94e1dcbc3e69ce31b1865d157_30 < 0 || $fe_offset_53e2e0e94e1dcbc3e69ce31b1865d157_30 + $fe_max_53e2e0e94e1dcbc3e69ce31b1865d157_30 > $fe_n_items_53e2e0e94e1dcbc3e69ce31b1865d157_30 )
{
    if ( $fe_max_53e2e0e94e1dcbc3e69ce31b1865d157_30 < 0 )
 eZDebug::writeWarning("Invalid 'max' parameter specified: $fe_max_53e2e0e94e1dcbc3e69ce31b1865d157_30");
    $fe_max_53e2e0e94e1dcbc3e69ce31b1865d157_30 = $fe_n_items_53e2e0e94e1dcbc3e69ce31b1865d157_30 - $fe_offset_53e2e0e94e1dcbc3e69ce31b1865d157_30;
}
if ( $fe_reverse_53e2e0e94e1dcbc3e69ce31b1865d157_30 )
{
    $fe_first_val_53e2e0e94e1dcbc3e69ce31b1865d157_30 = $fe_n_items_53e2e0e94e1dcbc3e69ce31b1865d157_30 - 1 - $fe_offset_53e2e0e94e1dcbc3e69ce31b1865d157_30;
    $fe_last_val_53e2e0e94e1dcbc3e69ce31b1865d157_30  = 0;
}
else
{
    $fe_first_val_53e2e0e94e1dcbc3e69ce31b1865d157_30 = $fe_offset_53e2e0e94e1dcbc3e69ce31b1865d157_30;
    $fe_last_val_53e2e0e94e1dcbc3e69ce31b1865d157_30  = $fe_n_items_53e2e0e94e1dcbc3e69ce31b1865d157_30 - 1;
}
// foreach
for ( $fe_i_53e2e0e94e1dcbc3e69ce31b1865d157_30 = $fe_first_val_53e2e0e94e1dcbc3e69ce31b1865d157_30; $fe_n_items_processed_53e2e0e94e1dcbc3e69ce31b1865d157_30 < $fe_max_53e2e0e94e1dcbc3e69ce31b1865d157_30 && ( $fe_reverse_53e2e0e94e1dcbc3e69ce31b1865d157_30 ? $fe_i_53e2e0e94e1dcbc3e69ce31b1865d157_30 >= $fe_last_val_53e2e0e94e1dcbc3e69ce31b1865d157_30 : $fe_i_53e2e0e94e1dcbc3e69ce31b1865d157_30 <= $fe_last_val_53e2e0e94e1dcbc3e69ce31b1865d157_30 ); $fe_reverse_53e2e0e94e1dcbc3e69ce31b1865d157_30 ? $fe_i_53e2e0e94e1dcbc3e69ce31b1865d157_30-- : $fe_i_53e2e0e94e1dcbc3e69ce31b1865d157_30++ )
{
$fe_key_53e2e0e94e1dcbc3e69ce31b1865d157_30 = $fe_array_keys_53e2e0e94e1dcbc3e69ce31b1865d157_30[$fe_i_53e2e0e94e1dcbc3e69ce31b1865d157_30];
$fe_val_53e2e0e94e1dcbc3e69ce31b1865d157_30 = $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30[$fe_key_53e2e0e94e1dcbc3e69ce31b1865d157_30];
$vars[$rootNamespace]['menu'] = $fe_val_53e2e0e94e1dcbc3e69ce31b1865d157_30;
$text .= '    ';
$oldRestoreIncludeArray_636350547c844333a633fb5fca738ec3 = isset( $restoreIncludeArray ) ? $restoreIncludeArray : array();
$restoreIncludeArray = array();

if ( isset( $currentNamespace ) and isset( $vars[$currentNamespace]['menu_item'] ) )
    $restoreIncludeArray[] = array( $currentNamespace, 'menu_item', $vars[$currentNamespace]['menu_item'] );
elseif ( !isset( $vars[( isset( $currentNamespace ) ? $currentNamespace : '' )]['menu_item'] ) ) 
    $restoreIncludeArray[] = array( ( isset( $currentNamespace ) ? $currentNamespace : '' ), 'menu_item', 'unset' );

unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'menu', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['menu'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$vars[$currentNamespace]['menu_item'] = $var;
unset( $var );
if ( isset( $currentNamespace ) and isset( $vars[$currentNamespace]['navigationpart_identifier'] ) )
    $restoreIncludeArray[] = array( $currentNamespace, 'navigationpart_identifier', $vars[$currentNamespace]['navigationpart_identifier'] );
elseif ( !isset( $vars[( isset( $currentNamespace ) ? $currentNamespace : '' )]['navigationpart_identifier'] ) ) 
    $restoreIncludeArray[] = array( ( isset( $currentNamespace ) ? $currentNamespace : '' ), 'navigationpart_identifier', 'unset' );

unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'navigation_part', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['navigation_part'] : null;
$var1 = compiledFetchAttribute( $var, 'identifier' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$vars[$currentNamespace]['navigationpart_identifier'] = $var;
unset( $var );
if ( !isset( $dKeys ) )
{
    $resH = $tpl->resourceHandler( "design" );
    $dKeys = $resH->keys();
}

$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/page_topmenuitem-6f789fbd762305649c7a1ba25666af63.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/templates/page_topmenuitem.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/page_topmenuitem-6f789fbd762305649c7a1ba25666af63.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/templates/page_topmenuitem.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

foreach ( $restoreIncludeArray as $element )
{
    if ( $element[2] === 'unset' )
    {
        unset( $vars[$element[0]][$element[1]] );
        continue;
    }
    $vars[$element[0]][$element[1]] = $element[2];
}
$restoreIncludeArray = $oldRestoreIncludeArray_636350547c844333a633fb5fca738ec3;

$fe_n_items_processed_53e2e0e94e1dcbc3e69ce31b1865d157_30++;
} // foreach
$skipDelimiter = false;
if ( count( $fe_variable_stack_53e2e0e94e1dcbc3e69ce31b1865d157_30 ) ) extract( array_pop( $fe_variable_stack_53e2e0e94e1dcbc3e69ce31b1865d157_30 ) );

else
{

unset( $fe_array_53e2e0e94e1dcbc3e69ce31b1865d157_30 );

unset( $fe_array_keys_53e2e0e94e1dcbc3e69ce31b1865d157_30 );

unset( $fe_n_items_53e2e0e94e1dcbc3e69ce31b1865d157_30 );

unset( $fe_n_items_processed_53e2e0e94e1dcbc3e69ce31b1865d157_30 );

unset( $fe_i_53e2e0e94e1dcbc3e69ce31b1865d157_30 );

unset( $fe_key_53e2e0e94e1dcbc3e69ce31b1865d157_30 );

unset( $fe_val_53e2e0e94e1dcbc3e69ce31b1865d157_30 );

unset( $fe_offset_53e2e0e94e1dcbc3e69ce31b1865d157_30 );

unset( $fe_max_53e2e0e94e1dcbc3e69ce31b1865d157_30 );

unset( $fe_reverse_53e2e0e94e1dcbc3e69ce31b1865d157_30 );

unset( $fe_first_val_53e2e0e94e1dcbc3e69ce31b1865d157_30 );

unset( $fe_last_val_53e2e0e94e1dcbc3e69ce31b1865d157_30 );

unset( $fe_variable_stack_53e2e0e94e1dcbc3e69ce31b1865d157_30 );

}

// foreach ends
$text .= '</ul>
</div>

<script type="text/javascript">

jQuery( \'#header-topmenu ul li\' ).click(function(){ jQuery(this).addClass(\'active\'); });

</script>
';

$setArray = $oldSetArray_6cf186ad11b0cb4629dbe3d82ec2714a;
$tpl->Level--;
?>
