blog = Blog.create(title: 'LionBlog', text: 'This is a informative blog about lions')

blog.animals << Lion.new(name: "Simba", age: 10) 
blog.animals << WildBoar.new(name: "Pumba", age: 30) 
blog.animals << Meerkat.new(name: "Timon", age: 30)