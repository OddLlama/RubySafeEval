RubySafeEval
============

Let other people eval code on your computer safely. Useful for chatbots.

Self-explanatory example:

    [14:20] <SafeEvalTester> >> 2 + 2
    [14:20] <EvaluatingBot> SafeEvalTester: 4
    [14:20] <SafeEvalTester> >> File.open('test.txt', 'a+') {|f| f.puts 'test'}
    [14:20] <EvaluatingBot> SafeEvalTester: Error in eval: Insecure operation - initialize
    [14:20] <SafeEvalTester> >> instance_variables
    [14:20] <EvaluatingBot> SafeEvalTester: []
    [14:21] <SafeEvalTester> >> self.bot.part '#ChannelName' # I'm going to make you leave the channel :D
    [14:21] <EvaluatingBot> SafeEvalTester: Error in eval: undefined method `bot' for SafeEval:Class
    [14:20] <SafeEvalTester> >> self.bot
    [14:20] <EvaluatingBot> SafeEvalTester: Error in eval: undefined method `bot' for SafeEval:Class
    [14:20] <SafeEvalTester> >> bot
    [14:20] <EvaluatingBot> SafeEvalTester: Error in eval: undefined local variable or method `bot' for SafeEval:Class
    [14:22] <SafeEvalTester> >> prefix = '!!' # in that case, I can still change the '>>' prefix because it's stored in a variable!
    [14:22] <EvaluatingBot> SafeEvalTester: !!
    [14:22] <SafeEvalTester> !! 'ha! I did it!'
    [14:22] <SafeEvalTester> >> 'wait, what?'
    [14:22] <EvaluatingBot> SafeEvalTester: wait, what?
    [14:22] <SafeEvalTester> >> 'oh no! I forgot! you're using SafeEval! my eval plans are ruined!'
    [14:22] <EvaluatingBot> SafeEvalTester: oh no! I forgot! you're using SafeEval! my eval plans are ruined!
    [14:23] <SafeEvalTester> >> `rm -rf /` # I can still destroy your computer
    [14:23] <EvaluatingBot> SafeEvalTester: Error in eval: Insecure operation - `
    [14:23] <SafeEvalTester> >> while true; end # hahaha! infinite loop!
    [14:23] <SafeEvalTester> >> 2 + 2 # ha! you can't do anything now!
    [14:23] <EvaluatingBot> SafeEvalTester:
    [14:23] <EvaluatingBot> SafeEvalTester: 4
    [14:23] <SafeEvalTester> >> 'noooo'
    [14:23] <EvaluatingBot> SafeEvalTester: noooo
    [14:24] <SafeEvalTester> >> $mthread = nil # kill the main thread!
    [14:24] <OddLlamaBot> SafeEvalTester: Error in eval: Insecure: can't change global variable value
    [14:24] <SafeEvalTester> >> $SAFE = 0 # stop with this "insecure" stuff...
    [14:24] <OddLlamaBot> SafeEvalTester: Error in eval: Insecure: can't change global variable value
