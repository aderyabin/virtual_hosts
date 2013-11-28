Virtual Hosts Cookbook
================
This cookbook makes configuring Apache virtual hosts.
Especially useful for Vagrant.

## Usage

```ruby
Vagrant::Config.run do |config|
  chef.add_recipe "apache2"
  chef.add_recipe "virtual_hosts"

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      :virtual_hosts => [{
        "web1" => {
          "docroot"        => "/home/vagrant/web2",
          "server_name"    => "web1.local",
          "server_aliases" => ["*.webapp1"],
        },
        "web2" => {
          "docroot"        => "/home/vagrant/web2",
          "server_name"    => "web2.local",
          "server_aliases" => ["*.webapp2"],
        }
      }]
    }
  end
end
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## License

The MIT License

Copyright (c) 2013 Andrey Deryabin

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.