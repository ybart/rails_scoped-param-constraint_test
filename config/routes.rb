require 'param_constraint'

ScopedParamConstraint::Application.routes.draw do
  scope '/prefix/:scoped_param/suffix' do
    constraints(ParamConstraint.new) do
      resource :success
    end
  end
end
