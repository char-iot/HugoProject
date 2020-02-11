Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install git -confirm

# Hugo Standard Verion
choco install hugo -confirm

# Hugo Extended Verion for SASS/SCSS
# main use case: Minify | Image processing
choco install hugo-extended -confirm

cup all

hugo new site HugoProject --force

cd .\HugoProject\

#git init
git submodule add https://github.com/eddiewebb/hugo-resume.git themes/hugo-resume
git submodule add https://github.com/htr3n/hyde-hyde.git themes/hyde-hyde

cp -R .\themes\hugo-resume\exampleSite\* . -force