train_ac1<-read.csv("./train_data/train_ac1.csv", stringsAsFactors = FALSE)
train_ac2<-read.csv("./train_data/train_ac2.csv", stringsAsFactors = FALSE)
train_ac3<-read.csv("./train_data/train_ac3.csv", stringsAsFactors = FALSE)
train_ac4<-read.csv("./train_data/train_ac4.csv", stringsAsFactors = FALSE)
train_ac5<-read.csv("./train_data/train_ac5.csv", stringsAsFactors = FALSE)
train_ac6<-read.csv("./train_data/train_ac6.csv", stringsAsFactors = FALSE)
train_ac7<-read.csv("./train_data/train_ac7.csv", stringsAsFactors = FALSE)
train_ac8<-read.csv("./train_data/train_ac8.csv", stringsAsFactors = FALSE)

train_ac1<-train_ac1[,-1]
train_ac2<-train_ac2[,-1]
train_ac3<-train_ac3[,-1]
train_ac4<-train_ac4[,-1]
train_ac5<-train_ac5[,-1]
train_ac6<-train_ac6[,-1]
train_ac7<-train_ac7[,-1]
train_ac8<-train_ac8[,-1]

train_ac<-rbind(train_ac1, train_ac2, train_ac3, train_ac4, train_ac5, train_ac6, train_ac7, train_ac8)

train_ac1<-subset(train_ac, select = c(wk, acc_id, cnt_dt, party_freq, source_freq, target_freq))
train_ac2<-round(subset(train_ac, select = -c(wk, acc_id, cnt_dt, party_freq, source_freq, target_freq)), 5)

train_ac<-cbind(train_ac1, train_ac2)

train_ac1<-train_ac %>% 
  filter(wk==1)
train_ac2<-train_ac %>% 
  filter(wk==2)
train_ac3<-train_ac %>% 
  filter(wk==3)
train_ac4<-train_ac %>% 
  filter(wk==4)
train_ac5<-train_ac %>% 
  filter(wk==5)
train_ac6<-train_ac %>% 
  filter(wk==6)
train_ac7<-train_ac %>% 
  filter(wk==7)
train_ac8<-train_ac %>% 
  filter(wk==8)

train_ac1<-train_ac1[,-1]
train_ac2<-train_ac2[,-1]
train_ac3<-train_ac3[,-1]
train_ac4<-train_ac4[,-1]
train_ac5<-train_ac5[,-1]
train_ac6<-train_ac6[,-1]
train_ac7<-train_ac7[,-1]
train_ac8<-train_ac8[,-1]

colnames(train_ac1)<-c("acc_id", "cnt_dt1", "party_freq1", "source_freq1", "target_freq1", "play_time1", 
                       "npc_exp1", "npc_hongmun1", "quest_exp1", "quest_hongmun1", "item_hongmun1", 
                       "game_combat_time1", "get_money1", "duel_cnt1" ,"duel_win1", "party_battle_cnt1", 
                       "partybattle_win1", "cnt_enter_inzone_solo1", "cnt_enter_inzone_light1", 
                       "cnt_enter_inzone_skilled1", "cnt_enter_inzone_normal1", "cnt_enter_raid1", 
                       "cnt_enter_raid_light1", "cnt_enter_bam1", "cnt_clear_inzone_solo1",
                       "cnt_clear_inzone_light1", "cnt_clear_inzone_skilled1" , "cnt_clear_inzone_normal1", 
                       "cnt_clear_raid1", "cnt_clear_raid_light1", "cnt_clear_bam1", "normal_chat1", 
                       "whisper_chat1", "district_chat1", "party_chat1", "guild_chat1", "faction_chat1", 
                       "cnt_use_buffitem1", "gathering_cnt1", "making_cnt1", "payment_amount1")

colnames(train_ac2)<-c("acc_id", "cnt_dt2", "party_freq2", "source_freq2", "target_freq2", "play_time2", 
                       "npc_exp2", "npc_hongmun2", "quest_exp2", "quest_hongmun2", "item_hongmun2", 
                       "game_combat_time2", "get_money2", "duel_cnt2" ,"duel_win2", "party_battle_cnt2", 
                       "partybattle_win2", "cnt_enter_inzone_solo2", "cnt_enter_inzone_light2", 
                       "cnt_enter_inzone_skilled2", "cnt_enter_inzone_normal2", "cnt_enter_raid2", 
                       "cnt_enter_raid_light2", "cnt_enter_bam2", "cnt_clear_inzone_solo2",
                       "cnt_clear_inzone_light2", "cnt_clear_inzone_skilled2" , "cnt_clear_inzone_normal2", 
                       "cnt_clear_raid2", "cnt_clear_raid_light2", "cnt_clear_bam2", "normal_chat2", 
                       "whisper_chat2", "district_chat2", "party_chat2", "guild_chat2", "faction_chat2", 
                       "cnt_use_buffitem2", "gathering_cnt2", "making_cnt2", "payment_amount2")

colnames(train_ac3)<-c("acc_id", "cnt_dt3", "party_freq3", "source_freq3", "target_freq3", "play_time3", 
                       "npc_exp3", "npc_hongmun3", "quest_exp3", "quest_hongmun3", "item_hongmun3", 
                       "game_combat_time3", "get_money3", "duel_cnt3" ,"duel_win3", "party_battle_cnt3", 
                       "partybattle_win3", "cnt_enter_inzone_solo3", "cnt_enter_inzone_light3", 
                       "cnt_enter_inzone_skilled3", "cnt_enter_inzone_normal3", "cnt_enter_raid3", 
                       "cnt_enter_raid_light3", "cnt_enter_bam3", "cnt_clear_inzone_solo3",
                       "cnt_clear_inzone_light3", "cnt_clear_inzone_skilled3" , "cnt_clear_inzone_normal3", 
                       "cnt_clear_raid3", "cnt_clear_raid_light3", "cnt_clear_bam3", "normal_chat3", 
                       "whisper_chat3", "district_chat3", "party_chat3", "guild_chat3", "faction_chat3", 
                       "cnt_use_buffitem3", "gathering_cnt3", "making_cnt3", "payment_amount3")

colnames(train_ac4)<-c("acc_id", "cnt_dt4", "party_freq4", "source_freq4", "target_freq4", "play_time4", 
                       "npc_exp4", "npc_hongmun4", "quest_exp4", "quest_hongmun4", "item_hongmun4", 
                       "game_combat_time4", "get_money4", "duel_cnt4" ,"duel_win4", "party_battle_cnt4", 
                       "partybattle_win4", "cnt_enter_inzone_solo4", "cnt_enter_inzone_light4", 
                       "cnt_enter_inzone_skilled4", "cnt_enter_inzone_normal4", "cnt_enter_raid4", 
                       "cnt_enter_raid_light4", "cnt_enter_bam4", "cnt_clear_inzone_solo4",
                       "cnt_clear_inzone_light4", "cnt_clear_inzone_skilled4" , "cnt_clear_inzone_normal4", 
                       "cnt_clear_raid4", "cnt_clear_raid_light4", "cnt_clear_bam4", "normal_chat4", 
                       "whisper_chat4", "district_chat4", "party_chat4", "guild_chat4", "faction_chat4", 
                       "cnt_use_buffitem4", "gathering_cnt4", "making_cnt4", "payment_amount4")

colnames(train_ac5)<-c("acc_id", "cnt_dt5", "party_freq5", "source_freq5", "target_freq5", "play_time5", 
                       "npc_exp5", "npc_hongmun5", "quest_exp5", "quest_hongmun5", "item_hongmun5", 
                       "game_combat_time5", "get_money5", "duel_cnt5" ,"duel_win5", "party_battle_cnt5", 
                       "partybattle_win5", "cnt_enter_inzone_solo5", "cnt_enter_inzone_light5", 
                       "cnt_enter_inzone_skilled5", "cnt_enter_inzone_normal5", "cnt_enter_raid5", 
                       "cnt_enter_raid_light5", "cnt_enter_bam5", "cnt_clear_inzone_solo5",
                       "cnt_clear_inzone_light5", "cnt_clear_inzone_skilled5" , "cnt_clear_inzone_normal5", 
                       "cnt_clear_raid5", "cnt_clear_raid_light5", "cnt_clear_bam5", "normal_chat5", 
                       "whisper_chat5", "district_chat5", "party_chat5", "guild_chat5", "faction_chat5", 
                       "cnt_use_buffitem5", "gathering_cnt5", "making_cnt5", "payment_amount5")

colnames(train_ac6)<-c("acc_id", "cnt_dt6", "party_freq6", "source_freq6", "target_freq6", "play_time6", 
                       "npc_exp6", "npc_hongmun6", "quest_exp6", "quest_hongmun6", "item_hongmun6", 
                       "game_combat_time6", "get_money6", "duel_cnt6" ,"duel_win6", "party_battle_cnt6", 
                       "partybattle_win6", "cnt_enter_inzone_solo6", "cnt_enter_inzone_light6", 
                       "cnt_enter_inzone_skilled6", "cnt_enter_inzone_normal6", "cnt_enter_raid6", 
                       "cnt_enter_raid_light6", "cnt_enter_bam6", "cnt_clear_inzone_solo6",
                       "cnt_clear_inzone_light6", "cnt_clear_inzone_skilled6" , "cnt_clear_inzone_normal6", 
                       "cnt_clear_raid6", "cnt_clear_raid_light6", "cnt_clear_bam6", "normal_chat6", 
                       "whisper_chat6", "district_chat6", "party_chat6", "guild_chat6", "faction_chat6", 
                       "cnt_use_buffitem6", "gathering_cnt6", "making_cnt6", "payment_amount6")

colnames(train_ac7)<-c("acc_id", "cnt_dt7", "party_freq7", "source_freq7", "target_freq7", "play_time7", 
                       "npc_exp7", "npc_hongmun7", "quest_exp7", "quest_hongmun7", "item_hongmun7", 
                       "game_combat_time7", "get_money7", "duel_cnt7" ,"duel_win7", "party_battle_cnt7", 
                       "partybattle_win7", "cnt_enter_inzone_solo7", "cnt_enter_inzone_light7", 
                       "cnt_enter_inzone_skilled7", "cnt_enter_inzone_normal7", "cnt_enter_raid7", 
                       "cnt_enter_raid_light7", "cnt_enter_bam7", "cnt_clear_inzone_solo7",
                       "cnt_clear_inzone_light7", "cnt_clear_inzone_skilled7" , "cnt_clear_inzone_normal7", 
                       "cnt_clear_raid7", "cnt_clear_raid_light7", "cnt_clear_bam7", "normal_chat7", 
                       "whisper_chat7", "district_chat7", "party_chat7", "guild_chat7", "faction_chat7", 
                       "cnt_use_buffitem7", "gathering_cnt7", "making_cnt7", "payment_amount7")

colnames(train_ac8)<-c("acc_id", "cnt_dt8", "party_freq8", "source_freq8", "target_freq8", "play_time8", 
                       "npc_exp8", "npc_hongmun8", "quest_exp8", "quest_hongmun8", "item_hongmun8", 
                       "game_combat_time8", "get_money8", "duel_cnt8" ,"duel_win8", "party_battle_cnt8", 
                       "partybattle_win8", "cnt_enter_inzone_solo8", "cnt_enter_inzone_light8", 
                       "cnt_enter_inzone_skilled8", "cnt_enter_inzone_normal8", "cnt_enter_raid8", 
                       "cnt_enter_raid_light8", "cnt_enter_bam8", "cnt_clear_inzone_solo8",
                       "cnt_clear_inzone_light8", "cnt_clear_inzone_skilled8" , "cnt_clear_inzone_normal8", 
                       "cnt_clear_raid8", "cnt_clear_raid_light8", "cnt_clear_bam8", "normal_chat8", 
                       "whisper_chat8", "district_chat8", "party_chat8", "guild_chat8", "faction_chat8", 
                       "cnt_use_buffitem8", "gathering_cnt8", "making_cnt8", "payment_amount8")

train_ac8$npc_exp8_o<-ifelse(train_ac8$npc_exp8==-0.23187, 0, 1)
train_ac8$duel_cnt8_o<-ifelse(train_ac8$duel_cnt8==-0.03617, 0, 1)
train_ac8$party_battle_cnt8_o<-ifelse(train_ac8$party_battle_cnt8==-0.16747, 0, 1)
#train_ac8$inzone_solo8_o<-ifelse(train_ac8$cnt_enter_inzone_solo8==-0.30875, 0, 1)
train_ac8$inzone_skilled8_o<-ifelse(train_ac8$cnt_enter_inzone_skilled8==-0.19067, 0, 1)
#train_ac8$district_chat8_o<-ifelse(train_ac8$district_chat8==-0.01657, 0, 1)
#train_ac8$gathering_o<-ifelse(train_ac8$gathering_cnt8==-0.02776, 0, 1)
#train_ac8$making_o<-ifelse(train_ac8$making_cnt8==-0.36554, 0, 1)
#train_ac8$payment_amount8_o<-ifelse(train_ac8$payment_amount8==-0.1499, 0, 1)

train_data<-left_join(train_ac8, train_ac1)
train_data<-left_join(train_data, train_ac2)
train_data<-left_join(train_data, train_ac3)
train_data<-left_join(train_data, train_ac4)
train_data<-left_join(train_data, train_ac5)
train_data<-left_join(train_data, train_ac6)
train_data<-left_join(train_data, train_ac7)

train_data$party_freq1[is.na(train_data$party_freq1)]<-0
train_data$party_freq2[is.na(train_data$party_freq2)]<-0
train_data$party_freq3[is.na(train_data$party_freq3)]<-0
train_data$party_freq4[is.na(train_data$party_freq4)]<-0
train_data$party_freq5[is.na(train_data$party_freq5)]<-0
train_data$party_freq6[is.na(train_data$party_freq6)]<-0
train_data$party_freq7[is.na(train_data$party_freq7)]<-0

train_data$source_freq1[is.na(train_data$source_freq1)]<-0
train_data$source_freq2[is.na(train_data$source_freq2)]<-0
train_data$source_freq3[is.na(train_data$source_freq3)]<-0
train_data$source_freq4[is.na(train_data$source_freq4)]<-0
train_data$source_freq5[is.na(train_data$source_freq5)]<-0
train_data$source_freq6[is.na(train_data$source_freq6)]<-0
train_data$source_freq7[is.na(train_data$source_freq7)]<-0

train_data$target_freq1[is.na(train_data$target_freq1)]<-0
train_data$target_freq2[is.na(train_data$target_freq2)]<-0
train_data$target_freq3[is.na(train_data$target_freq3)]<-0
train_data$target_freq4[is.na(train_data$target_freq4)]<-0
train_data$target_freq5[is.na(train_data$target_freq5)]<-0
train_data$target_freq6[is.na(train_data$target_freq6)]<-0
train_data$target_freq7[is.na(train_data$target_freq7)]<-0

train_data[is.na(train_data)]<-(-10)

train_data<-subset(train_data, select = -c(source_freq1,
                                           source_freq2,
                                           source_freq3,
                                           source_freq4,
                                           source_freq5,
                                           source_freq6))

train_data<-subset(train_data, select = -c(target_freq1,
                                           target_freq2,
                                           target_freq3,
                                           target_freq4,
                                           target_freq5,
                                           target_freq6))

train_data<-subset(train_data, select = -c(get_money1, 
                                           get_money2, 
                                           get_money3, 
                                           get_money4, 
                                           get_money5, 
                                           get_money6, 
                                           get_money7))

train_data<-subset(train_data, select = -c(duel_cnt1,
                                           duel_cnt2,
                                           duel_cnt3,
                                           duel_cnt4,
                                           duel_cnt5,
                                           duel_cnt6,
                                           duel_cnt7))

train_data<-subset(train_data, select = -c(duel_win1,
                                           duel_win2,
                                           duel_win3,
                                           duel_win4,
                                           duel_win5,
                                           duel_win6,
                                           duel_win7))

train_data<-subset(train_data, select = -c(party_battle_cnt1,
                                           party_battle_cnt2,
                                           party_battle_cnt3,
                                           party_battle_cnt4,
                                           party_battle_cnt5,
                                           party_battle_cnt6,
                                           party_battle_cnt7))

train_data<-subset(train_data, select = -c(partybattle_win1,
                                           partybattle_win2,
                                           partybattle_win3,
                                           partybattle_win4,
                                           partybattle_win5,
                                           partybattle_win6,
                                           partybattle_win7))

train_data<-subset(train_data, select = -c(cnt_enter_bam1,
                                           cnt_enter_bam2,
                                           cnt_enter_bam3,
                                           cnt_enter_bam4,
                                           cnt_enter_bam5,
                                           cnt_enter_bam6,
                                           cnt_enter_bam7))

train_data<-subset(train_data, select = -c(cnt_clear_bam1,
                                           cnt_clear_bam2,
                                           cnt_clear_bam3,
                                           cnt_clear_bam4,
                                           cnt_clear_bam5,
                                           cnt_clear_bam6,
                                           cnt_clear_bam7))

train_data<-subset(train_data, select = -c(cnt_enter_inzone_solo1,
                                           cnt_enter_inzone_solo2,
                                           cnt_enter_inzone_solo3,
                                           cnt_enter_inzone_solo4,
                                           cnt_enter_inzone_solo5,
                                           cnt_enter_inzone_solo6,
                                           cnt_enter_inzone_solo7))

train_data<-subset(train_data, select = -c(cnt_clear_inzone_solo1,
                                           cnt_clear_inzone_solo2,
                                           cnt_clear_inzone_solo3,
                                           cnt_clear_inzone_solo4,
                                           cnt_clear_inzone_solo5,
                                           cnt_clear_inzone_solo6,
                                           cnt_clear_inzone_solo7))

train_data<-subset(train_data, select = -c(cnt_enter_inzone_skilled1,
                                           cnt_enter_inzone_skilled2,
                                           cnt_enter_inzone_skilled3,
                                           cnt_enter_inzone_skilled4,
                                           cnt_enter_inzone_skilled5,
                                           cnt_enter_inzone_skilled6,
                                           cnt_enter_inzone_skilled7))

train_data<-subset(train_data, select = -c(cnt_clear_inzone_skilled1,
                                           cnt_clear_inzone_skilled2,
                                           cnt_clear_inzone_skilled3,
                                           cnt_clear_inzone_skilled4,
                                           cnt_clear_inzone_skilled5,
                                           cnt_clear_inzone_skilled6,
                                           cnt_clear_inzone_skilled7))

train_data<-subset(train_data, select = -c(cnt_enter_raid1,
                                           cnt_enter_raid2,
                                           cnt_enter_raid3,
                                           cnt_enter_raid4,
                                           cnt_enter_raid5,
                                           cnt_enter_raid6,
                                           cnt_enter_raid7))

train_data<-subset(train_data, select = -c(cnt_clear_raid1,
                                           cnt_clear_raid2,
                                           cnt_clear_raid3,
                                           cnt_clear_raid4,
                                           cnt_clear_raid5,
                                           cnt_clear_raid6,
                                           cnt_clear_raid7))

train_data<-subset(train_data, select = -c(cnt_enter_raid_light1,
                                           cnt_enter_raid_light2,
                                           cnt_enter_raid_light3,
                                           cnt_enter_raid_light4,
                                           cnt_enter_raid_light5,
                                           cnt_enter_raid_light6,
                                           cnt_enter_raid_light7))

train_data<-subset(train_data, select = -c(cnt_clear_raid_light1,
                                           cnt_clear_raid_light2,
                                           cnt_clear_raid_light3,
                                           cnt_clear_raid_light4,
                                           cnt_clear_raid_light5,
                                           cnt_clear_raid_light6,
                                           cnt_clear_raid_light7))

train_data<-subset(train_data, select = -c(district_chat1,
                                           district_chat2,
                                           district_chat3,
                                           district_chat4,
                                           district_chat5,
                                           district_chat6,
                                           district_chat7,
                                           faction_chat1,
                                           faction_chat2,
                                           faction_chat3,
                                           faction_chat4,
                                           faction_chat5,
                                           faction_chat6,
                                           faction_chat7,
                                           gathering_cnt1,
                                           gathering_cnt2,
                                           gathering_cnt3,
                                           gathering_cnt4,
                                           gathering_cnt5,
                                           gathering_cnt6,
                                           gathering_cnt7,
                                           making_cnt1,
                                           making_cnt2,
                                           making_cnt3,
                                           making_cnt4,
                                           making_cnt5,
                                           making_cnt6,
                                           making_cnt7,
                                           payment_amount1,
                                           payment_amount2,
                                           payment_amount3,
                                           payment_amount4,
                                           payment_amount5,
                                           payment_amount6,
                                           payment_amount7))

#guild_data추가
guild_data<-read.csv("./train_data/guild_data.csv", stringsAsFactors = FALSE)

guild_data<-guild_data[,-1]

train_data<-left_join(train_data, guild_data)

train_data<-train_data[,-175]

train_data$guild_freq[is.na(train_data$guild_freq)]<-0

train_lb<-read.csv("./final_data_rev/train/train_label.csv", stringsAsFactors = FALSE)

train_data<-left_join(train_lb, train_data)

write.csv(train_data, "./train_data.csv")
