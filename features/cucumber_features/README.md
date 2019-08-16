### Feature file README

The file `features/cucumber_features/example.feature` shows examples of how a feature file can be constructed. This is not the only way, however this is a nice simple way of construction 2 different scenario types that are used frequently.

Each step is mapped to a corresponding step definition found in the corresponding directory. Explanations of the code are listed in teh examples

As long as the parent directory is call `cucumber_features` then Cucumber will recursively scan the folder for any/all .feature files so you can store then in easy to organise folders within the parent directory. 

There are 3 `tags` in the example feature file -`@tag1`, `@tag2` and `@single_test_tag`. These can be used to label feature files for complete runs alongside other feature files that are tagged int he same way (`@tag1` and `@tag2`) as well as individual tests been labeled so test cases can be run in isolation or smaller subsets (`@single_test_tag`). These tags will apply across all feature files within the parent directory.

# Useful tip:

When your feature files have grown as your test suite matures, during development try using the `@test` single tag to only run one (or a couple) of scenarios at a time. This reduces the waiting time for each run to finish if you only care about developing one scenario.