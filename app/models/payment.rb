class Payment < ApplicationRecord
    def to_param
        uuid
    end
end
