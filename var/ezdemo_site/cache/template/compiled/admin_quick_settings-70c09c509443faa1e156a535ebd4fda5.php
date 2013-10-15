<?php
// URI:       design/admin2/templates/toolbar/full/admin_quick_settings.tpl
// Filename:  design/admin2/templates/toolbar/full/admin_quick_settings.tpl
// Timestamp: 1342179297 (Fri Jul 13 11:34:57 UTC 2012)
$oldSetArray_cde0be7bb6b2938a03c78b5b0543e5e0 = isset( $setArray ) ? $setArray : array();
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

// if begins
unset( $if_cond );
$if_cond = call_user_func_array( array( new eZUserFunctionCollection(), 'hasAccessTo' ),
  array(     'module' => "setup",
    'function' => "setup",
    'user_id' => null ) );
$if_cond = isset( $if_cond['result'] ) ? $if_cond['result'] : null;
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '
<div id="quicksettings-tool">
<div class="box-header"><div class="box-ml">

   ';
// if begins
unset( $if_cond );
unset( $if_cond1 );
unset( $if_cond1 );
$if_cond1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'ui_context', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['ui_context'] : null;
if (! isset( $if_cond1 ) ) $if_cond1 = NULL;
while ( is_object( $if_cond1 ) and method_exists( $if_cond1, 'templateValue' ) )
    $if_cond1 = $if_cond1->templateValue();
$if_cond = ( ( $if_cond1 ) == ( 'edit' ) );
unset( $if_cond1 );
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '     <h4><span class="disabled">Kurzeinstellungen</span></h4>
   ';
}
else
{
$text .= '     <h4>Kurzeinstellungen</h4>
   ';
}
unset( $if_cond );
// if ends

$text .= '
</div></div>

<div class="box-bc"><div class="box-ml"><div class="box-content">
    ';
unset( $var );
$var = eZPreferences::value( "admin_quicksettings_siteaccess" );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$vars[$currentNamespace]['siteaccess'] = $var;
unset( $var );
$vars[$currentNamespace]['select_siteaccess'] = 'true';
$text .= '        ';
$oldRestoreIncludeArray_4105a7717e8723712b45812f99cb5120 = isset( $restoreIncludeArray ) ? $restoreIncludeArray : array();
$restoreIncludeArray = array();

if ( !isset( $dKeys ) )
{
    $resH = $tpl->resourceHandler( "design" );
    $dKeys = $resH->keys();
}

$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/quick_settings-fde5ed95e9752fedbc1bffaa0931c24d.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/templates/setup/quick_settings.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/quick_settings-fde5ed95e9752fedbc1bffaa0931c24d.php' );
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
$tpl->processURI( 'design/admin2/templates/setup/quick_settings.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
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
$restoreIncludeArray = $oldRestoreIncludeArray_4105a7717e8723712b45812f99cb5120;

$text .= '    ';
unset( $vars[$currentNamespace]['siteaccess'] );
unset( $vars[$currentNamespace]['select_siteaccess'] );
$text .= '</div></div></div>
</div>
';
}
unset( $if_cond );
// if ends


$setArray = $oldSetArray_cde0be7bb6b2938a03c78b5b0543e5e0;
$tpl->Level--;
?>
