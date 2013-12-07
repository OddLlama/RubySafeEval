$mthread = Thread.new {}
class SafeEval
  def self.safeEval code
    Thread.kill $mthread
    $mthread = Thread.new {
      $SAFE = 4
      result = begin
        eval code
      rescue Exception => e
        "Error in eval: #{e}"
      end
      Thread.current[:evalResult] = result
    }
    $mthread.join
    String($mthread[:evalResult])
  end
end
