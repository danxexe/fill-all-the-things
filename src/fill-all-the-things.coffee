###
fill-all-the-things @@VERSION@@
Fills out forms with dummy data
site: https://github.com/searls/fill-all-the-things
###
window.FillAllTheThings =
  fill: ->
    $inputs = $(':input:visible').val (i, val) ->
      it = $(@)

      if it.is(':checkbox,:radio')
        it.attr('checked','checked')
      else if it.is('select')
        it.find('option[value="1975"],option:last').val()
      else if it.is('[type="email"]') or /email/i.test(it.attr('name'))
        "fill@llthethings.org"
      else if !val
        "Filling a Thing"
      else
        val

