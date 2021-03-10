GH_RAW_URL = "https://raw.githubusercontent.com"
smLoc = "/usr/local/bin"
sm_unUrl="#{GH_RAW_URL}/secman-team/secman/HEAD/packages/secman-un"
sm_syUrl="#{GH_RAW_URL}/secman-team/secman/HEAD/api/sync/secman-sync"
_chmod = "sudo chmod 755 #{smLoc}/secman*"
curl = "curl -fsSL"
wget = "sudo wget -P"

system("if ! [ -x \"$(command -v cgit)\" ]; then #{curl} #{GH_RAW_URL}/secman-team/corgit/main/setup | bash; fi")
system("if ! [ -x \"$(command -v verx)\" ]; then #{curl} #{GH_RAW_URL}/abdfnx/verx/HEAD/install.sh | bash; fi")
system("if ! [ -x \"$(command -v secman-un)\" ]; then #{wget} #{smLoc} #{sm_unUrl}; #{_chmod}; fi")
system("if ! [ -x \"$(command -v secman-sync)\" ];then #{wget} #{smLoc} #{sm_syUrl}; #{_chmod}; fi")
