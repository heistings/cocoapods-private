Pod::Spec.new do |s|
  s.name            = 'libwebp'
  s.version         = '0.6.0'
  s.summary         = 'Library to encode and decode images in WebP format.'
  s.homepage        = 'https://developers.google.com/speed/webp/'
  s.author          = 'Google Inc.'
  s.license         = { :type => 'BSD', :file => 'COPYING' }
  s.source          = { :git => 'https://chromium.googlesource.com/webm/libwebp', :tag => 'v0.6.0' }

  s.compiler_flags  = '-D_THREAD_SAFE'
  s.requires_arc    = false

  s.platforms       = { :ios => nil, :osx => nil, :watchos => nil, :tvos => nil }
  
  # Subspecs
  s.subspec 'webp' do |webp|
    webp.header_dir   = 'webp'
    webp.source_files = 'src/webp/*.h'
  end

  s.subspec 'core' do |core|
    core.source_files = 'src/utils/*.{h,c}', 'src/dsp/*.{h,c}', 'src/enc/*.{h,c}', 'src/dec/*.{h,c}'
    core.dependency 'libwebp/webp'
  end

  s.subspec 'utils' do |utils|
    utils.dependency 'libwebp/core'
  end

  s.subspec 'dsp' do |dsp|
    dsp.dependency 'libwebp/core'
  end
  
  s.subspec 'enc' do |enc|
    enc.dependency 'libwebp/core'
  end

  s.subspec 'dec' do |dec|
    dec.dependency 'libwebp/core'
  end

  s.subspec 'demux' do |demux|
    demux.source_files = 'src/demux/*.{h,c}'
    demux.dependency 'libwebp/core'
  end

  s.subspec 'mux' do |mux|
    mux.source_files = 'src/mux/*.{h,c}'
    mux.dependency 'libwebp/core'
  end
  
end
