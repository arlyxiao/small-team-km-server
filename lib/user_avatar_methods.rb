module UserAvatarMethods
  
  def self.included(base)
    base.has_attached_file :logo,
      :styles => {
        :large  => '200x200#',
        :medium => '96x96#',
        :normal => '48x48#',
        :tiny   => '32x32#',
        :mini   => '24x24#'
      },
      :default_style => :normal,
      :default_url   => '',
      :path => '/:class/:attachment/:id/:style/:basename.:extension',
      :url  => "http://storage.aliyun.com/#{OssManager::CONFIG["bucket"]}/:class/:attachment/:id/:style/:basename.:extension",
      :storage => :oss
  end
  
end