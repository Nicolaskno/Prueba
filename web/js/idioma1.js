
$.getJSON('js/idioma1.json',function(json){
    
    if(!localStorage.getItem("lang")){
        localStorage.setItem("lang","en");
    }
    let def = localStorage.getItem("lang");
    $('.lang').each(function(index,value){
     $(this).text(json[def][$(this).attr('key')]);
    }); 
    
    $('.translate').click(function(){
       let lang = $(this).attr('id');
       localStorage.setItem("lang", lang)
       $('.lang').each(function(index,value){
       $(this).text(json[lang][$(this).attr('key')]);
       }); 
    });
});


$.getJSON('js/idioma2.json',function(json){
    
    if(!localStorage.getItem("lang")){
        localStorage.setItem("lang","es");
    }
    let def = localStorage.getItem("lang");
    $('.lang').each(function(index,value,login){
     $(this).text(json[def][$(this).attr('key')]);
    }); 
    
    $('.translate').click(function(){
       let lang = $(this).attr('id');
       localStorage.setItem("lang", lang)
       $('.lang').each(function(index,value){
       $(this).text(json[lang][$(this).attr('key')]);
       }); 
    });
});

$.getJSON('js/idioma3.json',function(json){
    
    if(!localStorage.getItem("lang")){
        localStorage.setItem("lang","es");
    }
    let def = localStorage.getItem("lang");
    $('.lang').each(function(index,value,login){
     $(this).text(json[def][$(this).attr('key')]);
    }); 
    
    $('.translate').click(function(){
       let lang = $(this).attr('id');
       localStorage.setItem("lang", lang)
       $('.lang').each(function(index,value){
       $(this).text(json[lang][$(this).attr('key')]);
       }); 
    });
});

$.getJSON('js/idioma4.json',function(json){
    
    if(!localStorage.getItem("lang")){
        localStorage.setItem("lang","es");
    }
    let def = localStorage.getItem("lang");
    $('.lang').each(function(index,value,login){
     $(this).text(json[def][$(this).attr('key')]);
    }); 
    
    $('.translate').click(function(){
       let lang = $(this).attr('id');
       localStorage.setItem("lang", lang)
       $('.lang').each(function(index,value){
       $(this).text(json[lang][$(this).attr('key')]);
       }); 
    });
});

$.getJSON('js/idioma5.json',function(json){
    
    if(!localStorage.getItem("lang")){
        localStorage.setItem("lang","es");
    }
    let def = localStorage.getItem("lang");
    $('.lang').each(function(index,value,login){
     $(this).text(json[def][$(this).attr('key')]);
    }); 
    
    $('.translate').click(function(){
       let lang = $(this).attr('id');
       localStorage.setItem("lang", lang)
       $('.lang').each(function(index,value){
       $(this).text(json[lang][$(this).attr('key')]);
       }); 
    });
});

$.getJSON('js/idioma6.json',function(json){
    
    if(!localStorage.getItem("lang")){
        localStorage.setItem("lang","es");
    }
    let def = localStorage.getItem("lang");
    $('.lang').each(function(index,value,login){
     $(this).text(json[def][$(this).attr('key')]);
    }); 
    
    $('.translate').click(function(){
       let lang = $(this).attr('id');
       localStorage.setItem("lang", lang)
       $('.lang').each(function(index,value){
       $(this).text(json[lang][$(this).attr('key')]);
       }); 
    });
});

$.getJSON('js/idioma7.json',function(json){
    
    if(!localStorage.getItem("lang")){
        localStorage.setItem("lang","es");
    }
    let def = localStorage.getItem("lang");
    $('.lang').each(function(index,value,login){
     $(this).text(json[def][$(this).attr('key')]);
    }); 
    
    $('.translate').click(function(){
       let lang = $(this).attr('id');
       localStorage.setItem("lang", lang)
       $('.lang').each(function(index,value){
       $(this).text(json[lang][$(this).attr('key')]);
       }); 
    });
});



$.getJSON('js/idioma9.json',function(json){
    
    if(!localStorage.getItem("lang")){
        localStorage.setItem("lang","es");
    }
    let def = localStorage.getItem("lang");
    $('.lang').each(function(index,value,login){
     $(this).text(json[def][$(this).attr('key')]);
    }); 
    
    $('.translate').click(function(){
       let lang = $(this).attr('id');
       localStorage.setItem("lang", lang)
       $('.lang').each(function(index,value){
       $(this).text(json[lang][$(this).attr('key')]);
       }); 
    });
});

$.getJSON('js/idioma10.json',function(json){
    
    if(!localStorage.getItem("lang")){
        localStorage.setItem("lang","es");
    }
    let def = localStorage.getItem("lang");
    $('.lang').each(function(index,value,login){
     $(this).text(json[def][$(this).attr('key')]);
    }); 
    
    $('.translate').click(function(){
       let lang = $(this).attr('id');
       localStorage.setItem("lang", lang)
       $('.lang').each(function(index,value){
       $(this).text(json[lang][$(this).attr('key')]);
       }); 
    });
});

$.getJSON('js/idioma11.json',function(json){
    
    if(!localStorage.getItem("lang")){
        localStorage.setItem("lang","es");
    }
    let def = localStorage.getItem("lang");
    $('.lang').each(function(index,value,login){
     $(this).text(json[def][$(this).attr('key')]);
    }); 
    
    $('.translate').click(function(){
       let lang = $(this).attr('id');
       localStorage.setItem("lang", lang)
       $('.lang').each(function(index,value){
       $(this).text(json[lang][$(this).attr('key')]);
       }); 
    });
});

$.getJSON('js/idioma12.json',function(json){
    
    if(!localStorage.getItem("lang")){
        localStorage.setItem("lang","es");
    }
    let def = localStorage.getItem("lang");
    $('.lang').each(function(index,value,login){
     $(this).text(json[def][$(this).attr('key')]);
    }); 
    
    $('.translate').click(function(){
       let lang = $(this).attr('id');
       localStorage.setItem("lang", lang)
       $('.lang').each(function(index,value){
       $(this).text(json[lang][$(this).attr('key')]);
       }); 
    });
});


