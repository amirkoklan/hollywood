<?php
// URI:       design/admin2/templates/children_detailed.tpl
// Filename:  design/admin2/templates/children_detailed.tpl
// Timestamp: 1342179293 (Fri Jul 13 11:34:53 UTC 2012)
$oldSetArray_fe5d6ec3273094fb8ed62cde727c1ed3 = isset( $setArray ) ? $setArray : array();
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

// def $section
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var2 = compiledFetchAttribute( $var1, 'object' );
unset( $var1 );
$var1 = $var2;
$var2 = compiledFetchAttribute( $var1, 'section_id' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
$var = call_user_func_array( array( new eZSectionFunctionCollection(), 'fetchSectionObject' ),
  array(     'section_id' => $var1,
    'identifier' => false ) );
$var = isset( $var['result'] ) ? $var['result'] : null;
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
if ( $tpl->hasVariable( 'section', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'section' is already defined.", array (
  0 => 
  array (
    0 => 1,
    1 => 0,
    2 => 1,
  ),
  1 => 
  array (
    0 => 3,
    1 => 63,
    2 => 245,
  ),
  2 => 'design/admin2/templates/children_detailed.tpl',
) );
    $tpl->setVariable( 'section', $var, $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'section', $var, $rootNamespace );
}

// def $visible_columns
if ( $tpl->hasVariable( 'visible_columns', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'visible_columns' is already defined.", array (
  0 => 
  array (
    0 => 1,
    1 => 0,
    2 => 1,
  ),
  1 => 
  array (
    0 => 3,
    1 => 63,
    2 => 245,
  ),
  2 => 'design/admin2/templates/children_detailed.tpl',
) );
    $tpl->setVariable( 'visible_columns', array (
  'ezcontentnavigationpart' => 'checkbox;crank;name;published_date;translations;priority',
  'ezmedianavigationpart' => 'checkbox;crank;thumbnail;name;hidden_status_string;class_name',
  'ezusernavigationpart' => 'checkbox;crank;name;creator;published_date',
), $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'visible_columns', array (
  'ezcontentnavigationpart' => 'checkbox;crank;name;published_date;translations;priority',
  'ezmedianavigationpart' => 'checkbox;crank;thumbnail;name;hidden_status_string;class_name',
  'ezusernavigationpart' => 'checkbox;crank;name;creator;published_date',
), $rootNamespace );
}

// def $locales
unset( $var );
$var = call_user_func_array( array( new eZContentFunctionCollection(), 'fetchTranslationList' ),
  array(  ) );
$var = isset( $var['result'] ) ? $var['result'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
if ( $tpl->hasVariable( 'locales', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'locales' is already defined.", array (
  0 => 
  array (
    0 => 1,
    1 => 0,
    2 => 1,
  ),
  1 => 
  array (
    0 => 3,
    1 => 63,
    2 => 245,
  ),
  2 => 'design/admin2/templates/children_detailed.tpl',
) );
    $tpl->setVariable( 'locales', $var, $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'locales', $var, $rootNamespace );
}

$text .= '

<script type="text/javascript">
(function() {


var availableLanguages = {';
// foreach begins
$skipDelimiter = true;
if ( !isset( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_20 ) ) $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_20 = array();
$fe_variable_stack_dbebccfb075865fcd879702972f4abaa_20[] = compact( 'fe_array_dbebccfb075865fcd879702972f4abaa_20', 'fe_array_keys_dbebccfb075865fcd879702972f4abaa_20', 'fe_n_items_dbebccfb075865fcd879702972f4abaa_20', 'fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_20', 'fe_i_dbebccfb075865fcd879702972f4abaa_20', 'fe_key_dbebccfb075865fcd879702972f4abaa_20', 'fe_val_dbebccfb075865fcd879702972f4abaa_20', 'fe_offset_dbebccfb075865fcd879702972f4abaa_20', 'fe_max_dbebccfb075865fcd879702972f4abaa_20', 'fe_reverse_dbebccfb075865fcd879702972f4abaa_20', 'fe_first_val_dbebccfb075865fcd879702972f4abaa_20', 'fe_last_val_dbebccfb075865fcd879702972f4abaa_20' );
unset( $fe_array_dbebccfb075865fcd879702972f4abaa_20 );
unset( $fe_array_dbebccfb075865fcd879702972f4abaa_20 );
$fe_array_dbebccfb075865fcd879702972f4abaa_20 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'locales', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['locales'] : null;
if (! isset( $fe_array_dbebccfb075865fcd879702972f4abaa_20 ) ) $fe_array_dbebccfb075865fcd879702972f4abaa_20 = NULL;
while ( is_object( $fe_array_dbebccfb075865fcd879702972f4abaa_20 ) and method_exists( $fe_array_dbebccfb075865fcd879702972f4abaa_20, 'templateValue' ) )
    $fe_array_dbebccfb075865fcd879702972f4abaa_20 = $fe_array_dbebccfb075865fcd879702972f4abaa_20->templateValue();

$fe_array_keys_dbebccfb075865fcd879702972f4abaa_20 = is_array( $fe_array_dbebccfb075865fcd879702972f4abaa_20 ) ? array_keys( $fe_array_dbebccfb075865fcd879702972f4abaa_20 ) : array();
$fe_n_items_dbebccfb075865fcd879702972f4abaa_20 = count( $fe_array_keys_dbebccfb075865fcd879702972f4abaa_20 );
$fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_20 = 0;
$fe_offset_dbebccfb075865fcd879702972f4abaa_20 = 0;
$fe_max_dbebccfb075865fcd879702972f4abaa_20 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_20 - $fe_offset_dbebccfb075865fcd879702972f4abaa_20;
$fe_reverse_dbebccfb075865fcd879702972f4abaa_20 = false;
if ( $fe_offset_dbebccfb075865fcd879702972f4abaa_20 < 0 || $fe_offset_dbebccfb075865fcd879702972f4abaa_20 >= $fe_n_items_dbebccfb075865fcd879702972f4abaa_20 )
{
    $fe_offset_dbebccfb075865fcd879702972f4abaa_20 = ( $fe_offset_dbebccfb075865fcd879702972f4abaa_20 < 0 ) ? 0 : $fe_n_items_dbebccfb075865fcd879702972f4abaa_20;
    if ( $fe_n_items_dbebccfb075865fcd879702972f4abaa_20 || $fe_offset_dbebccfb075865fcd879702972f4abaa_20 < 0 )
 {
        eZDebug::writeWarning("Invalid 'offset' parameter specified: '$fe_offset_dbebccfb075865fcd879702972f4abaa_20'. Array count: $fe_n_items_dbebccfb075865fcd879702972f4abaa_20");   
}
}
if ( $fe_max_dbebccfb075865fcd879702972f4abaa_20 < 0 || $fe_offset_dbebccfb075865fcd879702972f4abaa_20 + $fe_max_dbebccfb075865fcd879702972f4abaa_20 > $fe_n_items_dbebccfb075865fcd879702972f4abaa_20 )
{
    if ( $fe_max_dbebccfb075865fcd879702972f4abaa_20 < 0 )
 eZDebug::writeWarning("Invalid 'max' parameter specified: $fe_max_dbebccfb075865fcd879702972f4abaa_20");
    $fe_max_dbebccfb075865fcd879702972f4abaa_20 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_20 - $fe_offset_dbebccfb075865fcd879702972f4abaa_20;
}
if ( $fe_reverse_dbebccfb075865fcd879702972f4abaa_20 )
{
    $fe_first_val_dbebccfb075865fcd879702972f4abaa_20 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_20 - 1 - $fe_offset_dbebccfb075865fcd879702972f4abaa_20;
    $fe_last_val_dbebccfb075865fcd879702972f4abaa_20  = 0;
}
else
{
    $fe_first_val_dbebccfb075865fcd879702972f4abaa_20 = $fe_offset_dbebccfb075865fcd879702972f4abaa_20;
    $fe_last_val_dbebccfb075865fcd879702972f4abaa_20  = $fe_n_items_dbebccfb075865fcd879702972f4abaa_20 - 1;
}
// foreach
for ( $fe_i_dbebccfb075865fcd879702972f4abaa_20 = $fe_first_val_dbebccfb075865fcd879702972f4abaa_20; $fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_20 < $fe_max_dbebccfb075865fcd879702972f4abaa_20 && ( $fe_reverse_dbebccfb075865fcd879702972f4abaa_20 ? $fe_i_dbebccfb075865fcd879702972f4abaa_20 >= $fe_last_val_dbebccfb075865fcd879702972f4abaa_20 : $fe_i_dbebccfb075865fcd879702972f4abaa_20 <= $fe_last_val_dbebccfb075865fcd879702972f4abaa_20 ); $fe_reverse_dbebccfb075865fcd879702972f4abaa_20 ? $fe_i_dbebccfb075865fcd879702972f4abaa_20-- : $fe_i_dbebccfb075865fcd879702972f4abaa_20++ )
{
$fe_key_dbebccfb075865fcd879702972f4abaa_20 = $fe_array_keys_dbebccfb075865fcd879702972f4abaa_20[$fe_i_dbebccfb075865fcd879702972f4abaa_20];
$fe_val_dbebccfb075865fcd879702972f4abaa_20 = $fe_array_dbebccfb075865fcd879702972f4abaa_20[$fe_key_dbebccfb075865fcd879702972f4abaa_20];
$vars[$rootNamespace]['language'] = $fe_val_dbebccfb075865fcd879702972f4abaa_20;
if ( $skipDelimiter )
    $skipDelimiter = false;
else
{ // delimiter begins
$text .= ',';
} // delimiter ends

$text .= '\'';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'language', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['language'] : null;
$var2 = compiledFetchAttribute( $var1, 'locale_code' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
$var = str_replace( array( "\\", "\"", "'" ),
                                             array( "\\\\", "\\042", "\\047" ) , $var1 ); unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '\': \'';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'language', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['language'] : null;
$var2 = compiledFetchAttribute( $var1, 'intl_language_name' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
$var = str_replace( array( "\\", "\"", "'" ),
                                             array( "\\\\", "\\042", "\\047" ) , $var1 ); unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '\'';
$fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_20++;
} // foreach
$skipDelimiter = false;
if ( count( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_20 ) ) extract( array_pop( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_20 ) );

else
{

unset( $fe_array_dbebccfb075865fcd879702972f4abaa_20 );

unset( $fe_array_keys_dbebccfb075865fcd879702972f4abaa_20 );

unset( $fe_n_items_dbebccfb075865fcd879702972f4abaa_20 );

unset( $fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_20 );

unset( $fe_i_dbebccfb075865fcd879702972f4abaa_20 );

unset( $fe_key_dbebccfb075865fcd879702972f4abaa_20 );

unset( $fe_val_dbebccfb075865fcd879702972f4abaa_20 );

unset( $fe_offset_dbebccfb075865fcd879702972f4abaa_20 );

unset( $fe_max_dbebccfb075865fcd879702972f4abaa_20 );

unset( $fe_reverse_dbebccfb075865fcd879702972f4abaa_20 );

unset( $fe_first_val_dbebccfb075865fcd879702972f4abaa_20 );

unset( $fe_last_val_dbebccfb075865fcd879702972f4abaa_20 );

unset( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_20 );

}

// foreach ends
$text .= '};

var icons = {';
// foreach begins
$skipDelimiter = true;
if ( !isset( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_21 ) ) $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_21 = array();
$fe_variable_stack_dbebccfb075865fcd879702972f4abaa_21[] = compact( 'fe_array_dbebccfb075865fcd879702972f4abaa_21', 'fe_array_keys_dbebccfb075865fcd879702972f4abaa_21', 'fe_n_items_dbebccfb075865fcd879702972f4abaa_21', 'fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_21', 'fe_i_dbebccfb075865fcd879702972f4abaa_21', 'fe_key_dbebccfb075865fcd879702972f4abaa_21', 'fe_val_dbebccfb075865fcd879702972f4abaa_21', 'fe_offset_dbebccfb075865fcd879702972f4abaa_21', 'fe_max_dbebccfb075865fcd879702972f4abaa_21', 'fe_reverse_dbebccfb075865fcd879702972f4abaa_21', 'fe_first_val_dbebccfb075865fcd879702972f4abaa_21', 'fe_last_val_dbebccfb075865fcd879702972f4abaa_21' );
unset( $fe_array_dbebccfb075865fcd879702972f4abaa_21 );
unset( $fe_array_dbebccfb075865fcd879702972f4abaa_21 );
$fe_array_dbebccfb075865fcd879702972f4abaa_21 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'locales', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['locales'] : null;
if (! isset( $fe_array_dbebccfb075865fcd879702972f4abaa_21 ) ) $fe_array_dbebccfb075865fcd879702972f4abaa_21 = NULL;
while ( is_object( $fe_array_dbebccfb075865fcd879702972f4abaa_21 ) and method_exists( $fe_array_dbebccfb075865fcd879702972f4abaa_21, 'templateValue' ) )
    $fe_array_dbebccfb075865fcd879702972f4abaa_21 = $fe_array_dbebccfb075865fcd879702972f4abaa_21->templateValue();

$fe_array_keys_dbebccfb075865fcd879702972f4abaa_21 = is_array( $fe_array_dbebccfb075865fcd879702972f4abaa_21 ) ? array_keys( $fe_array_dbebccfb075865fcd879702972f4abaa_21 ) : array();
$fe_n_items_dbebccfb075865fcd879702972f4abaa_21 = count( $fe_array_keys_dbebccfb075865fcd879702972f4abaa_21 );
$fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_21 = 0;
$fe_offset_dbebccfb075865fcd879702972f4abaa_21 = 0;
$fe_max_dbebccfb075865fcd879702972f4abaa_21 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_21 - $fe_offset_dbebccfb075865fcd879702972f4abaa_21;
$fe_reverse_dbebccfb075865fcd879702972f4abaa_21 = false;
if ( $fe_offset_dbebccfb075865fcd879702972f4abaa_21 < 0 || $fe_offset_dbebccfb075865fcd879702972f4abaa_21 >= $fe_n_items_dbebccfb075865fcd879702972f4abaa_21 )
{
    $fe_offset_dbebccfb075865fcd879702972f4abaa_21 = ( $fe_offset_dbebccfb075865fcd879702972f4abaa_21 < 0 ) ? 0 : $fe_n_items_dbebccfb075865fcd879702972f4abaa_21;
    if ( $fe_n_items_dbebccfb075865fcd879702972f4abaa_21 || $fe_offset_dbebccfb075865fcd879702972f4abaa_21 < 0 )
 {
        eZDebug::writeWarning("Invalid 'offset' parameter specified: '$fe_offset_dbebccfb075865fcd879702972f4abaa_21'. Array count: $fe_n_items_dbebccfb075865fcd879702972f4abaa_21");   
}
}
if ( $fe_max_dbebccfb075865fcd879702972f4abaa_21 < 0 || $fe_offset_dbebccfb075865fcd879702972f4abaa_21 + $fe_max_dbebccfb075865fcd879702972f4abaa_21 > $fe_n_items_dbebccfb075865fcd879702972f4abaa_21 )
{
    if ( $fe_max_dbebccfb075865fcd879702972f4abaa_21 < 0 )
 eZDebug::writeWarning("Invalid 'max' parameter specified: $fe_max_dbebccfb075865fcd879702972f4abaa_21");
    $fe_max_dbebccfb075865fcd879702972f4abaa_21 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_21 - $fe_offset_dbebccfb075865fcd879702972f4abaa_21;
}
if ( $fe_reverse_dbebccfb075865fcd879702972f4abaa_21 )
{
    $fe_first_val_dbebccfb075865fcd879702972f4abaa_21 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_21 - 1 - $fe_offset_dbebccfb075865fcd879702972f4abaa_21;
    $fe_last_val_dbebccfb075865fcd879702972f4abaa_21  = 0;
}
else
{
    $fe_first_val_dbebccfb075865fcd879702972f4abaa_21 = $fe_offset_dbebccfb075865fcd879702972f4abaa_21;
    $fe_last_val_dbebccfb075865fcd879702972f4abaa_21  = $fe_n_items_dbebccfb075865fcd879702972f4abaa_21 - 1;
}
// foreach
for ( $fe_i_dbebccfb075865fcd879702972f4abaa_21 = $fe_first_val_dbebccfb075865fcd879702972f4abaa_21; $fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_21 < $fe_max_dbebccfb075865fcd879702972f4abaa_21 && ( $fe_reverse_dbebccfb075865fcd879702972f4abaa_21 ? $fe_i_dbebccfb075865fcd879702972f4abaa_21 >= $fe_last_val_dbebccfb075865fcd879702972f4abaa_21 : $fe_i_dbebccfb075865fcd879702972f4abaa_21 <= $fe_last_val_dbebccfb075865fcd879702972f4abaa_21 ); $fe_reverse_dbebccfb075865fcd879702972f4abaa_21 ? $fe_i_dbebccfb075865fcd879702972f4abaa_21-- : $fe_i_dbebccfb075865fcd879702972f4abaa_21++ )
{
$fe_key_dbebccfb075865fcd879702972f4abaa_21 = $fe_array_keys_dbebccfb075865fcd879702972f4abaa_21[$fe_i_dbebccfb075865fcd879702972f4abaa_21];
$fe_val_dbebccfb075865fcd879702972f4abaa_21 = $fe_array_dbebccfb075865fcd879702972f4abaa_21[$fe_key_dbebccfb075865fcd879702972f4abaa_21];
$vars[$rootNamespace]['locale'] = $fe_val_dbebccfb075865fcd879702972f4abaa_21;
if ( $skipDelimiter )
    $skipDelimiter = false;
else
{ // delimiter begins
$text .= ',';
} // delimiter ends

$text .= '\'';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'locale', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['locale'] : null;
$var1 = compiledFetchAttribute( $var, 'locale_code' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '\': \'';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'locale', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['locale'] : null;
$var1 = compiledFetchAttribute( $var, 'locale_code' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$varData = array( 'value' => $var );
$tpl->processOperator( 'flag_icon',
                       array (
),
                       $rootNamespace, $currentNamespace, $varData, false, false );
$var = $varData['value'];
unset( $varData );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '\'';
$fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_21++;
} // foreach
$skipDelimiter = false;
if ( count( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_21 ) ) extract( array_pop( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_21 ) );

else
{

unset( $fe_array_dbebccfb075865fcd879702972f4abaa_21 );

unset( $fe_array_keys_dbebccfb075865fcd879702972f4abaa_21 );

unset( $fe_n_items_dbebccfb075865fcd879702972f4abaa_21 );

unset( $fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_21 );

unset( $fe_i_dbebccfb075865fcd879702972f4abaa_21 );

unset( $fe_key_dbebccfb075865fcd879702972f4abaa_21 );

unset( $fe_val_dbebccfb075865fcd879702972f4abaa_21 );

unset( $fe_offset_dbebccfb075865fcd879702972f4abaa_21 );

unset( $fe_max_dbebccfb075865fcd879702972f4abaa_21 );

unset( $fe_reverse_dbebccfb075865fcd879702972f4abaa_21 );

unset( $fe_first_val_dbebccfb075865fcd879702972f4abaa_21 );

unset( $fe_last_val_dbebccfb075865fcd879702972f4abaa_21 );

unset( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_21 );

}

// foreach ends
$text .= '};

var vcols = {';
// foreach begins
$skipDelimiter = true;
if ( !isset( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_22 ) ) $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_22 = array();
$fe_variable_stack_dbebccfb075865fcd879702972f4abaa_22[] = compact( 'fe_array_dbebccfb075865fcd879702972f4abaa_22', 'fe_array_keys_dbebccfb075865fcd879702972f4abaa_22', 'fe_n_items_dbebccfb075865fcd879702972f4abaa_22', 'fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_22', 'fe_i_dbebccfb075865fcd879702972f4abaa_22', 'fe_key_dbebccfb075865fcd879702972f4abaa_22', 'fe_val_dbebccfb075865fcd879702972f4abaa_22', 'fe_offset_dbebccfb075865fcd879702972f4abaa_22', 'fe_max_dbebccfb075865fcd879702972f4abaa_22', 'fe_reverse_dbebccfb075865fcd879702972f4abaa_22', 'fe_first_val_dbebccfb075865fcd879702972f4abaa_22', 'fe_last_val_dbebccfb075865fcd879702972f4abaa_22' );
unset( $fe_array_dbebccfb075865fcd879702972f4abaa_22 );
unset( $fe_array_dbebccfb075865fcd879702972f4abaa_22 );
$fe_array_dbebccfb075865fcd879702972f4abaa_22 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'visible_columns', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['visible_columns'] : null;
if (! isset( $fe_array_dbebccfb075865fcd879702972f4abaa_22 ) ) $fe_array_dbebccfb075865fcd879702972f4abaa_22 = NULL;
while ( is_object( $fe_array_dbebccfb075865fcd879702972f4abaa_22 ) and method_exists( $fe_array_dbebccfb075865fcd879702972f4abaa_22, 'templateValue' ) )
    $fe_array_dbebccfb075865fcd879702972f4abaa_22 = $fe_array_dbebccfb075865fcd879702972f4abaa_22->templateValue();

$fe_array_keys_dbebccfb075865fcd879702972f4abaa_22 = is_array( $fe_array_dbebccfb075865fcd879702972f4abaa_22 ) ? array_keys( $fe_array_dbebccfb075865fcd879702972f4abaa_22 ) : array();
$fe_n_items_dbebccfb075865fcd879702972f4abaa_22 = count( $fe_array_keys_dbebccfb075865fcd879702972f4abaa_22 );
$fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_22 = 0;
$fe_offset_dbebccfb075865fcd879702972f4abaa_22 = 0;
$fe_max_dbebccfb075865fcd879702972f4abaa_22 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_22 - $fe_offset_dbebccfb075865fcd879702972f4abaa_22;
$fe_reverse_dbebccfb075865fcd879702972f4abaa_22 = false;
if ( $fe_offset_dbebccfb075865fcd879702972f4abaa_22 < 0 || $fe_offset_dbebccfb075865fcd879702972f4abaa_22 >= $fe_n_items_dbebccfb075865fcd879702972f4abaa_22 )
{
    $fe_offset_dbebccfb075865fcd879702972f4abaa_22 = ( $fe_offset_dbebccfb075865fcd879702972f4abaa_22 < 0 ) ? 0 : $fe_n_items_dbebccfb075865fcd879702972f4abaa_22;
    if ( $fe_n_items_dbebccfb075865fcd879702972f4abaa_22 || $fe_offset_dbebccfb075865fcd879702972f4abaa_22 < 0 )
 {
        eZDebug::writeWarning("Invalid 'offset' parameter specified: '$fe_offset_dbebccfb075865fcd879702972f4abaa_22'. Array count: $fe_n_items_dbebccfb075865fcd879702972f4abaa_22");   
}
}
if ( $fe_max_dbebccfb075865fcd879702972f4abaa_22 < 0 || $fe_offset_dbebccfb075865fcd879702972f4abaa_22 + $fe_max_dbebccfb075865fcd879702972f4abaa_22 > $fe_n_items_dbebccfb075865fcd879702972f4abaa_22 )
{
    if ( $fe_max_dbebccfb075865fcd879702972f4abaa_22 < 0 )
 eZDebug::writeWarning("Invalid 'max' parameter specified: $fe_max_dbebccfb075865fcd879702972f4abaa_22");
    $fe_max_dbebccfb075865fcd879702972f4abaa_22 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_22 - $fe_offset_dbebccfb075865fcd879702972f4abaa_22;
}
if ( $fe_reverse_dbebccfb075865fcd879702972f4abaa_22 )
{
    $fe_first_val_dbebccfb075865fcd879702972f4abaa_22 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_22 - 1 - $fe_offset_dbebccfb075865fcd879702972f4abaa_22;
    $fe_last_val_dbebccfb075865fcd879702972f4abaa_22  = 0;
}
else
{
    $fe_first_val_dbebccfb075865fcd879702972f4abaa_22 = $fe_offset_dbebccfb075865fcd879702972f4abaa_22;
    $fe_last_val_dbebccfb075865fcd879702972f4abaa_22  = $fe_n_items_dbebccfb075865fcd879702972f4abaa_22 - 1;
}
// foreach
for ( $fe_i_dbebccfb075865fcd879702972f4abaa_22 = $fe_first_val_dbebccfb075865fcd879702972f4abaa_22; $fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_22 < $fe_max_dbebccfb075865fcd879702972f4abaa_22 && ( $fe_reverse_dbebccfb075865fcd879702972f4abaa_22 ? $fe_i_dbebccfb075865fcd879702972f4abaa_22 >= $fe_last_val_dbebccfb075865fcd879702972f4abaa_22 : $fe_i_dbebccfb075865fcd879702972f4abaa_22 <= $fe_last_val_dbebccfb075865fcd879702972f4abaa_22 ); $fe_reverse_dbebccfb075865fcd879702972f4abaa_22 ? $fe_i_dbebccfb075865fcd879702972f4abaa_22-- : $fe_i_dbebccfb075865fcd879702972f4abaa_22++ )
{
$fe_key_dbebccfb075865fcd879702972f4abaa_22 = $fe_array_keys_dbebccfb075865fcd879702972f4abaa_22[$fe_i_dbebccfb075865fcd879702972f4abaa_22];
$fe_val_dbebccfb075865fcd879702972f4abaa_22 = $fe_array_dbebccfb075865fcd879702972f4abaa_22[$fe_key_dbebccfb075865fcd879702972f4abaa_22];
$vars[$rootNamespace]['object'] = $fe_val_dbebccfb075865fcd879702972f4abaa_22;
$vars[$rootNamespace]['index'] = $fe_key_dbebccfb075865fcd879702972f4abaa_22;
if ( $skipDelimiter )
    $skipDelimiter = false;
else
{ // delimiter begins
$text .= ',
';
} // delimiter ends

$text .= '    ';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'index', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['index'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= ' : \'';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'object', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['object'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '\'.split(\';\')';
$fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_22++;
} // foreach
$skipDelimiter = false;
if ( count( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_22 ) ) extract( array_pop( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_22 ) );

else
{

unset( $fe_array_dbebccfb075865fcd879702972f4abaa_22 );

unset( $fe_array_keys_dbebccfb075865fcd879702972f4abaa_22 );

unset( $fe_n_items_dbebccfb075865fcd879702972f4abaa_22 );

unset( $fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_22 );

unset( $fe_i_dbebccfb075865fcd879702972f4abaa_22 );

unset( $fe_key_dbebccfb075865fcd879702972f4abaa_22 );

unset( $fe_val_dbebccfb075865fcd879702972f4abaa_22 );

unset( $fe_offset_dbebccfb075865fcd879702972f4abaa_22 );

unset( $fe_max_dbebccfb075865fcd879702972f4abaa_22 );

unset( $fe_reverse_dbebccfb075865fcd879702972f4abaa_22 );

unset( $fe_first_val_dbebccfb075865fcd879702972f4abaa_22 );

unset( $fe_last_val_dbebccfb075865fcd879702972f4abaa_22 );

unset( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_22 );

}

// foreach ends
$text .= '};

var confObj = {
';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var1 = compiledFetchAttribute( $var, 'sort_field' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$vars[$currentNamespace]['match'] = $var;
unset( $var );
unset( $match );
unset( $match );
$match = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$match1 = compiledFetchAttribute( $match, 'sort_field' );
unset( $match );
$match = $match1;
if (! isset( $match ) ) $match = NULL;
while ( is_object( $match ) and method_exists( $match, 'templateValue' ) )
    $match = $match->templateValue();

switch ( $match )
{
    case "2":
    {
$text .= '    sortKey: "published_date",';
    } break;
    case "3":
    {
$text .= '    sortKey: "modified_date",';
    } break;
    case "4":
    {
$text .= '    sortKey: "section",';
    } break;
    case "7":
    {
$text .= '    sortKey: "class_name",';
    } break;
    case "8":
    {
$text .= '    sortKey: "priority",';
    } break;
    case "9":
    {
$text .= '    sortKey: "name",';
    } break;
    default:
    {
$text .= '    sortKey: "published_date",';
    } break;
}
unset( $match );

unset( $vars[$currentNamespace]['match'] );
$text .= '
    dataSourceURL: "';
unset( $var );
unset( $var1 );
unset( $var3 );
unset( $var3 );
$var3 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var4 = compiledFetchAttribute( $var3, 'node_id' );
unset( $var3 );
$var3 = $var4;
if (! isset( $var3 ) ) $var3 = NULL;
while ( is_object( $var3 ) and method_exists( $var3, 'templateValue' ) )
    $var3 = $var3->templateValue();
while ( is_object( $var3 ) and method_exists( $var3, 'templateValue' ) )
    $var3 = $var3->templateValue();
$var1 = ( 'ezjscore/call/ezjscnode::subtree::' . $var3 );
unset( $var3 );
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();

eZURI::transformURI( $var1, false, eZURI::getTransformURIMode() );
$var = $var1;
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
    editPrefixURL: "/hollywood/index.php/site_admin/content/edit",
    rowsPrPage: ';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'number_of_items', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['number_of_items'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= ',
    sortOrder: ';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var1 = compiledFetchAttribute( $var, 'sort_order' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= ',
    nameFilter: \'';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'view_parameters', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['view_parameters'] : null;
$var1 = compiledFetchAttribute( $var, 'namefilter' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '\',
    defaultShownColumns: vcols,
    navigationPart: "';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'section', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['section'] : null;
$var1 = compiledFetchAttribute( $var, 'navigation_part_identifier' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '",
    cookieName: "eZSubitemColumns",
    cookieSecure: false,
    cookieDomain: "localhost:8080",
    languages: availableLanguages,
    classesString: ';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var1 = compiledFetchAttribute( $var, 'classes_js_array' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= ',
    flagIcons: icons
}

var labelsObj = {

    DATA_TABLE: {
                        msg_loading: "';
unset( $var );
$var = 'Lade ...' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '"
                    },

    DATA_TABLE_COLS: {
                        thumbnail: "';
unset( $var );
$var = 'Miniaturansicht' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        name: "';
unset( $var );
$var = 'Name' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        visibility: "';
unset( $var );
$var = 'Sichtbarkeit' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        type: "';
unset( $var );
$var = 'Typ' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        modifier: "';
unset( $var );
$var = 'Bearbeiter' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        modified: "';
unset( $var );
$var = 'Geändert' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        published: "';
unset( $var );
$var = 'Veröffentlicht' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        section: "';
unset( $var );
$var = 'Sektion' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        translations: "';
unset( $var );
$var = 'Übersetzungen' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        priority: "';
unset( $var );
$var = 'Priorität' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        nodeid: "';
unset( $var );
$var = 'Knoten ID' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        objectid: "';
unset( $var );
$var = 'Objekt ID' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        noderemoteid: "';
unset( $var );
$var = 'Knoten remote ID' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        objectremoteid: "';
unset( $var );
$var = 'Objekt remote ID' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        objectstate: "';
unset( $var );
$var = 'Object state' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '"
                    },

    TABLE_OPTIONS: {
                        header: "';
unset( $var );
$var = 'Einstellungen' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        header_noipp: "';
unset( $var );
$var = 'Anzahl der Elemente pro Seite:' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        header_vtc: "';
unset( $var );
$var = 'Sichtbare Tabellenspalten:' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        button_close: "';
unset( $var );
$var = 'Close' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '"
                   },

    ACTION_BUTTONS: {
                        select: "';
unset( $var );
$var = 'Auswählen' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        select_sav: "';
unset( $var );
$var = 'Alle sichtbaren Einträge auswählen' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        select_sn: "';
unset( $var );
$var = 'Keine auswählen' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        select_inv: "';
unset( $var );
$var = 'Auswahl umkehren' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        create_new: "';
unset( $var );
$var = 'Neu erstellen' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        more_actions: "';
unset( $var );
$var = 'Weitere Aktionen' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        more_actions_rs: "';
unset( $var );
$var = 'Ausgewähltes entfernen' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        more_actions_ms: "';
unset( $var );
$var = 'Ausgewähltes verschieben' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        more_actions_no: "';
unset( $var );
$var = 'Benutzen Sie die Auswahlkästchen, um weitere Elemente auszuwählen.' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        table_options: "';
unset( $var );
$var = 'Einstellungen' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        first_page: "&laquo;&nbsp;';
unset( $var );
$var = 'Anfang' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        previous_page: "&lsaquo;&nbsp;';
unset( $var );
$var = 'zurück' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '",
                        next_page: "';
unset( $var );
$var = 'weiter' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '&nbsp;&rsaquo;",
                        last_page: "';
unset( $var );
$var = 'Ende' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '&nbsp;&raquo;"
                    }
};
';
// if begins
unset( $if_cond );
unset( $if_cond1 );
unset( $if_cond1 );
$if_cond1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$if_cond2 = compiledFetchAttribute( $if_cond1, 'is_container' );
unset( $if_cond1 );
$if_cond1 = $if_cond2;
if (! isset( $if_cond1 ) ) $if_cond1 = NULL;
while ( is_object( $if_cond1 ) and method_exists( $if_cond1, 'templateValue' ) )
    $if_cond1 = $if_cond1->templateValue();
unset( $if_cond2 );
unset( $if_cond2 );
$if_cond2 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$if_cond3 = compiledFetchAttribute( $if_cond2, 'can_create' );
unset( $if_cond2 );
$if_cond2 = $if_cond3;
if (! isset( $if_cond2 ) ) $if_cond2 = NULL;
while ( is_object( $if_cond2 ) and method_exists( $if_cond2, 'templateValue' ) )
    $if_cond2 = $if_cond2->templateValue();
if ( !$if_cond1 )
    $if_cond = false;
else if ( !$if_cond2 )
    $if_cond = false;
else
    $if_cond = $if_cond2;
unset( $if_cond1, $if_cond2 );
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '    ';
unset( $elseif_cond_dbebccfb075865fcd879702972f4abaa_116 );
unset( $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161 );
unset( $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161 );
$elseif_cond_dbebccfb075865fcd879702972f4abaa_1161 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$elseif_cond_dbebccfb075865fcd879702972f4abaa_1162 = compiledFetchAttribute( $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161, 'path_array' );
unset( $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161 );
$elseif_cond_dbebccfb075865fcd879702972f4abaa_1161 = $elseif_cond_dbebccfb075865fcd879702972f4abaa_1162;
if (! isset( $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161 ) ) $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161 = NULL;
while ( is_object( $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161 ) and method_exists( $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161, 'templateValue' ) )
    $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161 = $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161->templateValue();
while ( is_object( $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161 ) and method_exists( $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161, 'templateValue' ) )
    $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161 = $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161->templateValue();
if( is_string( $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161 ) )
{
  $elseif_cond_dbebccfb075865fcd879702972f4abaa_116 = ( strpos( $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161, "5" ) !== false );
}
else if ( is_array( $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161 ) )
{
  $elseif_cond_dbebccfb075865fcd879702972f4abaa_116 = in_array( "5", $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161 );
}
else
{
$elseif_cond_dbebccfb075865fcd879702972f4abaa_116 = false;
}unset( $elseif_cond_dbebccfb075865fcd879702972f4abaa_1161 );
if (! isset( $elseif_cond_dbebccfb075865fcd879702972f4abaa_116 ) ) $elseif_cond_dbebccfb075865fcd879702972f4abaa_116 = NULL;
while ( is_object( $elseif_cond_dbebccfb075865fcd879702972f4abaa_116 ) and method_exists( $elseif_cond_dbebccfb075865fcd879702972f4abaa_116, 'templateValue' ) )
    $elseif_cond_dbebccfb075865fcd879702972f4abaa_116 = $elseif_cond_dbebccfb075865fcd879702972f4abaa_116->templateValue();

// if begins
unset( $if_cond );
unset( $if_cond1 );
unset( $if_cond1 );
$if_cond1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$if_cond2 = compiledFetchAttribute( $if_cond1, 'path_array' );
unset( $if_cond1 );
$if_cond1 = $if_cond2;
if (! isset( $if_cond1 ) ) $if_cond1 = NULL;
while ( is_object( $if_cond1 ) and method_exists( $if_cond1, 'templateValue' ) )
    $if_cond1 = $if_cond1->templateValue();
if( is_string( $if_cond1 ) )
{
  $if_cond = ( strpos( $if_cond1, "43" ) !== false );
}
else if ( is_array( $if_cond1 ) )
{
  $if_cond = in_array( "43", $if_cond1 );
}
else
{
$if_cond = false;
}unset( $if_cond1 );
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '        ';
// def $group_id
if ( $tpl->hasVariable( 'group_id', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'group_id' is already defined.", array (
  0 => 
  array (
    0 => 122,
    1 => 8,
    2 => 6203,
  ),
  1 => 
  array (
    0 => 123,
    1 => 82,
    2 => 6358,
  ),
  2 => 'design/admin2/templates/children_detailed.tpl',
) );
    $tpl->setVariable( 'group_id', array (
  0 => '2',
  1 => '4',
), $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'group_id', array (
  0 => '2',
  1 => '4',
), $rootNamespace );
}

$text .= '    ';
}
elseif ( $elseif_cond_dbebccfb075865fcd879702972f4abaa_116 )
{
$text .= '        ';
// def $group_id
if ( $tpl->hasVariable( 'group_id', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'group_id' is already defined.", array (
  0 => 
  array (
    0 => 125,
    1 => 8,
    2 => 6466,
  ),
  1 => 
  array (
    0 => 127,
    1 => 82,
    2 => 6705,
  ),
  2 => 'design/admin2/templates/children_detailed.tpl',
) );
    $tpl->setVariable( 'group_id', array (
  0 => '4',
  1 => '1',
  2 => '3',
), $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'group_id', array (
  0 => '4',
  1 => '1',
  2 => '3',
), $rootNamespace );
}

$text .= '    ';
}
else
{
$text .= '        ';
// def $group_id
if ( $tpl->hasVariable( 'group_id', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'group_id' is already defined.", array (
  0 => 
  array (
    0 => 129,
    1 => 8,
    2 => 6727,
  ),
  1 => 
  array (
    0 => 129,
    1 => 31,
    2 => 6750,
  ),
  2 => 'design/admin2/templates/children_detailed.tpl',
) );
    $tpl->setVariable( 'group_id', false, $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'group_id', false, $rootNamespace );
}

$text .= '    ';
}
unset( $if_cond );
// if ends

unset( $elseif_cond_dbebccfb075865fcd879702972f4abaa_116 );

$text .= '
    ';
// def $can_create_classes
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'group_id', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['group_id'] : null;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
unset( $var2 );
unset( $var2 );
$var2 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
if (! isset( $var2 ) ) $var2 = NULL;
while ( is_object( $var2 ) and method_exists( $var2, 'templateValue' ) )
    $var2 = $var2->templateValue();
while ( is_object( $var2 ) and method_exists( $var2, 'templateValue' ) )
    $var2 = $var2->templateValue();
$var = call_user_func_array( array( new eZContentFunctionCollection(), 'canInstantiateClassList' ),
  array(     'group_id' => $var1,
    'parent_node' => $var2,
    'filter_type' => "exclude",
    'fetch_id' => false,
    'as_object' => true,
    'group_by_class_group' => true ) );
$var = isset( $var['result'] ) ? $var['result'] : null;
unset( $var1, $var2 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
if ( $tpl->hasVariable( 'can_create_classes', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'can_create_classes' is already defined.", array (
  0 => 
  array (
    0 => 132,
    1 => 4,
    2 => 6768,
  ),
  1 => 
  array (
    0 => 135,
    1 => 119,
    2 => 7208,
  ),
  2 => 'design/admin2/templates/children_detailed.tpl',
) );
    $tpl->setVariable( 'can_create_classes', $var, $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'can_create_classes', $var, $rootNamespace );
}

$text .= '
    var createGroups = [

    ';
// foreach begins
$skipDelimiter = true;
if ( !isset( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_23 ) ) $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_23 = array();
$fe_variable_stack_dbebccfb075865fcd879702972f4abaa_23[] = compact( 'fe_array_dbebccfb075865fcd879702972f4abaa_23', 'fe_array_keys_dbebccfb075865fcd879702972f4abaa_23', 'fe_n_items_dbebccfb075865fcd879702972f4abaa_23', 'fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_23', 'fe_i_dbebccfb075865fcd879702972f4abaa_23', 'fe_key_dbebccfb075865fcd879702972f4abaa_23', 'fe_val_dbebccfb075865fcd879702972f4abaa_23', 'fe_offset_dbebccfb075865fcd879702972f4abaa_23', 'fe_max_dbebccfb075865fcd879702972f4abaa_23', 'fe_reverse_dbebccfb075865fcd879702972f4abaa_23', 'fe_first_val_dbebccfb075865fcd879702972f4abaa_23', 'fe_last_val_dbebccfb075865fcd879702972f4abaa_23' );
unset( $fe_array_dbebccfb075865fcd879702972f4abaa_23 );
unset( $fe_array_dbebccfb075865fcd879702972f4abaa_23 );
$fe_array_dbebccfb075865fcd879702972f4abaa_23 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'can_create_classes', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['can_create_classes'] : null;
if (! isset( $fe_array_dbebccfb075865fcd879702972f4abaa_23 ) ) $fe_array_dbebccfb075865fcd879702972f4abaa_23 = NULL;
while ( is_object( $fe_array_dbebccfb075865fcd879702972f4abaa_23 ) and method_exists( $fe_array_dbebccfb075865fcd879702972f4abaa_23, 'templateValue' ) )
    $fe_array_dbebccfb075865fcd879702972f4abaa_23 = $fe_array_dbebccfb075865fcd879702972f4abaa_23->templateValue();

$fe_array_keys_dbebccfb075865fcd879702972f4abaa_23 = is_array( $fe_array_dbebccfb075865fcd879702972f4abaa_23 ) ? array_keys( $fe_array_dbebccfb075865fcd879702972f4abaa_23 ) : array();
$fe_n_items_dbebccfb075865fcd879702972f4abaa_23 = count( $fe_array_keys_dbebccfb075865fcd879702972f4abaa_23 );
$fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_23 = 0;
$fe_offset_dbebccfb075865fcd879702972f4abaa_23 = 0;
$fe_max_dbebccfb075865fcd879702972f4abaa_23 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_23 - $fe_offset_dbebccfb075865fcd879702972f4abaa_23;
$fe_reverse_dbebccfb075865fcd879702972f4abaa_23 = false;
if ( $fe_offset_dbebccfb075865fcd879702972f4abaa_23 < 0 || $fe_offset_dbebccfb075865fcd879702972f4abaa_23 >= $fe_n_items_dbebccfb075865fcd879702972f4abaa_23 )
{
    $fe_offset_dbebccfb075865fcd879702972f4abaa_23 = ( $fe_offset_dbebccfb075865fcd879702972f4abaa_23 < 0 ) ? 0 : $fe_n_items_dbebccfb075865fcd879702972f4abaa_23;
    if ( $fe_n_items_dbebccfb075865fcd879702972f4abaa_23 || $fe_offset_dbebccfb075865fcd879702972f4abaa_23 < 0 )
 {
        eZDebug::writeWarning("Invalid 'offset' parameter specified: '$fe_offset_dbebccfb075865fcd879702972f4abaa_23'. Array count: $fe_n_items_dbebccfb075865fcd879702972f4abaa_23");   
}
}
if ( $fe_max_dbebccfb075865fcd879702972f4abaa_23 < 0 || $fe_offset_dbebccfb075865fcd879702972f4abaa_23 + $fe_max_dbebccfb075865fcd879702972f4abaa_23 > $fe_n_items_dbebccfb075865fcd879702972f4abaa_23 )
{
    if ( $fe_max_dbebccfb075865fcd879702972f4abaa_23 < 0 )
 eZDebug::writeWarning("Invalid 'max' parameter specified: $fe_max_dbebccfb075865fcd879702972f4abaa_23");
    $fe_max_dbebccfb075865fcd879702972f4abaa_23 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_23 - $fe_offset_dbebccfb075865fcd879702972f4abaa_23;
}
if ( $fe_reverse_dbebccfb075865fcd879702972f4abaa_23 )
{
    $fe_first_val_dbebccfb075865fcd879702972f4abaa_23 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_23 - 1 - $fe_offset_dbebccfb075865fcd879702972f4abaa_23;
    $fe_last_val_dbebccfb075865fcd879702972f4abaa_23  = 0;
}
else
{
    $fe_first_val_dbebccfb075865fcd879702972f4abaa_23 = $fe_offset_dbebccfb075865fcd879702972f4abaa_23;
    $fe_last_val_dbebccfb075865fcd879702972f4abaa_23  = $fe_n_items_dbebccfb075865fcd879702972f4abaa_23 - 1;
}
// foreach
for ( $fe_i_dbebccfb075865fcd879702972f4abaa_23 = $fe_first_val_dbebccfb075865fcd879702972f4abaa_23; $fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_23 < $fe_max_dbebccfb075865fcd879702972f4abaa_23 && ( $fe_reverse_dbebccfb075865fcd879702972f4abaa_23 ? $fe_i_dbebccfb075865fcd879702972f4abaa_23 >= $fe_last_val_dbebccfb075865fcd879702972f4abaa_23 : $fe_i_dbebccfb075865fcd879702972f4abaa_23 <= $fe_last_val_dbebccfb075865fcd879702972f4abaa_23 ); $fe_reverse_dbebccfb075865fcd879702972f4abaa_23 ? $fe_i_dbebccfb075865fcd879702972f4abaa_23-- : $fe_i_dbebccfb075865fcd879702972f4abaa_23++ )
{
$fe_key_dbebccfb075865fcd879702972f4abaa_23 = $fe_array_keys_dbebccfb075865fcd879702972f4abaa_23[$fe_i_dbebccfb075865fcd879702972f4abaa_23];
$fe_val_dbebccfb075865fcd879702972f4abaa_23 = $fe_array_dbebccfb075865fcd879702972f4abaa_23[$fe_key_dbebccfb075865fcd879702972f4abaa_23];
$vars[$rootNamespace]['group'] = $fe_val_dbebccfb075865fcd879702972f4abaa_23;
if ( $skipDelimiter )
    $skipDelimiter = false;
else
{ // delimiter begins
$text .= '        ,
        ';
} // delimiter ends

$text .= '        "';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'group', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['group'] : null;
$var1 = compiledFetchAttribute( $var, 'group_name' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '"
            ';
$fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_23++;
} // foreach
$skipDelimiter = false;
if ( count( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_23 ) ) extract( array_pop( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_23 ) );

else
{

unset( $fe_array_dbebccfb075865fcd879702972f4abaa_23 );

unset( $fe_array_keys_dbebccfb075865fcd879702972f4abaa_23 );

unset( $fe_n_items_dbebccfb075865fcd879702972f4abaa_23 );

unset( $fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_23 );

unset( $fe_i_dbebccfb075865fcd879702972f4abaa_23 );

unset( $fe_key_dbebccfb075865fcd879702972f4abaa_23 );

unset( $fe_val_dbebccfb075865fcd879702972f4abaa_23 );

unset( $fe_offset_dbebccfb075865fcd879702972f4abaa_23 );

unset( $fe_max_dbebccfb075865fcd879702972f4abaa_23 );

unset( $fe_reverse_dbebccfb075865fcd879702972f4abaa_23 );

unset( $fe_first_val_dbebccfb075865fcd879702972f4abaa_23 );

unset( $fe_last_val_dbebccfb075865fcd879702972f4abaa_23 );

unset( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_23 );

}

// foreach ends
$text .= '
    ];

    var createOptions = [

    ';
// foreach begins
$skipDelimiter = true;
if ( !isset( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_25 ) ) $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_25 = array();
$fe_variable_stack_dbebccfb075865fcd879702972f4abaa_25[] = compact( 'fe_array_dbebccfb075865fcd879702972f4abaa_25', 'fe_array_keys_dbebccfb075865fcd879702972f4abaa_25', 'fe_n_items_dbebccfb075865fcd879702972f4abaa_25', 'fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_25', 'fe_i_dbebccfb075865fcd879702972f4abaa_25', 'fe_key_dbebccfb075865fcd879702972f4abaa_25', 'fe_val_dbebccfb075865fcd879702972f4abaa_25', 'fe_offset_dbebccfb075865fcd879702972f4abaa_25', 'fe_max_dbebccfb075865fcd879702972f4abaa_25', 'fe_reverse_dbebccfb075865fcd879702972f4abaa_25', 'fe_first_val_dbebccfb075865fcd879702972f4abaa_25', 'fe_last_val_dbebccfb075865fcd879702972f4abaa_25' );
unset( $fe_array_dbebccfb075865fcd879702972f4abaa_25 );
unset( $fe_array_dbebccfb075865fcd879702972f4abaa_25 );
$fe_array_dbebccfb075865fcd879702972f4abaa_25 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'can_create_classes', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['can_create_classes'] : null;
if (! isset( $fe_array_dbebccfb075865fcd879702972f4abaa_25 ) ) $fe_array_dbebccfb075865fcd879702972f4abaa_25 = NULL;
while ( is_object( $fe_array_dbebccfb075865fcd879702972f4abaa_25 ) and method_exists( $fe_array_dbebccfb075865fcd879702972f4abaa_25, 'templateValue' ) )
    $fe_array_dbebccfb075865fcd879702972f4abaa_25 = $fe_array_dbebccfb075865fcd879702972f4abaa_25->templateValue();

$fe_array_keys_dbebccfb075865fcd879702972f4abaa_25 = is_array( $fe_array_dbebccfb075865fcd879702972f4abaa_25 ) ? array_keys( $fe_array_dbebccfb075865fcd879702972f4abaa_25 ) : array();
$fe_n_items_dbebccfb075865fcd879702972f4abaa_25 = count( $fe_array_keys_dbebccfb075865fcd879702972f4abaa_25 );
$fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_25 = 0;
$fe_offset_dbebccfb075865fcd879702972f4abaa_25 = 0;
$fe_max_dbebccfb075865fcd879702972f4abaa_25 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_25 - $fe_offset_dbebccfb075865fcd879702972f4abaa_25;
$fe_reverse_dbebccfb075865fcd879702972f4abaa_25 = false;
if ( $fe_offset_dbebccfb075865fcd879702972f4abaa_25 < 0 || $fe_offset_dbebccfb075865fcd879702972f4abaa_25 >= $fe_n_items_dbebccfb075865fcd879702972f4abaa_25 )
{
    $fe_offset_dbebccfb075865fcd879702972f4abaa_25 = ( $fe_offset_dbebccfb075865fcd879702972f4abaa_25 < 0 ) ? 0 : $fe_n_items_dbebccfb075865fcd879702972f4abaa_25;
    if ( $fe_n_items_dbebccfb075865fcd879702972f4abaa_25 || $fe_offset_dbebccfb075865fcd879702972f4abaa_25 < 0 )
 {
        eZDebug::writeWarning("Invalid 'offset' parameter specified: '$fe_offset_dbebccfb075865fcd879702972f4abaa_25'. Array count: $fe_n_items_dbebccfb075865fcd879702972f4abaa_25");   
}
}
if ( $fe_max_dbebccfb075865fcd879702972f4abaa_25 < 0 || $fe_offset_dbebccfb075865fcd879702972f4abaa_25 + $fe_max_dbebccfb075865fcd879702972f4abaa_25 > $fe_n_items_dbebccfb075865fcd879702972f4abaa_25 )
{
    if ( $fe_max_dbebccfb075865fcd879702972f4abaa_25 < 0 )
 eZDebug::writeWarning("Invalid 'max' parameter specified: $fe_max_dbebccfb075865fcd879702972f4abaa_25");
    $fe_max_dbebccfb075865fcd879702972f4abaa_25 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_25 - $fe_offset_dbebccfb075865fcd879702972f4abaa_25;
}
if ( $fe_reverse_dbebccfb075865fcd879702972f4abaa_25 )
{
    $fe_first_val_dbebccfb075865fcd879702972f4abaa_25 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_25 - 1 - $fe_offset_dbebccfb075865fcd879702972f4abaa_25;
    $fe_last_val_dbebccfb075865fcd879702972f4abaa_25  = 0;
}
else
{
    $fe_first_val_dbebccfb075865fcd879702972f4abaa_25 = $fe_offset_dbebccfb075865fcd879702972f4abaa_25;
    $fe_last_val_dbebccfb075865fcd879702972f4abaa_25  = $fe_n_items_dbebccfb075865fcd879702972f4abaa_25 - 1;
}
// foreach
for ( $fe_i_dbebccfb075865fcd879702972f4abaa_25 = $fe_first_val_dbebccfb075865fcd879702972f4abaa_25; $fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_25 < $fe_max_dbebccfb075865fcd879702972f4abaa_25 && ( $fe_reverse_dbebccfb075865fcd879702972f4abaa_25 ? $fe_i_dbebccfb075865fcd879702972f4abaa_25 >= $fe_last_val_dbebccfb075865fcd879702972f4abaa_25 : $fe_i_dbebccfb075865fcd879702972f4abaa_25 <= $fe_last_val_dbebccfb075865fcd879702972f4abaa_25 ); $fe_reverse_dbebccfb075865fcd879702972f4abaa_25 ? $fe_i_dbebccfb075865fcd879702972f4abaa_25-- : $fe_i_dbebccfb075865fcd879702972f4abaa_25++ )
{
$fe_key_dbebccfb075865fcd879702972f4abaa_25 = $fe_array_keys_dbebccfb075865fcd879702972f4abaa_25[$fe_i_dbebccfb075865fcd879702972f4abaa_25];
$fe_val_dbebccfb075865fcd879702972f4abaa_25 = $fe_array_dbebccfb075865fcd879702972f4abaa_25[$fe_key_dbebccfb075865fcd879702972f4abaa_25];
$vars[$rootNamespace]['group'] = $fe_val_dbebccfb075865fcd879702972f4abaa_25;
if ( $skipDelimiter )
    $skipDelimiter = false;
else
{ // delimiter begins
$text .= '        ,
        ';
} // delimiter ends

$text .= '        [
        ';
// foreach begins
$skipDelimiter = true;
if ( !isset( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_24 ) ) $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_24 = array();
$fe_variable_stack_dbebccfb075865fcd879702972f4abaa_24[] = compact( 'fe_array_dbebccfb075865fcd879702972f4abaa_24', 'fe_array_keys_dbebccfb075865fcd879702972f4abaa_24', 'fe_n_items_dbebccfb075865fcd879702972f4abaa_24', 'fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_24', 'fe_i_dbebccfb075865fcd879702972f4abaa_24', 'fe_key_dbebccfb075865fcd879702972f4abaa_24', 'fe_val_dbebccfb075865fcd879702972f4abaa_24', 'fe_offset_dbebccfb075865fcd879702972f4abaa_24', 'fe_max_dbebccfb075865fcd879702972f4abaa_24', 'fe_reverse_dbebccfb075865fcd879702972f4abaa_24', 'fe_first_val_dbebccfb075865fcd879702972f4abaa_24', 'fe_last_val_dbebccfb075865fcd879702972f4abaa_24' );
unset( $fe_array_dbebccfb075865fcd879702972f4abaa_24 );
unset( $fe_array_dbebccfb075865fcd879702972f4abaa_24 );
$fe_array_dbebccfb075865fcd879702972f4abaa_24 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'group', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['group'] : null;
$fe_array_dbebccfb075865fcd879702972f4abaa_241 = compiledFetchAttribute( $fe_array_dbebccfb075865fcd879702972f4abaa_24, 'items' );
unset( $fe_array_dbebccfb075865fcd879702972f4abaa_24 );
$fe_array_dbebccfb075865fcd879702972f4abaa_24 = $fe_array_dbebccfb075865fcd879702972f4abaa_241;
if (! isset( $fe_array_dbebccfb075865fcd879702972f4abaa_24 ) ) $fe_array_dbebccfb075865fcd879702972f4abaa_24 = NULL;
while ( is_object( $fe_array_dbebccfb075865fcd879702972f4abaa_24 ) and method_exists( $fe_array_dbebccfb075865fcd879702972f4abaa_24, 'templateValue' ) )
    $fe_array_dbebccfb075865fcd879702972f4abaa_24 = $fe_array_dbebccfb075865fcd879702972f4abaa_24->templateValue();

$fe_array_keys_dbebccfb075865fcd879702972f4abaa_24 = is_array( $fe_array_dbebccfb075865fcd879702972f4abaa_24 ) ? array_keys( $fe_array_dbebccfb075865fcd879702972f4abaa_24 ) : array();
$fe_n_items_dbebccfb075865fcd879702972f4abaa_24 = count( $fe_array_keys_dbebccfb075865fcd879702972f4abaa_24 );
$fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_24 = 0;
$fe_offset_dbebccfb075865fcd879702972f4abaa_24 = 0;
$fe_max_dbebccfb075865fcd879702972f4abaa_24 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_24 - $fe_offset_dbebccfb075865fcd879702972f4abaa_24;
$fe_reverse_dbebccfb075865fcd879702972f4abaa_24 = false;
if ( $fe_offset_dbebccfb075865fcd879702972f4abaa_24 < 0 || $fe_offset_dbebccfb075865fcd879702972f4abaa_24 >= $fe_n_items_dbebccfb075865fcd879702972f4abaa_24 )
{
    $fe_offset_dbebccfb075865fcd879702972f4abaa_24 = ( $fe_offset_dbebccfb075865fcd879702972f4abaa_24 < 0 ) ? 0 : $fe_n_items_dbebccfb075865fcd879702972f4abaa_24;
    if ( $fe_n_items_dbebccfb075865fcd879702972f4abaa_24 || $fe_offset_dbebccfb075865fcd879702972f4abaa_24 < 0 )
 {
        eZDebug::writeWarning("Invalid 'offset' parameter specified: '$fe_offset_dbebccfb075865fcd879702972f4abaa_24'. Array count: $fe_n_items_dbebccfb075865fcd879702972f4abaa_24");   
}
}
if ( $fe_max_dbebccfb075865fcd879702972f4abaa_24 < 0 || $fe_offset_dbebccfb075865fcd879702972f4abaa_24 + $fe_max_dbebccfb075865fcd879702972f4abaa_24 > $fe_n_items_dbebccfb075865fcd879702972f4abaa_24 )
{
    if ( $fe_max_dbebccfb075865fcd879702972f4abaa_24 < 0 )
 eZDebug::writeWarning("Invalid 'max' parameter specified: $fe_max_dbebccfb075865fcd879702972f4abaa_24");
    $fe_max_dbebccfb075865fcd879702972f4abaa_24 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_24 - $fe_offset_dbebccfb075865fcd879702972f4abaa_24;
}
if ( $fe_reverse_dbebccfb075865fcd879702972f4abaa_24 )
{
    $fe_first_val_dbebccfb075865fcd879702972f4abaa_24 = $fe_n_items_dbebccfb075865fcd879702972f4abaa_24 - 1 - $fe_offset_dbebccfb075865fcd879702972f4abaa_24;
    $fe_last_val_dbebccfb075865fcd879702972f4abaa_24  = 0;
}
else
{
    $fe_first_val_dbebccfb075865fcd879702972f4abaa_24 = $fe_offset_dbebccfb075865fcd879702972f4abaa_24;
    $fe_last_val_dbebccfb075865fcd879702972f4abaa_24  = $fe_n_items_dbebccfb075865fcd879702972f4abaa_24 - 1;
}
// foreach
for ( $fe_i_dbebccfb075865fcd879702972f4abaa_24 = $fe_first_val_dbebccfb075865fcd879702972f4abaa_24; $fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_24 < $fe_max_dbebccfb075865fcd879702972f4abaa_24 && ( $fe_reverse_dbebccfb075865fcd879702972f4abaa_24 ? $fe_i_dbebccfb075865fcd879702972f4abaa_24 >= $fe_last_val_dbebccfb075865fcd879702972f4abaa_24 : $fe_i_dbebccfb075865fcd879702972f4abaa_24 <= $fe_last_val_dbebccfb075865fcd879702972f4abaa_24 ); $fe_reverse_dbebccfb075865fcd879702972f4abaa_24 ? $fe_i_dbebccfb075865fcd879702972f4abaa_24-- : $fe_i_dbebccfb075865fcd879702972f4abaa_24++ )
{
$fe_key_dbebccfb075865fcd879702972f4abaa_24 = $fe_array_keys_dbebccfb075865fcd879702972f4abaa_24[$fe_i_dbebccfb075865fcd879702972f4abaa_24];
$fe_val_dbebccfb075865fcd879702972f4abaa_24 = $fe_array_dbebccfb075865fcd879702972f4abaa_24[$fe_key_dbebccfb075865fcd879702972f4abaa_24];
$vars[$rootNamespace]['can_create_class'] = $fe_val_dbebccfb075865fcd879702972f4abaa_24;
if ( $skipDelimiter )
    $skipDelimiter = false;
else
{ // delimiter begins
// if begins
unset( $if_cond );
unset( $if_cond );
$if_cond = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'can_create_class', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['can_create_class'] : null;
$if_cond1 = compiledFetchAttribute( $if_cond, 'can_instantiate_languages' );
unset( $if_cond );
$if_cond = $if_cond1;
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= ',';
}
unset( $if_cond );
// if ends

} // delimiter ends

$text .= '            ';
// if begins
unset( $if_cond );
unset( $if_cond );
$if_cond = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'can_create_class', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['can_create_class'] : null;
$if_cond1 = compiledFetchAttribute( $if_cond, 'can_instantiate_languages' );
unset( $if_cond );
$if_cond = $if_cond1;
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '            { text: "';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'can_create_class', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['can_create_class'] : null;
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

$text .= '", value: ';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'can_create_class', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['can_create_class'] : null;
$var1 = compiledFetchAttribute( $var, 'id' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= ' }
            ';
}
unset( $if_cond );
// if ends

$text .= '                    ';
$fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_24++;
} // foreach
$skipDelimiter = false;
if ( count( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_24 ) ) extract( array_pop( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_24 ) );

else
{

unset( $fe_array_dbebccfb075865fcd879702972f4abaa_24 );

unset( $fe_array_keys_dbebccfb075865fcd879702972f4abaa_24 );

unset( $fe_n_items_dbebccfb075865fcd879702972f4abaa_24 );

unset( $fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_24 );

unset( $fe_i_dbebccfb075865fcd879702972f4abaa_24 );

unset( $fe_key_dbebccfb075865fcd879702972f4abaa_24 );

unset( $fe_val_dbebccfb075865fcd879702972f4abaa_24 );

unset( $fe_offset_dbebccfb075865fcd879702972f4abaa_24 );

unset( $fe_max_dbebccfb075865fcd879702972f4abaa_24 );

unset( $fe_reverse_dbebccfb075865fcd879702972f4abaa_24 );

unset( $fe_first_val_dbebccfb075865fcd879702972f4abaa_24 );

unset( $fe_last_val_dbebccfb075865fcd879702972f4abaa_24 );

unset( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_24 );

}

// foreach ends
$text .= '        ]
            ';
$fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_25++;
} // foreach
$skipDelimiter = false;
if ( count( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_25 ) ) extract( array_pop( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_25 ) );

else
{

unset( $fe_array_dbebccfb075865fcd879702972f4abaa_25 );

unset( $fe_array_keys_dbebccfb075865fcd879702972f4abaa_25 );

unset( $fe_n_items_dbebccfb075865fcd879702972f4abaa_25 );

unset( $fe_n_items_processed_dbebccfb075865fcd879702972f4abaa_25 );

unset( $fe_i_dbebccfb075865fcd879702972f4abaa_25 );

unset( $fe_key_dbebccfb075865fcd879702972f4abaa_25 );

unset( $fe_val_dbebccfb075865fcd879702972f4abaa_25 );

unset( $fe_offset_dbebccfb075865fcd879702972f4abaa_25 );

unset( $fe_max_dbebccfb075865fcd879702972f4abaa_25 );

unset( $fe_reverse_dbebccfb075865fcd879702972f4abaa_25 );

unset( $fe_first_val_dbebccfb075865fcd879702972f4abaa_25 );

unset( $fe_last_val_dbebccfb075865fcd879702972f4abaa_25 );

unset( $fe_variable_stack_dbebccfb075865fcd879702972f4abaa_25 );

}

// foreach ends
$text .= '    ];
';
}
else
{
$text .= '    var createGroups = [];
    var createOptions = [];';
}
unset( $if_cond );
// if ends

$text .= '

YUILoader.require([\'datatable\', \'button\', \'container\', \'cookie\', \'element\']);
YUILoader.onSuccess = function() {
    sortableSubitems.init(confObj, labelsObj, createGroups, createOptions);
};
var options = [];
YUILoader.insert(options, \'js\');

})();
';
// undef $section
$tpl->unsetLocalVariable( 'section', $rootNamespace );

// undef $visible_columns
$tpl->unsetLocalVariable( 'visible_columns', $rootNamespace );

// undef $locales
$tpl->unsetLocalVariable( 'locales', $rootNamespace );

$text .= '</script>

<div id="action-controls-container">
    <div id="action-controls"></div>
    <div id="tpg"></div>
</div>
<div id="content-sub-items-list" class="content-navigation-childlist"></div>
<div id="bpg"></div>

<div id="to-dialog-container"></div>
';

$setArray = $oldSetArray_fe5d6ec3273094fb8ed62cde727c1ed3;
$tpl->Level--;
?>
