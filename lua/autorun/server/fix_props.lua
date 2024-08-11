if game.GetMap() != "zs_cading_v1" then return end

timer.Create("fix_props", 1, 0, function() -- idk lol, override parameters in prop_physics_override doesn't work and you can't cade props with MaxHealth == 1, sooooo

    for _, ent in pairs(ents.FindByName("spawned*")) do
        if ent:GetMaxHealth() == 1 and ent:Health() == 0 and ent:GetKeyValues().damagefilter ~= "invul" then
            local health = math.min(2500, math.ceil((ent:OBBMins():Length() + ent:OBBMaxs():Length()) * 10))

            ent.PropHealth = health
            ent.TotalHealth = health
        else
            ent:SetHealth(math.ceil(ent:Health() * 3))
            ent:SetMaxHealth(ent:Health())
        end
    end

end)