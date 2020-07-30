
// item selection
$('li').click(function () 
{
  $(this).toggleClass('selected');
  if ($('li.selected').length == 0)
  {
	  $('.select').removeClass('selected');
  }
  else
  {
	  $('.select').addClass('selected');
  }
  counter();
});

// all item selection
$('.select').click(function () 
{
  if ($('li.selected').length == 0) 
  {
    $('li').addClass('selected');
    $('.select').addClass('selected');
  }
  else 
  {
    $('li').removeClass('selected');
    $('.select').removeClass('selected');
  }
  counter();
});

// number of selected items
function counter() 
{
  if ($('li.selected').length > 0)
  {
	  $('.send').addClass('selected'); 
  }
  else
  {
	  $('.send').removeClass('selected');
  }
  $('.send').attr('data-counter',$('li.selected').length);
}

//choose finish
$('#finish').click(function () 
{
	var obj = $('li.selected');
	console.log(obj);
	
	var picture = new Object; 
	var urlarr = new Array();
	for (var i = 0; i < obj.length; i++) 
	{
		picture.name = obj[i].lang;
		picture.url = obj[i].title;
		urlarr.push(picture);
	}
	parent.getChildrenData(urlarr);
	
	setTimeout(function() {
		var index = parent.layer.getFrameIndex(window.name);
		parent.layer.close(index);
	},100);
});