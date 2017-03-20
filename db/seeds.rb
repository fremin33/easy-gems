Article.destroy_all
Category.destroy_all

Category.new(name: "Authentification").save
Category.new(name: "Authorisation").save
Category.new(name: "Formulaire").save
Category.new(name: "Parseur").save
Category.new(name: "Uploader").save
Category.new(name: "Localisation").save
Category.new(name: "Recherche").save
Category.new(name: "Social").save
Category.new(name: "Framework").save

Article.new(title: "blabla", preface: "lalala", category: Category.all.sample, description: "lalalalallalal", picture_url: "http://res.cloudinary.com/fremin33/image/upload/v1490017446/zpq4i4y6lx7mgqgobtlr.jpg").save
