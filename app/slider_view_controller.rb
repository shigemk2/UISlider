# -*- coding: utf-8 -*-
class SliderViewController < UIViewController
  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor
    @uislider = UISlider.alloc.initWithFrame(CGRectMake(100, 100, 100, 100))
    @uislider.addTarget(self, action:'changeText', forControlEvents:UIControlEventValueChanged)
    view.addSubview(@uislider)

    @label = UILabel.alloc.init
    @label.text = @uislider.value.to_s
    @label.frame = [[10, 10], [320, 20]]
    view.addSubview(@label)
  end

  def changeText
    @label.removeFromSuperview
    @label.text = @uislider.value.to_s
    @label.frame = [[10, 10], [320, 20]]
    view.addSubview(@label)
  end
end
