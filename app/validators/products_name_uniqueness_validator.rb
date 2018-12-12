class ProductsNameUniquenessValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors[attribute] << "Products names must be unique" unless value.map(&:name)
  end
end