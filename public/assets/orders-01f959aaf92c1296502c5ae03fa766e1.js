$(document).ready(function(){return jQuery(function(){return $("#uploader_2_2").fileupload({add:function(e,t){var a,n;return n=/(\.|\/)(gif|jpe?g|png)$/i,a=t.files[0],n.test(a.type)||n.test(a.name)?(t.context=$(tmpl("template-upload",a)),$("#uploader_2_2").append(t.context),t.submit()):alert(""+a.name+" is not a gif, jpeg, or png image file")},progress:function(e,t){var a;return t.context?(a=parseInt(100*(t.loaded/t.total),10),t.context.find(".bar").css("width",a+"%")):void 0},done:function(e,t){var a,n,o,r,l;return o=t.files[0],n=$("#uploader_2_2").attr("action"),r=$("#uploader_2_2 input[name=key]").val().replace("${filename}",o.name),l=$("#uploader_2_2").data("post"),a={},a[$("#uploader_2_2").data("as")]=n+r,$.post(l,a),t.context?t.context.remove():void 0},fail:function(e,t){return alert(""+t.files[0].name+" klarte ikke å laste opp."),console.log("Upload failed:"),console.log(t)}})})});