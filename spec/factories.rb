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
end
