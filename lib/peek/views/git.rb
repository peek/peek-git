module Peek
  module Views
    class Git < View
      # A view to get some insight into the current state of git
      # for your project. It gives you the sha, branch, and compare
      # url.
      #
      # nwo             - The repository (name with owner).
      # default_branch  - master may not be your default branch.
      # branch_name     - The current branch name (Optional).
      # sha             - The current SHA for git (Optional).
      # domain          - Domain name of the location of the repository (Default: github.com).
      # protocol        - The protocol to use in the compare_url (Default: https).
      #
      # Returns Peek::Views::Git
      def initialize(options = {})
        @nwo = options.delete(:nwo)
        @default_branch = options.fetch(:default_branch, 'master')
        @branch_name = options.delete(:branch_name)
        @sha = options.delete(:sha)
        @domain = options.fetch(:domain, 'github.com')
        @protocol = options.fetch(:protocol, 'https')
      end

      def nwo?
        !!@nwo
      end

      # Fetch the current branch name.
      def branch_name
        @branch_name ||= ENV['GIT_BRANCH'] || `git rev-parse --abbrev-ref HEAD`.chomp
      end

      # Fetch the current sha if one isn't present.
      def sha
        @sha ||= ENV['GIT_SHA'] || `git rev-parse HEAD`.chomp
      end

      def short_sha
        sha[0..6]
      end

      def compare_url
        "#{@protocol}://#{@domain}/#{@nwo}/compare/#{@default_branch}...#{sha}"
      end

      def default_branch?
        @default_branch == branch_name
      end
    end
  end
end
