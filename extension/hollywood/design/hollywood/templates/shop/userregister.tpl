{def $basket=fetch( 'shop', 'basket' )}

<div class="shop-userregister">

    <ul>
        <li>1. {"Shopping basket"|i18n("design/ezdemo/shop/userregister")}</li>
        <li class="selected">2. {"Account information"|i18n("design/ezdemo/shop/userregister")}
        </li>
        <li>3. {"Confirm order"|i18n("design/ezdemo/shop/userregister")}</li>
    </ul>

</div>

<div class="shop-userregister">

    <div class="attribute-header">
        <h1 class="long">{"Your account information"|i18n("design/ezdemo/shop/userregister")}</h1>
    </div>

    {section show=$input_error}
        <div class="warning">
            <p>
                {"Input did not validate. All fields marked with * must be filled in."|i18n("design/ezdemo/shop/userregister")}
            </p>
        </div>

    {/section}
    <form method="post" autocomplete="off" action={"/shop/userregister/"|ezurl}>

        <div class="block">
            <div class="element">
                <label>
                    {"First name"|i18n("design/ezdemo/shop/userregister")}:*
                </label><div class="labelbreak"></div>
                <input class="halfbox" type="text" name="FirstName" size="20" value="{$first_name|wash}" />
            </div>
            <div class="element">
                <label>
                    {"Last name"|i18n("design/ezdemo/shop/userregister")}:*
                </label><div class="labelbreak"></div>
                <input class="halfbox" type="text" name="LastName" size="20" value="{$last_name|wash}" />
            </div>
            <div class="break"></div>
        </div>
        <br />
        <div class="block">
            <label>
                {"Email"|i18n("design/ezdemo/shop/userregister")}:*
            </label><div class="labelbreak"></div>
            <input class="box" type="text" name="EMail" size="20" value="{$email|wash}" />
        </div>

        <div class="block">
            <label>
                {"Company"|i18n("design/ezdemo/shop/userregister")}:
            </label><div class="labelbreak"></div>
            <input class="box" type="text" name="Street1" size="20" value="{$street1|wash}" />
        </div>

        <div class="block">
            <label>
                {"Street"|i18n("design/ezdemo/shop/userregister")}:*
            </label><div class="labelbreak"></div>
            <input class="box" type="text" name="Street2" size="20" value="{$street2|wash}" />
        </div>

        <div class="block">
            <div class="element">
                <label>
                    {"Zip"|i18n("design/ezdemo/shop/userregister")}:*
                </label><div class="labelbreak"></div>
                <input class="halfbox" id="plz" type="text" onkeypress="zipValidate();" name="Zip" size="20" value="{$zip|wash}" required autocomplete="off"/>
                <span id="error-zip"></span>
            </div>
            <div class="element">
                <label>
                    {"Place"|i18n("design/ezdemo/shop/userregister")}:*
                </label><div class="labelbreak"></div>
                <input class="halfbox" type="text" name="Place" size="20" value="{$place|wash}" />
            </div>
            <div class="break"></div>
        </div>
        <br/>
        <div class="block no-display">
            <label>
                {"Country"|i18n("design/ezdemo/shop/userregister")}:*
            </label><div class="labelbreak"></div>
            <select name="Country" size="5"><option value="Deutschland" selected>Deutschland</option></select>
            {*include uri='design:shop/country/edit.tpl' select_name='Country' select_size=5 current_val=$country*}
        </div>
        <div class="block no-display">
            <label>
                {"State"|i18n("design/ezdemo/shop/userregister")}:
            </label><div class="labelbreak"></div>
            <input class="box" type="text" name="State" size="20" value="Baden-Württemberg" />
        </div>
        <div class="block">
            <label>
                {"Comment"|i18n("design/ezdemo/shop/userregister")}:
            </label><div class="labelbreak"></div>
            <textarea name="Comment" cols="80" rows="5">{$comment|wash}</textarea>
        </div>
        {literal}
            <script type="text/javascript">
                var sum ={/literal}{$basket.total_inc_vat}{literal};
                //alert(sum);
                $('#plz').keyup(function(e) {
                    if (document.getElementById('plz').value === '76131' || document.getElementById('plz').value === '76133' || document.getElementById('plz').value === '76135' || document.getElementById('plz').value === '76137') {
                        if (sum >= 8) {
                            document.getElementById('error-zip').innerHTML = " ";
                            document.getElementById("btn-continue").disabled = false;
                        }
                        else {
                            document.getElementById('error-zip').innerHTML = "Mindestbestellwert beachten fuer Ihre Region! (8 Euro)";
                        }
                    }
                    else if (document.getElementById('plz').value === '76149' || document.getElementById('plz').value === '76185' || document.getElementById('plz').value === '76187' || document.getElementById('plz').value === '76189')
                        if (sum >= 12) {
                            document.getElementById('error-zip').innerHTML = " ";
                            document.getElementById("btn-continue").disabled = false;
                        }
                        else {
                            document.getElementById('error-zip').innerHTML = "Mindestbestellwert beachten fuer Ihre Region! (12 Euro)";
                        }

                    else if (document.getElementById('plz').value === '76139' || document.getElementById('plz').value === '76199')
                        if (sum >= 15) {
                            document.getElementById('error-zip').innerHTML = " ";
                            document.getElementById("btn-continue").disabled = false;
                        }
                        else {
                            document.getElementById('error-zip').innerHTML = "Mindestbestellwert beachten fuer Ihre Region! (15 Euro)";
                        }
                    else if (document.getElementById('plz').value === '76227' || document.getElementById('plz').value === '76228' || document.getElementById('plz').value === '76275' || document.getElementById('plz').value === '76287')
                        if (sum >= 20) {
                            document.getElementById('error-zip').innerHTML = " ";
                            document.getElementById("btn-continue").disabled = false;
                        }
                        else {
                            document.getElementById('error-zip').innerHTML = "Mindestbestellwert beachten fuer Ihre Region! (20 Euro)";
                        }
                    else {
                        document.getElementById('error-zip').innerHTML = "Leider , Ihre PLZ ist falsch oder Wir Liefern nicht fuer ihre PLZ !";
                        document.getElementById("btn-continue").disabled = true;
                    }
                });
            </script>
        {/literal}       

        <div class="buttonblock">
            <input class="button" type="submit" name="CancelButton" value="{"Cancel"|i18n('design/ezdemo/shop/userregister')}"/>
            <input id="btn-continue" class="defaultbutton" type="submit" name="StoreButton" value="{"Continue"|i18n( 'design/ezdemo/shop/userregister')}" disabled/>
        </div>

    </form>

    <p>
        {"All fields marked with * must be filled in."|i18n("design/ezdemo/shop/userregister")}
    </p>

</div>
