class Performance
  attr_reader :elapsed_times

  def initialize
    @elapsed_times = []
  end

  def add_time(time)
    elapsed_times << time
  end

  def average
    combined_times/number_of_times
  end

  private

  def combined_times
    elapsed_times.inject { |sum, num| sum + num }
  end

  def number_of_times
    elapsed_times.size
  end
end

def measure(repetition=1,performance_factory=Performance)
  performance = performance_factory.new
  repetition.times do
    start_time = Time.now
    yield
    end_time = Time.now
    performance.add_time(end_time - start_time)
  end
  performance.average
end
