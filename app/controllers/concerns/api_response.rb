module ApiResponse
  def respond(payload, status = :ok)
    render json: payload, status: status
  end

  def empty
    head :no_content
  end
end
