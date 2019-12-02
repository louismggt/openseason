module JobHelper
  def accommodation_display(job)
    if job.accommodation == false
      # "<span class='fa-stack fa-2x'><i class='fas fa-bed'></i><i class='fas fa-ban fa-stack-2x' style='color:Tomato'></i></span><p>Hébergement non inclus</p>".html_safe

      "<span class='fa-stack fa-2x'>
        <i class='fas fa-camera fa-stack-1x'></i>
        <i class='fas fa-ban fa-stack-2x'></i>
      </span>".html_safe

    else
      "<i class='fas fa-bed'></i><p>Hébergement inclus</p>".html_safe
    end
  end
end

