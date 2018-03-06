class User < ApplicationRecord
    validates :name, presence: true
    validates :email, uniqueness: { allow_blank: true }
    validates :tw_name, uniqueness: true 
    has_secure_password
    has_many :logs

    enum faculty: {"文学部":0, "経済学部":1, "法学部":2, "人間開発学部":3, "神道文化学部":4}
    enum department: {'日本文学科':0,'中国文学科':1, '外国語文化学科':2, '史学科':3,'哲学科':4, '経済学科':4, '経済ネットワーキング学科':6, '経営学科':7, '法律学科':8, '初等教育学科':9, '健康体育学科':10, '子ども支援学科':11, '神道文化学科':12}
end
