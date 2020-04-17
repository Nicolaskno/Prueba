Morris.Bar({
  element: 'graph',
  data: [
    {year: '2018', es: 10, em: 15, ad: 2},
    {year: '2019', es: 20, em: 32, ad: 3},
    {year: '2020', es: 42, em: 53, ad: 4},
  ],
  xkey: 'year',
  ykeys: ['es', 'em', 'ad'],
  labels: ['Estudiantes', 'Empresas', 'Administrador'],
  resize: true
});

new Morris.Line({
  element: 'myfirstchart',
  data: [
    { year: '2018', es: 10, em: 15, ad: 2 },
    { year: '2019', es: 20, em: 32, ad: 3},
    { year: '2020', es: 42, em: 53, ad: 4},
  ],
  xkey: 'year', 
  ykeys: ['es', 'em', 'ad'],
  labels: ['Estudiantes', 'Empresas', 'Administrador'],
  resize: true
});




