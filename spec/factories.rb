FactoryGirl.define do

  factory(:category) do
    name('Git')
    description('A version control system')

    factory(:project) do
      name('Project')
      description('A really cool project')
      github('github.com/test')
    end
  end

  factory(:user) do
    email('cour@pdx.edu')
    password('12345678')

    factory(:admin) do
      email('test@test.com')
      password('12345678')
      admin(true)
    end
  end

  factory(:post) do
    title('title')
    content('content')

    factory(:comment) do
      name('name')
      body('body')
    end
  end

end
