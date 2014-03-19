{*
* 2007-2013 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2013 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<input type="hidden" name="submitted_tabs[]" value="Inventory" />
<input type="checkbox" name="is_inventory" id="is_inventory" />{l s='This product has multiple options (eg. multiple sizes and colors'}
<div id="inv_div">
<h4 >{l s='Attributes'}</h4>

<div class="separation"></div>

<select name="attributes">
<option>test attribute</option>
</select>
<input style="width: 140px; margin-bottom: 10px;" type="button" value="{l s='Add'}" class="button" onclick="add_attr();"/><br />
<h4 >{l s='Values'}</h4>
<div class="separation"></div>
<select name="values">
<option>test value</option>
</select>
	<input style="width: 140px; margin-bottom: 10px;" type="button" value="{l s='Add'}" class="button" onclick="add_val();"/><br />
</div>