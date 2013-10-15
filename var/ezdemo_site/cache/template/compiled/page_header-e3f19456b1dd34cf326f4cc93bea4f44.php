<?php
// URI:       design/admin2/templates/page_header.tpl
// Filename:  design/admin2/templates/page_header.tpl
// Timestamp: 1342179293 (Fri Jul 13 11:34:53 UTC 2012)
$oldSetArray_09e3c32f1c586a0f620efc2ac297b890 = isset( $setArray ) ? $setArray : array();
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

$text .= '<div id="header-logo">';
// if begins
unset( $if_cond );
unset( $if_cond );
$if_cond = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'ui_context_edit', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['ui_context_edit'] : null;
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '    <span title="eZ Publish ';
unset( $var );
$var = call_user_func_array( array( new eZSetupFunctionCollection(), 'fetchFullVersionString' ),
  array(  ) );
$var = isset( $var['result'] ) ? $var['result'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '">&nbsp;</span>';
}
else
{
$text .= '    <a href="/hollywood/index.php/site_admin/content/dashboard" title="eZ Publish ';
unset( $var );
$var = call_user_func_array( array( new eZSetupFunctionCollection(), 'fetchFullVersionString' ),
  array(  ) );
$var = isset( $var['result'] ) ? $var['result'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '">&nbsp;</a>';
}
unset( $if_cond );
// if ends

$text .= '</div>

<div id="header-search">';
$oldRestoreIncludeArray_786b4ee94101b5a5ec9ca367fe770576 = isset( $restoreIncludeArray ) ? $restoreIncludeArray : array();
$restoreIncludeArray = array();

if ( !isset( $dKeys ) )
{
    $resH = $tpl->resourceHandler( "design" );
    $dKeys = $resH->keys();
}

$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/page_search-363c773773c34670159343b513fca01a.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/templates/page_search.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/page_search-363c773773c34670159343b513fca01a.php' );
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
$tpl->processURI( 'design/admin2/templates/page_search.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
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
$restoreIncludeArray = $oldRestoreIncludeArray_786b4ee94101b5a5ec9ca367fe770576;

$text .= '</div>

<div id="header-usermenu">';
// if begins
unset( $if_cond );
unset( $if_cond );
$if_cond = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'ui_context_edit', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['ui_context_edit'] : null;
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '    <span title="Vom System abmelden." id="header-usermenu-logout" class="disabled">Abmelden</span>';
}
else
{
$text .= '    <a href="/hollywood/index.php/site_admin/user/logout" title="Vom System abmelden." id="header-usermenu-logout">Abmelden</a>';
}
unset( $if_cond );
// if ends

$text .= '</div>

';

$setArray = $oldSetArray_09e3c32f1c586a0f620efc2ac297b890;
$tpl->Level--;
?>
