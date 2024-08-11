if game.GetMap() != "zs_cading_v1" then return end

concommand.Add("tp_lobby", function(ply, cmd, args)
    if not ply:IsAdmin() then return end

    ply:SetPos(Vector(0, 0, 0))
end)

concommand.Add("tp_admin_room", function(ply, cmd, args)
    if not ply:IsAdmin() then return end

    ply:SetPos(Vector(0, -140, -320))
end)

concommand.Add("tp_work_zone_lobby", function(ply, cmd, args)
    if not ply:IsAdmin() then return end

    ply:SetPos(Vector(-13, 2050, -125))
end)

concommand.Add("tp_work_zone", function(ply, cmd, args)
    if not ply:IsAdmin() then return end

    ply:SetPos(Vector(8, 1285, -1015))
end)

concommand.Add("tp_zs_fog_village", function(ply, cmd, args)
    if not ply:IsAdmin() then return end

    ply:SetPos(Vector(2780, 4930, -985))
end)

concommand.Add("tp_prop_zs_fog_village", function(ply, cmd, args)
    if not ply:IsAdmin() then return end

    if ply:GetEyeTrace().Entity:IsPlayer() then
        return
    else
        ply:GetEyeTrace().Entity:SetPos(Vector(2780, 4930, -500))
    end
end)

concommand.Add("tp_zs_zombie_village", function(ply, cmd, args)
    if not ply:IsAdmin() then return end

    ply:SetPos(Vector(-1725, 4670, -1080))
end)

concommand.Add("tp_prop_zs_zombie_village", function(ply, cmd, args)
    if not ply:IsAdmin() then return end

    if ply:GetEyeTrace().Entity:IsPlayer() then
        return
    else
        ply:GetEyeTrace().Entity:SetPos(Vector(-1330, 4690, -630))
    end
end)

concommand.Add("tp_zs_powercliff", function(ply, cmd, args)
    if not ply:IsAdmin() then return end

    ply:SetPos(Vector(-7200, 5050, -985))
end)

concommand.Add("tp_prop_zs_powercliff", function(ply, cmd, args)
    if not ply:IsAdmin() then return end

    if ply:GetEyeTrace().Entity:IsPlayer() then
        return
    else
        ply:GetEyeTrace().Entity:SetPos(Vector(-7150, 5200, -600))
    end
end)

concommand.Add("tp_humans_zs_fog_village", function(ply, cmd, args)
    if not ply:IsAdmin() then return end

    for _, v in player.Iterator() do
        if v:Team() == TEAM_HUMAN then
            v:SetPos(Vector(1920, 4480, -975))
        end
    end
end)

concommand.Add("tp_humans_zs_zombie_village", function(ply, cmd, args)
    if not ply:IsAdmin() then return end

    for _, v in player.Iterator() do
        if v:Team() == TEAM_HUMAN then
            v:SetPos(Vector(-1030, 4960, -1085))
        end
    end
end)

concommand.Add("tp_humans_zs_powercliff", function(ply, cmd, args)
    if not ply:IsAdmin() then return end

    for _, v in player.Iterator() do
        if v:Team() == TEAM_HUMAN then
            v:SetPos(Vector(-8100, 6280, -975))
        end
    end
end)