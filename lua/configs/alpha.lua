local status_ok, alpha = pcall(require, "alpha")
if not status_ok then return end

local dashboard = require('alpha.themes.dashboard')
dashboard.section.header.val = {
[[                                                  ++                                                 ]],
[[                                                 +++                                                 ]],
[[                                                +++#+                                               ]],
[[                           ++                 ++   ++++                -+                           ]],
[[                          ++++-             +++      ++++            +++++                          ]],
[[                         ++  ++++         +++    --   -+#++         +++  ++                         ]],
[[                        +++    ++++     +++      ++      ++++    -+++    +++                        ]],
[[                       -++       -+++ ++++      #+++      ++++ ++++       ++-                       ]],
[[             ++        +++          ++#+        ++++-       ++++          +++        +++            ]],
[[            +-++++    +++       -   ++         +-  -#+        ++   +       +#+    ++#+++            ]],
[[           +++ ++++++++#+      +++--++       ++      ++       ++-++++      +#++++++++ +++           ]],
[[           ++    -  ..++.      ++++++       +++      ++++      -+++++-     .++.   +    ++           ]],
[[           ++   +++   ++      +++  ++++    ++          +++  -+++++ +++      ++   +++   +++          ]],
[[          +++  ++++#+ ++      ++      +++++-            +#++++      ++      ++ ++++++  +++          ]],
[[          +++  +++ +++++      ++        +++              -+++       ++      +++++ +++  +++          ]],
[[          +++  +++   +++++    --       +++                ++++       -+   +++++   +++  +++          ]],
[[       -  ++++ +++      +++++--       +++                  +++       --+++++      +++ +++   -       ]],
[[      +++  +++  ++           ++-      ++                    +#       ++           ++  +++  +++      ]],
[[      ++++++++  +++          +++     -#+                    +#+     +++           ++  ++++++++      ]],
[[      +++  ++++++++           ++     +++                    +#-     ++           ++++++++  +++      ]],
[[      +++     ++++++          +++    -++                    ++-    +++          +#++++     +++      ]],
[[      +++        ++#+          ++     ++                    +#     ++          +++-        +++      ]],
[[       +++         +++         -+++   +++                  +++   +#+          +++         +++       ]],
[[        ++++        ++++        -+++   ++-                ++++  +++         ++++        ++++        ]],
[[          +++-.++++++++++++       +++- +++                +++ ++++        ++#+++++++++++++          ]],
[[++     -++#+#+++++++   ++++++      ++++- ++              ++ +++++      ++++++   +++++++#+#++-     ++]],
[[-+  .--                    ++++++     ++++-+-          -+-++++     +++#++                    --.  +-]],
[[ +++                          ++++++++- ++++++        ++++++  ++++++++                          +++ ]],
[[  +++                              ++++++++++#+++ +++##++++++++++-                             +++  ]],
[[    +#+                            ++#++++  -++++++--++-  +++++++                            ++++   ]],
[[     ++#++                       ++++    ++++          -+++    ++++                       +++++     ]],
[[        +++++++               -+++     +++-              -+++     +++                 +++++++       ]],
[[           ++++#++++++++++++++++       +++                +++       +++++++++++++++++#++++          ]],
[[                 ++++++++ -++          +++                ##+          ++-++-+++++-++               ]],
[[                     ++++++           ++++               +++++           ++++++                     ]],
[[                    +++++           +++  +++            +#++ +++           +++++                    ]],
[[                      +++++++   -+++++     ++         ++++    +++++-   -+++#++                      ]],
[[                         +++#++#+++          ++     +#++         ++#####+++                         ]],
[[                                               -+++++                                               ]],
[[                                                 ++                                                 ]],
}

dashboard.section.buttons.val = {
  dashboard.button("f", " Find File", ":Telescope find_files <CR>"),
  dashboard.button("e", " New File", ":ene <BAR> startinsert <CR>"),
  dashboard.button("r", " Recently used files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", " Find Text", ":Telescope live_grep <CR>"),
  dashboard.button("c", " Configuration", ":e ~/.config/ハス/init.lua <CR>"),
  dashboard.button("q", " Quit Neovim", ":qa <CR>"),
}
