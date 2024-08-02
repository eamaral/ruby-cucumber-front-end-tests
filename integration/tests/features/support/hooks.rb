Before do 
    page.driver.browser.manage.window.maximize
end


After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/', '_')

    if scenario.passed?
        tirar_foto(scenario_name.downcase!, 'passou')     
    else
        tirar_foto(scenario_name.downcase!, 'falhou')
    end

end