class HeroPower < ApplicationRecord
    enum :strength, [:Strong, :Weak, :Average]

    belongs_to :power
    belongs_to :hero
end
