class SessionRepository
  def initialize(opts = {})
    @mongo_client = opts.fetch(:mongo_client)
  end

  def create(member_id)
    sessions.insert_one(
      member_id: member_id,
      creation_date: Time.now,
    )
  end

  def sessions
    mongo_client[:sessions]
  end

  private
  attr_reader :mongo_client
end
