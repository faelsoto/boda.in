// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require foundation
$(document).ready(function(){
  $("#tareas").on("click", ".subtarea-desplegar", function(e){
    $(this).closest("article").toggleClass("desplegado");
  });

  $(".agregar > a").on("click", function(e){
    e.preventDefault();
    $footer = $(this).closest("footer");
    $form = $footer.siblings("form");

    fields = ["", "", "Proveedor", "Presupuesto", "", "Notas"];
    if(!$form.length){
      $form = $("#new_proveedor").clone().attr("id", false).addClass("proveedor-nuevo").insertBefore($footer);
      $inputs = $form.find("input").each(function(i){
        $(this).attr("placeholder", fields[i]);
        if($(this).is("#proveedor_tarea_id")) $(this).val($form.closest(".subtarea").data("tarea-id")).hide();
      });
      $form.empty().append($inputs).on("submit", function(e){
        e.preventDefault();
        $this = $(this);
        $article = $(this).closest("article");

        $.ajax({
          type: $this.attr("method"),
          url: $this.attr("action"),
          data: $this.serialize(),
          success: function(r){
            $(".proveedor", r).insertBefore($article.find(".agregar"));
            $article.find(".empty").remove();
            $this.remove();
          }
        })
      });
    }

    $form.find(":text")[0].focus()
  });
});
