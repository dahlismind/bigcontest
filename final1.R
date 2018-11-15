#payment데이터 읽어오기
train_pm<-read.csv("./final_data_rev/train/train_payment.csv", stringsAsFactors = FALSE)

train_pm1<-subset(train_pm, select = c(payment_week, acc_id))
train_pm2<-round(subset(train_pm, select = -c(payment_week, acc_id)), 5)

train_pm<-cbind(train_pm1, train_pm2)

train_pm$ac_payment_yes<-ifelse(train_pm$payment_amount==(-0.1499), 0, 1)

s_ac_payment<-train_pm %>% 
  group_by(acc_id) %>% 
  summarise(s_ac_payment_amount=round(sum(payment_amount), 5))

write.csv(s_ac_payment, "./train_data/ac_payment_sum.csv")

train_pm1<-train_pm %>% 
  filter(payment_week==1)
train_pm2<-train_pm %>% 
  filter(payment_week==2)
train_pm3<-train_pm %>% 
  filter(payment_week==3)
train_pm4<-train_pm %>% 
  filter(payment_week==4)
train_pm5<-train_pm %>% 
  filter(payment_week==5)
train_pm6<-train_pm %>% 
  filter(payment_week==6)
train_pm7<-train_pm %>% 
  filter(payment_week==7)
train_pm8<-train_pm %>% 
  filter(payment_week==8)

#nopayment데이터 읽어오기
payment_noac<-read.csv("./train_data/payment_noactivity.csv", stringsAsFactors = FALSE)

payment_noac<-payment_noac[,-1]

payment_acc_id<-subset(payment_noac, select = c(payment_week, acc_id))
payment_noac<-round(subset(payment_noac, select = -c(payment_week, acc_id)), 5)

payment_noac<-cbind(payment_acc_id, payment_noac)

payment_noac$noac_payment_yes<-ifelse(payment_noac$payment_amount==(-0.1499), 0, 1)

s_noac_payment<-payment_noac %>% 
  group_by(acc_id) %>% 
  summarise(s_noac_payment_amount=round(sum(payment_amount), 5))

write.csv(s_noac_payment, "./train_data/noac_payment_sum.csv")

#activity데이터 읽어오기
train_ac<-read.csv("./final_data_rev/train/train_activity.csv", stringsAsFactors = FALSE)

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

train_ac1<-left_join(train_ac1, train_pm1)
train_ac2<-left_join(train_ac2, train_pm2)
train_ac3<-left_join(train_ac3, train_pm3)
train_ac4<-left_join(train_ac4, train_pm4)
train_ac5<-left_join(train_ac5, train_pm5)
train_ac6<-left_join(train_ac6, train_pm6)
train_ac7<-left_join(train_ac7, train_pm7)
train_ac8<-left_join(train_ac8, train_pm8)

train_ac1<-subset(train_ac1, select = -c(payment_week, ac_payment_yes))
train_ac2<-subset(train_ac2, select = -c(payment_week, ac_payment_yes))
train_ac3<-subset(train_ac3, select = -c(payment_week, ac_payment_yes))
train_ac4<-subset(train_ac4, select = -c(payment_week, ac_payment_yes))
train_ac5<-subset(train_ac5, select = -c(payment_week, ac_payment_yes))
train_ac6<-subset(train_ac6, select = -c(payment_week, ac_payment_yes))
train_ac7<-subset(train_ac7, select = -c(payment_week, ac_payment_yes))
train_ac8<-subset(train_ac8, select = -c(payment_week, ac_payment_yes))

#party데이터 읽어오기
train_pa1<-read.csv("./train_data/party_data1.csv", stringsAsFactors = FALSE)
train_pa2<-read.csv("./train_data/party_data2.csv", stringsAsFactors = FALSE)
train_pa3<-read.csv("./train_data/party_data3.csv", stringsAsFactors = FALSE)
train_pa4<-read.csv("./train_data/party_data4.csv", stringsAsFactors = FALSE)
train_pa5<-read.csv("./train_data/party_data5.csv", stringsAsFactors = FALSE)
train_pa6<-read.csv("./train_data/party_data6.csv", stringsAsFactors = FALSE)
train_pa7<-read.csv("./train_data/party_data7.csv", stringsAsFactors = FALSE)
train_pa8<-read.csv("./train_data/party_data8.csv", stringsAsFactors = FALSE)

train_pa1<-train_pa1[,-1]
train_pa2<-train_pa2[,-1]
train_pa3<-train_pa3[,-1]
train_pa4<-train_pa4[,-1]
train_pa5<-train_pa5[,-1]
train_pa6<-train_pa6[,-1]
train_pa7<-train_pa7[,-1]
train_pa8<-train_pa8[,-1]

train_pa1<-train_pa1[,-3]
train_pa2<-train_pa2[,-3]
train_pa3<-train_pa3[,-3]
train_pa4<-train_pa4[,-3]
train_pa5<-train_pa5[,-3]
train_pa6<-train_pa6[,-3]
train_pa7<-train_pa7[,-3]
train_pa8<-train_pa8[,-3]

colnames(train_pa1)<-c("acc_id", "party_freq")
colnames(train_pa2)<-c("acc_id", "party_freq")
colnames(train_pa3)<-c("acc_id", "party_freq")
colnames(train_pa4)<-c("acc_id", "party_freq")
colnames(train_pa5)<-c("acc_id", "party_freq")
colnames(train_pa6)<-c("acc_id", "party_freq")
colnames(train_pa7)<-c("acc_id", "party_freq")
colnames(train_pa8)<-c("acc_id", "party_freq")

train_ac1<-left_join(train_ac1, train_pa1)
train_ac2<-left_join(train_ac2, train_pa2)
train_ac3<-left_join(train_ac3, train_pa3)
train_ac4<-left_join(train_ac4, train_pa4)
train_ac5<-left_join(train_ac5, train_pa5)
train_ac6<-left_join(train_ac6, train_pa6)
train_ac7<-left_join(train_ac7, train_pa7)
train_ac8<-left_join(train_ac8, train_pa8)

train_ac1$party_freq[is.na(train_ac1$party_freq)]<-0
train_ac2$party_freq[is.na(train_ac2$party_freq)]<-0
train_ac3$party_freq[is.na(train_ac3$party_freq)]<-0
train_ac4$party_freq[is.na(train_ac4$party_freq)]<-0
train_ac5$party_freq[is.na(train_ac5$party_freq)]<-0
train_ac6$party_freq[is.na(train_ac6$party_freq)]<-0
train_ac7$party_freq[is.na(train_ac7$party_freq)]<-0
train_ac8$party_freq[is.na(train_ac8$party_freq)]<-0

#trade 데이터 읽기
train_tr1<-read.csv("./final_data_rev/train/train_tr1.csv", stringsAsFactors = FALSE)
train_tr2<-read.csv("./final_data_rev/train/train_tr2.csv", stringsAsFactors = FALSE)
train_tr3<-read.csv("./final_data_rev/train/train_tr3.csv", stringsAsFactors = FALSE)
train_tr4<-read.csv("./final_data_rev/train/train_tr4.csv", stringsAsFactors = FALSE)
train_tr5<-read.csv("./final_data_rev/train/train_tr5.csv", stringsAsFactors = FALSE)
train_tr6<-read.csv("./final_data_rev/train/train_tr6.csv", stringsAsFactors = FALSE)
train_tr7<-read.csv("./final_data_rev/train/train_tr7.csv", stringsAsFactors = FALSE)
train_tr8<-read.csv("./final_data_rev/train/train_tr8.csv", stringsAsFactors = FALSE)

#주별로 source, target 횟수 데이터 만들기
#1주
source_freq1<-train_tr1 %>% 
  count(source_acc_id)
target_freq1<-train_tr1 %>% 
  count(target_acc_id)

colnames(source_freq1)<-c("acc_id", "source_freq")
colnames(target_freq1)<-c("acc_id", "target_freq")

source_target1<-left_join(source_freq1, target_freq1)

train_ac1<-left_join(train_ac1, source_target1)

train_ac1$source_freq[is.na(train_ac1$source_freq)]<-0
train_ac1$target_freq[is.na(train_ac1$target_freq)]<-0

#2주
source_freq2<-train_tr2 %>% 
  count(source_acc_id)
target_freq2<-train_tr2 %>% 
  count(target_acc_id)

colnames(source_freq2)<-c("acc_id", "source_freq")
colnames(target_freq2)<-c("acc_id", "target_freq")

source_target2<-left_join(source_freq2, target_freq2)

train_ac2<-left_join(train_ac2, source_target2)

train_ac2$source_freq[is.na(train_ac2$source_freq)]<-0
train_ac2$target_freq[is.na(train_ac2$target_freq)]<-0

#3주
source_freq3<-train_tr3 %>% 
  count(source_acc_id)
target_freq3<-train_tr3 %>% 
  count(target_acc_id)

colnames(source_freq3)<-c("acc_id", "source_freq")
colnames(target_freq3)<-c("acc_id", "target_freq")

source_target3<-left_join(source_freq3, target_freq3)

train_ac3<-left_join(train_ac3, source_target3)

train_ac3$source_freq[is.na(train_ac3$source_freq)]<-0
train_ac3$target_freq[is.na(train_ac3$target_freq)]<-0

#4주
source_freq4<-train_tr4 %>% 
  count(source_acc_id)
target_freq4<-train_tr4 %>% 
  count(target_acc_id)

colnames(source_freq4)<-c("acc_id", "source_freq")
colnames(target_freq4)<-c("acc_id", "target_freq")

source_target4<-left_join(source_freq4, target_freq4)

train_ac4<-left_join(train_ac4, source_target4)

train_ac4$source_freq[is.na(train_ac4$source_freq)]<-0
train_ac4$target_freq[is.na(train_ac4$target_freq)]<-0

#5주
source_freq5<-train_tr5 %>% 
  count(source_acc_id)
target_freq5<-train_tr5 %>% 
  count(target_acc_id)

colnames(source_freq5)<-c("acc_id", "source_freq")
colnames(target_freq5)<-c("acc_id", "target_freq")

source_target5<-left_join(source_freq5, target_freq5)

train_ac5<-left_join(train_ac5, source_target5)

train_ac5$source_freq[is.na(train_ac5$source_freq)]<-0
train_ac5$target_freq[is.na(train_ac5$target_freq)]<-0

#6주
source_freq6<-train_tr6 %>% 
  count(source_acc_id)
target_freq6<-train_tr6 %>% 
  count(target_acc_id)

colnames(source_freq6)<-c("acc_id", "source_freq")
colnames(target_freq6)<-c("acc_id", "target_freq")

source_target6<-left_join(source_freq6, target_freq6)

train_ac6<-left_join(train_ac6, source_target6)

train_ac6$source_freq[is.na(train_ac6$source_freq)]<-0
train_ac6$target_freq[is.na(train_ac6$target_freq)]<-0

#7주
source_freq7<-train_tr7 %>% 
  count(source_acc_id)
target_freq7<-train_tr7 %>% 
  count(target_acc_id)

colnames(source_freq7)<-c("acc_id", "source_freq")
colnames(target_freq7)<-c("acc_id", "target_freq")

source_target7<-left_join(source_freq7, target_freq7)

train_ac7<-left_join(train_ac7, source_target7)

train_ac7$source_freq[is.na(train_ac7$source_freq)]<-0
train_ac7$target_freq[is.na(train_ac7$target_freq)]<-0

#8주
source_freq8<-train_tr8 %>% 
  count(source_acc_id)
target_freq8<-train_tr8 %>% 
  count(target_acc_id)

colnames(source_freq8)<-c("acc_id", "source_freq")
colnames(target_freq8)<-c("acc_id", "target_freq")

source_target8<-left_join(source_freq8, target_freq8)

train_ac8<-left_join(train_ac8, source_target8)

train_ac8$source_freq[is.na(train_ac8$source_freq)]<-0
train_ac8$target_freq[is.na(train_ac8$target_freq)]<-0

rm(source_freq1)
rm(source_freq2)
rm(source_freq3)
rm(source_freq4)
rm(source_freq5)
rm(source_freq6)
rm(source_freq7)
rm(source_freq8)

rm(target_freq1)
rm(target_freq2)
rm(target_freq3)
rm(target_freq4)
rm(target_freq5)
rm(target_freq6)
rm(target_freq7)
rm(target_freq8)

rm(source_target1)
rm(source_target2)
rm(source_target3)
rm(source_target4)
rm(source_target5)
rm(source_target6)
rm(source_target7)
rm(source_target8)

rm(train_tr1)
rm(train_tr2)
rm(train_tr3)
rm(train_tr4)
rm(train_tr5)
rm(train_tr6)
rm(train_tr7)
rm(train_tr8)

write.csv(train_ac1, "./train_data/train_ac1.csv")
write.csv(train_ac2, "./train_data/train_ac2.csv")
write.csv(train_ac3, "./train_data/train_ac3.csv")
write.csv(train_ac4, "./train_data/train_ac4.csv")
write.csv(train_ac5, "./train_data/train_ac5.csv")
write.csv(train_ac6, "./train_data/train_ac6.csv")
write.csv(train_ac7, "./train_data/train_ac7.csv")
write.csv(train_ac8, "./train_data/train_ac8.csv")
