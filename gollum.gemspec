Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'
  s.required_ruby_version = '>= 1.9'

  s.name              = 'gollum'
  s.version           = '3.1.0'
  s.date              = '2014-11-28'
  s.rubyforge_project = 'gollum'
  s.license           = 'MIT'

  s.summary     = 'A simple, Git-powered wiki.'
  s.description = 'A simple, Git-powered wiki with a sweet API and local frontend.'

  s.authors  = ['Tom Preston-Werner', 'Rick Olson']
  s.email    = 'tom@github.com'
  s.homepage = 'http://github.com/gollum/gollum'

  s.require_paths = %w[lib]

  s.executables = ['gollum']

  s.rdoc_options = ['--charset=UTF-8']
  s.extra_rdoc_files = %w[README.md LICENSE]

  s.add_dependency 'gollum-lib', '~> 4.0'
  s.add_dependency 'github-markdown', '~> 0.6.5'
  s.add_dependency 'sinatra', '~> 1.4', '>= 1.4.4'
  s.add_dependency 'mustache', ['>= 0.99.5', '< 1.0.0']
  s.add_dependency 'useragent', '~> 0.10.0'

  s.add_development_dependency 'rack-test', '~> 0.6.2'
  s.add_development_dependency 'shoulda', '~> 3.5.0'
  s.add_development_dependency 'minitest-reporters', '~> 0.14.16'
  s.add_development_dependency 'twitter_cldr', '~> 2.4.2'
  s.add_development_dependency 'mocha', '~> 1.0.0'

  # = MANIFEST =
  s.files = %w[
    Gemfile
    HISTORY.md
    LICENSE
    README.md
    Rakefile
    bin/gollum
    config.rb
    contrib/openrc/conf.d/gollum
    contrib/openrc/init.d/gollum
    contrib/systemd/gollum@.service
    docs/sanitization.md
    gollum.gemspec
    lib/gollum.rb
    lib/gollum/app.rb
    lib/gollum/editing_auth.rb
    lib/gollum/helpers.rb
    lib/gollum/public/gollum/css/_styles.css
    lib/gollum/public/gollum/css/dialog.css
    lib/gollum/public/gollum/css/editor.css
    lib/gollum/public/gollum/css/gollum.css
    lib/gollum/public/gollum/css/ie7.css
    lib/gollum/public/gollum/css/print.css
    lib/gollum/public/gollum/css/template.css
    lib/gollum/public/gollum/fonts/FontAwesome.otf
    lib/gollum/public/gollum/fonts/fontawesome-webfont.eot
    lib/gollum/public/gollum/fonts/fontawesome-webfont.svg
    lib/gollum/public/gollum/fonts/fontawesome-webfont.ttf
    lib/gollum/public/gollum/fonts/fontawesome-webfont.woff
    lib/gollum/public/gollum/images/dirty-shade.png
    lib/gollum/public/gollum/images/fileview/document.png
    lib/gollum/public/gollum/images/fileview/folder-horizontal.png
    lib/gollum/public/gollum/images/fileview/toggle-small-expand.png
    lib/gollum/public/gollum/images/fileview/toggle-small.png
    lib/gollum/public/gollum/images/icon-sprite.png
    lib/gollum/public/gollum/images/man_24.png
    lib/gollum/public/gollum/images/para.png
    lib/gollum/public/gollum/images/pin-16.png
    lib/gollum/public/gollum/images/pin-20.png
    lib/gollum/public/gollum/images/pin-24.png
    lib/gollum/public/gollum/images/pin-32.png
    lib/gollum/public/gollum/javascript/editor/gollum.editor.js
    lib/gollum/public/gollum/javascript/editor/langs/asciidoc.js
    lib/gollum/public/gollum/javascript/editor/langs/creole.js
    lib/gollum/public/gollum/javascript/editor/langs/markdown.js
    lib/gollum/public/gollum/javascript/editor/langs/org.js
    lib/gollum/public/gollum/javascript/editor/langs/pod.js
    lib/gollum/public/gollum/javascript/editor/langs/rdoc.js
    lib/gollum/public/gollum/javascript/editor/langs/textile.js
    lib/gollum/public/gollum/javascript/gollum.dialog.js
    lib/gollum/public/gollum/javascript/gollum.js
    lib/gollum/public/gollum/javascript/gollum.placeholder.js
    lib/gollum/public/gollum/javascript/identicon_canvas.js
    lib/gollum/public/gollum/javascript/jquery-1.7.2.min.js
    lib/gollum/public/gollum/javascript/jquery.color.js
    lib/gollum/public/gollum/javascript/mousetrap.min.js
    lib/gollum/public/gollum/livepreview/css/custom.css
    lib/gollum/public/gollum/livepreview/images/cancel_24.png
    lib/gollum/public/gollum/livepreview/images/globe_24.png
    lib/gollum/public/gollum/livepreview/images/lr_24.png
    lib/gollum/public/gollum/livepreview/images/save_24.png
    lib/gollum/public/gollum/livepreview/images/savecomment_24.png
    lib/gollum/public/gollum/livepreview/index.html
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/ace.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/anchor.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/anchor_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/background_tokenizer.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/background_tokenizer_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/commands/command_manager.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/commands/command_manager_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/commands/default_commands.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/commands/multi_select_commands.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/config.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/config_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/css/codefolding-fold-button-states.png
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/css/editor.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/css/expand-marker.png
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/document.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/document_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/edit_session.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/edit_session/bracket_match.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/edit_session/fold.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/edit_session/fold_line.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/edit_session/folding.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/edit_session_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/editor.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/editor_change_document_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/editor_highlight_selected_word_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/editor_navigation_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/editor_text_edit_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/ext/static.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/ext/static_highlight.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/ext/static_highlight_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/ext/textarea.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/keyboard/emacs.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/keyboard/hash_handler.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/keyboard/keybinding.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/keyboard/state_handler.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/keyboard/textinput.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/keyboard/vim.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/keyboard/vim/commands.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/keyboard/vim/maps/aliases.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/keyboard/vim/maps/motions.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/keyboard/vim/maps/operators.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/keyboard/vim/maps/util.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/keyboard/vim/registers.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/layer/cursor.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/layer/gutter.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/layer/marker.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/layer/text.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/layer/text_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/lib/browser_focus.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/lib/dom.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/lib/es5-shim.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/lib/event.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/lib/event_emitter.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/lib/event_emitter_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/lib/fixoldbrowsers.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/lib/keys.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/lib/lang.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/lib/net.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/lib/oop.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/lib/regexp.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/lib/useragent.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/package.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/test_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/text_javascript.txt
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_c9search.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_c_cpp.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_clojure.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_coffee.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_coldfusion.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_csharp.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_css.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_diff.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_glsl.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_golang.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_groovy.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_haxe.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_html.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_java.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_javascript.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_json.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_jsx.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_latex.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_less.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_liquid.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_lua.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_luapage.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_markdown.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_ocaml.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_perl.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_pgsql.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_php.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_powershell.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_python.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_ruby.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_scad.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_scala.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_scss.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_sh.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_sql.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_svg.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_tcl.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_text.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_textile.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_xml.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_xquery.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/_test/tokens_yaml.json
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/abap.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/abap_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/asciidoc.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/asciidoc_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/behaviour.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/behaviour/cstyle.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/behaviour/html.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/behaviour/xml.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/behaviour/xquery.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/c9search.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/c9search_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/c_cpp.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/c_cpp_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/clojure.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/clojure_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/coffee.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/coffee/coffee-script.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/coffee/helpers.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/coffee/lexer.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/coffee/nodes.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/coffee/parser.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/coffee/parser_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/coffee/rewriter.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/coffee/scope.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/coffee_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/coffee_highlight_rules_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/coffee_worker.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/coldfusion.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/coldfusion_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/coldfusion_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/csharp.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/csharp_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/css.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/css/csslint.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/css_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/css_highlight_rules_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/css_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/css_worker.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/css_worker_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/dart.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/dart_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/diff.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/diff_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/doc_comment_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/asciidoc.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/c9search.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/coffee.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/coffee_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/cstyle.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/cstyle_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/diff.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/fold_mode.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/html.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/html_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/latex.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/lua.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/markdown.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/mixed.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/pythonic.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/pythonic_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/xml.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/folding/xml_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/glsl.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/glsl_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/golang.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/golang_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/groovy.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/groovy_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/haml.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/haml_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/haxe.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/haxe_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/html.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/html_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/html_highlight_rules_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/html_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/jade.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/jade_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/java.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/java_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/javascript.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/javascript/jshint.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/javascript_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/javascript_highlight_rules_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/javascript_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/javascript_worker.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/javascript_worker_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/json.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/json/json_parse.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/json_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/json_worker.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/json_worker_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/jsp.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/jsp_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/jsx.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/jsx_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/latex.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/latex_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/less.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/less_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/liquid.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/liquid_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/liquid_highlight_rules_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/lisp.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/lisp_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/lua.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/lua_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/luapage.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/luapage_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/lucene.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/lucene_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/lucene_highlight_rules_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/makefile.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/makefile_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/markdown.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/markdown_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/markdown_highlight_rules_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/matching_brace_outdent.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/matching_parens_outdent.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/objectivec.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/objectivec_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/ocaml.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/ocaml_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/perl.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/perl_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/pgsql.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/pgsql_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/php.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/php_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/powershell.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/powershell_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/python.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/python_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/python_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/r.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/r_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/rdoc.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/rdoc_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/rhtml.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/rhtml_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/ruby.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/ruby_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/ruby_highlight_rules_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/scad.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/scad_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/scala.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/scala_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/scss.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/scss_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/sh.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/sh_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/sql.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/sql_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/stylus.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/stylus_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/svg.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/svg_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/tcl.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/tcl_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/tex.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/tex_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/text.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/text_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/text_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/textile.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/textile_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/typescript.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/typescript_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/xml.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/xml_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/xml_highlight_rules_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/xml_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/xml_util.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/xquery.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/xquery/JSONParseTreeHandler.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/xquery/Readme.md
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/xquery/XQueryParser.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/xquery/visitors/SyntaxHighlighter.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/xquery_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/xquery_worker.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/yaml.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mode/yaml_highlight_rules.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/model/editor.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mouse/default_gutter_handler.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mouse/default_handlers.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mouse/dragdrop.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mouse/fold_handler.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mouse/mouse_event.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mouse/mouse_handler.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/mouse/multi_select_handler.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/multi_select.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/multi_select_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/placeholder.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/placeholder_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/range.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/range_list.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/range_list_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/range_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/renderloop.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/requirejs/text.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/scrollbar.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/search.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/search_highlight.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/search_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/selection.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/selection_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/split.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/test/all.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/test/all_browser.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/test/assertions.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/test/asyncjs/assert.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/test/asyncjs/async.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/test/asyncjs/index.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/test/asyncjs/test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/test/asyncjs/utils.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/test/benchmark.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/test/mockdom.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/test/mockrenderer.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/test/tests.html
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/ambiance.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/ambiance.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/chrome.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/chrome.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/clouds.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/clouds.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/clouds_midnight.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/clouds_midnight.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/cobalt.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/cobalt.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/crimson_editor.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/crimson_editor.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/dawn.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/dawn.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/dreamweaver.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/dreamweaver.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/eclipse.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/eclipse.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/github.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/github.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/idle_fingers.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/idle_fingers.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/kr_theme.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/kr_theme.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/merbivore.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/merbivore.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/merbivore_soft.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/merbivore_soft.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/mono_industrial.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/mono_industrial.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/monokai.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/monokai.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/pastel_on_dark.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/pastel_on_dark.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/solarized_dark.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/solarized_dark.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/solarized_light.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/solarized_light.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/textmate.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/textmate.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/tomorrow.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/tomorrow.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/tomorrow_night.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/tomorrow_night.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/tomorrow_night_blue.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/tomorrow_night_blue.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/tomorrow_night_bright.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/tomorrow_night_bright.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/tomorrow_night_eighties.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/tomorrow_night_eighties.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/twilight.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/twilight.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/vibrant_ink.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/vibrant_ink.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/xcode.css
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/theme/xcode.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/token_iterator.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/token_iterator_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/tokenizer.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/tokenizer_dev.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/undomanager.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/unicode.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/virtual_renderer.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/virtual_renderer_test.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/worker/mirror.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/worker/worker.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/worker/worker_client.js
    lib/gollum/public/gollum/livepreview/js/ace/lib/ace/worker/worker_sourcemint.js
    lib/gollum/public/gollum/livepreview/js/jquery.ba-throttle-debounce.min.js
    lib/gollum/public/gollum/livepreview/js/livepreview.js
    lib/gollum/public/gollum/livepreview/js/md_sundown.js
    lib/gollum/public/gollum/livepreview/js/requirejs.min.js
    lib/gollum/public/gollum/livepreview/js/sundown.js
    lib/gollum/public/gollum/livepreview/licenses/ace/LICENSE.txt
    lib/gollum/public/gollum/livepreview/licenses/bootstraponline_gollum/LICENSE.txt
    lib/gollum/public/gollum/livepreview/licenses/debounce/LICENSE-MIT.txt
    lib/gollum/public/gollum/livepreview/licenses/gollum/LICENSE.txt
    lib/gollum/public/gollum/livepreview/licenses/jquery/MIT-LICENSE.txt
    lib/gollum/public/gollum/livepreview/licenses/licenses.txt
    lib/gollum/public/gollum/livepreview/licenses/notepages/LICENSE.txt
    lib/gollum/public/gollum/livepreview/licenses/requirejs/LICENSE.txt
    lib/gollum/public/gollum/livepreview/licenses/retina_display_icon_set/by_sa_3.0_unported_legalcode.txt
    lib/gollum/public/gollum/livepreview/licenses/sizzle/LICENSE.txt
    lib/gollum/public/gollum/livepreview/licenses/sundown/sundown.txt
    lib/gollum/public/gollum/livepreview/licenses/templarian_windowsicons/license.txt
    lib/gollum/public/gollum/livepreview/readme.md
    lib/gollum/templates/compare.mustache
    lib/gollum/templates/create.mustache
    lib/gollum/templates/edit.mustache
    lib/gollum/templates/editor.mustache
    lib/gollum/templates/error.mustache
    lib/gollum/templates/file_view.mustache
    lib/gollum/templates/history.mustache
    lib/gollum/templates/history_authors/gravatar.mustache
    lib/gollum/templates/history_authors/identicon.mustache
    lib/gollum/templates/history_authors/none.mustache
    lib/gollum/templates/latest_changes.mustache
    lib/gollum/templates/layout.mustache
    lib/gollum/templates/page.mustache
    lib/gollum/templates/pages.mustache
    lib/gollum/templates/search.mustache
    lib/gollum/templates/searchbar.mustache
    lib/gollum/uri_encode_component.rb
    lib/gollum/views/compare.rb
    lib/gollum/views/create.rb
    lib/gollum/views/edit.rb
    lib/gollum/views/editable.rb
    lib/gollum/views/error.rb
    lib/gollum/views/file_view.rb
    lib/gollum/views/has_page.rb
    lib/gollum/views/history.rb
    lib/gollum/views/latest_changes.rb
    lib/gollum/views/layout.rb
    lib/gollum/views/page.rb
    lib/gollum/views/pages.rb
    lib/gollum/views/search.rb
    licenses/css_tree_menu_thecssninja/license.txt
    licenses/licenses.txt
    licenses/unity_asset_pool/COPYRIGHT
  ]
  # = MANIFEST =

  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end
