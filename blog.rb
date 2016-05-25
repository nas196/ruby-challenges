class Blog
    @@all_blog_posts = []
    @@number_of_posts = 0
    
    def Blog.all
        @@all_blog_posts
    end
    
    def Blog.add(thing)
        @@all_blog_posts << thing
        @@number_of_posts += 1
    end
    
    def Blog.publish
        @@all_blog_posts.each do |post|
            puts "Title: #{post.title}"
            puts "Written By: #{post.author}"
            puts "Body: #{post.content}"
            puts "Date Posted: #{post.creation_date}"
        end
    end
end
class BlogPost < Blog
    def BlogPost.create
        post = new
        puts "Enter title:"
        post.title= gets.chomp
        puts "Enter author:"
        post.author= gets.chomp
        puts "Enter blog post content:"
        post.content= gets.chomp
        post.creation_date = Time.now
        post.save
        puts "Do you want to create another post? [Y/N]"
        create if gets.chomp.downcase == "y"
    end
    
    def title
        return @title
	end  
    
    def title=(blog_title)
        @title = blog_title
	end
    
    def author
        return @author
    end
    
    def author=(author)
        @author = author
    end
 
    def content
        return @content
	end
    
    def content=(blog_content)
        @content = blog_content
	end
 
    def creation_date
        @creation_date
    end
    
    def creation_date=(creation_date)
        @creation_date = creation_date
    end
    
    def save
        BlogPost.add(self)
    end
end
    
BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish
    

