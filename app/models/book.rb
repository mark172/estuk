class Book < ActiveRecord::Base
    belongs_to :user
    has_attached_file :image
    has_attached_file :resource
    
    validates_attachment_content_type :image,
    content_type: /^image\/(png|jpeg)/,
    message: "Only JPEG or PNG files are allowed."
    
    validates_attachment_content_type :resource,
    content_type: ['application/pdf'],
    message: "PDF files only."
    
    validates :image, attachment_presence: true
    validates :resource, attachment_presence: true
end
