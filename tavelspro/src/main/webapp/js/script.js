$(document).ready(function(){
  var table = $("#dataTable").DataTable({
 "lengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]],
"rowCallback": function( row, data, index ) {
            if(index%2 == 0){
                $(row).removeClass('myodd myeven');
                $(row).addClass('myodd');
            }else{
                $(row).removeClass('myodd myeven');
                 $(row).addClass('myeven');
            }
          }
   
  });
 
/*
  $("#dataTable thead th").each(function(){
    var title = $(this).text();
    $(this).html(title + '<br><input type="text" placeholder="Search '+title+'" />');
  });

  table.columns().every(function(){
    var that = this;
    $("input", this.header()).on("keyup change", function(){
      if(that.search() !== this.value){
        that
          .search(this.value)
          .draw();
      }
    });
  });*/
});
