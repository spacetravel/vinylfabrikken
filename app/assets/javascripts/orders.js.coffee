# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  jQuery ->
    $('#uploader_1_1').fileupload
      add: (e, data) ->
        dataType: "script"
        types = /(\.|\/)(gif|jpe?g|png)$/i
        file = data.files[0]
        if types.test(file.type) || types.test(file.name)
          data.context = $($.parseHTML(tmpl("template-upload", file))[1])
          $('#uploader_1_1').append(data.context)
          data.form.find('#content-type').val(file.type)
          data.submit()
        else
          alert("#{file.name} is not a gif, jpeg, or png image file")

      progress: (e, data) ->
        if data.context
          progress = parseInt(data.loaded / data.total * 100, 10)
          data.context.find('.bar').css('width', progress + '%')
      
      done: (e, data) ->
        file = data.files[0]
        domain = $('#uploader_1_1').attr('action')
        path = $('#uploader_1_1 input[name=key]').val().replace('${filename}', file.name)
        to = $('#uploader_1_1').data('post')
        content = {}
        content[$('#uploader_1_1').data('as')] = domain + path
        $.post(to, content)
        data.context.remove() if data.context # remove progress bar
      
      fail: (e, data) ->
        alert("#{data.files[0].name} failed to upload.")
        console.log("Upload failed:")
        console.log(data)

$(document).ready ->
  jQuery ->
    $('#uploader_1_2').fileupload
      add: (e, data) ->
        dataType: "script"
        types = /(\.|\/)(gif|jpe?g|png)$/i
        file = data.files[0]
        if types.test(file.type) || types.test(file.name)
          data.context = $(tmpl("template-upload", file))
          $('#uploader_1_2').append(data.context)
          data.submit()
        else
          alert("#{file.name} is not a gif, jpeg, or png image file")
      
      progress: (e, data) ->
        if data.context
          progress = parseInt(data.loaded / data.total * 100, 10)
          data.context.find('.bar').css('width', progress + '%')
      
      done: (e, data) ->
        file = data.files[0]
        domain = $('#uploader_1_2').attr('action')
        path = $('#uploader_1_2 input[name=key]').val().replace('${filename}', file.name)
        to = $('#uploader_1_2').data('post')
        content = {}
        content[$('#uploader_1_2').data('as')] = domain + path
        $.post(to, content)
        data.context.remove() if data.context # remove progress bar
      
      fail: (e, data) ->
        alert("#{data.files[0].name} failed to upload.")
        console.log("Upload failed:")
        console.log(data)


$(document).ready ->
  jQuery ->
    $('#uploader_2_1').fileupload
      add: (e, data) ->
        dataType: "script"
        types = /(\.|\/)(gif|jpe?g|png)$/i
        file = data.files[0]
        if types.test(file.type) || types.test(file.name)
          data.context = $(tmpl("template-upload", file))
          $('#uploader_2_1').append(data.context)
          data.submit()
        else
          alert("#{file.name} is not a gif, jpeg, or png image file")
      
      progress: (e, data) ->
        if data.context
          progress = parseInt(data.loaded / data.total * 100, 10)
          data.context.find('.bar').css('width', progress + '%')
      
      done: (e, data) ->
        file = data.files[0]
        domain = $('#uploader_2_1').attr('action')
        path = $('#uploader_2_1 input[name=key]').val().replace('${filename}', file.name)
        to = $('#uploader_2_1').data('post')
        content = {}
        content[$('#uploader_2_1').data('as')] = domain + path
        $.post(to, content)
        data.context.remove() if data.context # remove progress bar
      
      fail: (e, data) ->
        alert("#{data.files[0].name} failed to upload.")
        console.log("Upload failed:")
        console.log(data)

$(document).ready ->
  jQuery ->
    $('#uploader_2_2').fileupload
      add: (e, data) ->
        dataType: "script"
        types = /(\.|\/)(gif|jpe?g|png)$/i
        file = data.files[0]
        if types.test(file.type) || types.test(file.name)
          data.context = $(tmpl("template-upload", file))
          $('#uploader_2_2').append(data.context)
          data.submit()
        else
          alert("#{file.name} is not a gif, jpeg, or png image file")
      
      progress: (e, data) ->
        if data.context
          progress = parseInt(data.loaded / data.total * 100, 10)
          data.context.find('.bar').css('width', progress + '%')
      
      done: (e, data) ->
        file = data.files[0]
        domain = $('#uploader_2_2').attr('action')
        path = $('#uploader_2_2 input[name=key]').val().replace('${filename}', file.name)
        to = $('#uploader_2_2').data('post')
        content = {}
        content[$('#uploader_2_2').data('as')] = domain + path
        $.post(to, content)
        data.context.remove() if data.context # remove progress bar
      
      fail: (e, data) ->
        alert("#{data.files[0].name} failed to upload.")
        console.log("Upload failed:")
        console.log(data)
