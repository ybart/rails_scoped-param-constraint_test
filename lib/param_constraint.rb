class ParamConstraint
  def matches?(request)
    Rails.logger.info request.params
    return request.params[:scoped_param]
  end
end
