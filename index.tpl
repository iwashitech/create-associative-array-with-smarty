{php}
  $smartyArray = [
    ['title' => 'foo title', 'list' => ['foo1', 'foo2']],
    ['title' => 'bar titile', 'list' => ['bar1', 'bar2']],
  ];
  $this->assign('smartyArray',$smartyArray);
{/php}

{foreach from=$smartyArray item=row}
  <h1>{$row.name}</h1>
  <ul>
    {foreach from=$row.list item=item}
      <li>{$item}</li>
    {/foreach}
  </ul>
{/foreach}