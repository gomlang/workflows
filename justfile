goml := env_var_or_default("GOML", "../../goml/stage2/bin/goml")
libraries := env_var_or_default("GOMLANG_LIBRARIES", "..")

[positional-arguments]
ecosystem-test *args:
    python3 ci/ecosystem.py run --libraries "{{libraries}}" --goml "{{goml}}" --arguments "$@"

test:
    python3 ci/ecosystem.py test --libraries "{{libraries}}" --goml "{{goml}}"
