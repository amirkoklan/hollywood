{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{if and( is_set( $warning_messages), $warning_messages|count|ge(1) )}
    <div class="message-warning">
    <h2><span class="time">[{currentdate()|l10n( shortdatetime )}]</span> {'Problems detected during autoload generation:'|i18n( 'design/standard/setup/extensions' )}</h2>
    <ul>
    {foreach $warning_messages as $warning}
        <li><p>{$warning|break()}</p></li>
    {/foreach}
    </ul>
    </div>
{/if}

<h1>{'Extension setup'|i18n('design/standard/setup')}</h1>
<p>
    {'Here you can activate/deactivate you extensions. Only system wide extensions can be activated, for site access specific extensions, modify these configuration files.'|i18n('design/standard/setup')}
</p>

<h2>{'Available extensions'|i18n('design/standard/setup')}</h2>
<form method="post" action={"/setup/extensions"|ezurl}>
{section name=Extensions loop=$available_extension_array}
<input type="checkbox" name="ActiveExtensionList[]" value="{$:item}"
{if $selected_extension_array|contains($Extensions:item)}
 checked
{/if}
 />{$:item}<br />
{/section}
<br />
<input type="submit" name="ActivateExtensionsButton" value="{'Activate extensions'|i18n('design/standard/setup')}" />
<input type="submit" name="GenerateAutoloadArraysButton" value="{'Regenerate autoload arrays for extensions'|i18n( 'design/standard/setup/extensions' )}" title="{'Click this button to regenerate the autoload arrays used by the system for extensions.'|i18n( 'design/standard/setup/extensions' )}" />

</form>