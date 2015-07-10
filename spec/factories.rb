FactoryGirl.define do
  factory(:category) do
    name('Git')
    description('A version control system')
  end

  factory(:project) do
    name('Project')
    description('A really cool project')
    github('github.com/test')
  end

  factory(:user) do
    email('cour@pdx.edu')
    password('12345678')
  end
end
