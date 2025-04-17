#import "../fonts/font-def.typ": *

// 中文摘要
#let zh_abstract_page(title, author, mentor, major, abstract, keywords: ()) = {
  show <_zh_abstract_>: {
    align(center)[
      #text(font: heiti, size: 18pt, title)
    ]
  }

  [摘要 <_zh_abstract_>]


  set text(font: (
    (name: "Times New Roman", covers: "latin-in-cjk"),
    "Kaiti SC"
  ))

  align(center)[
    #text(size: 14pt, tracking: -1pt)[
      专业 #h(5pt) #major

      作者 #h(5pt)  #author #h(30pt) 指导老师 #h(5pt) #mentor

      #linebreak()
    ]
  ]

  text(size: 10.5pt, tracking: -1pt)[
    #text(weight: "bold", [[摘要]])
    #abstract
  ]    
  
  linebreak()
  
  text(size: 10.5pt, tracking: -1pt)[
    #box(width: 2em)
    #text(weight: "bold", [[主题词]])
    #keywords.join("；")
  ]    
}