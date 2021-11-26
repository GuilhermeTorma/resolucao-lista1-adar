#Questao 7
temp<-30
umidade_r<-30
temp_bulbo_umido <- temp * atan(0.151977 * (umidade_r + 8.313659)**(1 / 2)) + 
atan(temp + umidade_r) - atan(umidade_r - 1.676331) + 
0.00391838 * (umidade_r**(3 / 2)) * atan(0.023101 * umidade_r) - 4.686035
temp_bulbo_umido

#Questao 8
silte <- 13
argila <- 37
densidade_solo <- 1.3
umidade_equiv <- 21
x14 <- -1.05501 + 0.0650857 * silte
x15 <- -2.07588 + 0.0423954 * argila
x16 <- -6.03402 + 4.80572 * densidade_solo
x17 <- -2.18409 + (8.84963 * umidade_equiv) / 100
z9 <- 0.175202 + 1.18513 * x17 - 0.0996042 * (x17**2) + 0.327915 * x16 -
  0.0758657 * (x16**2)
z10 <- 0.929344 * z9 + 0.132519 * x14
z11 <- 0.191452 + 1.25652 * x17 - 0.079098 * (x17**2) + 0.393814 * x16 + 
  0.152095 * x17 * x16
z13 <- 0.235084 + 0.33033 * x15 - 0.191838 * (x15**2) + 0.0543679 * (x15**2) +
  0.977685 * x17 + 0.304174 * x15 * x17 - 0.218857 * (x17**2) 
- 0.164373 * x15 * (x17**2) + 0.0415057 * (x17**3) + 0.373361 * x16 
+ 0.0811861 * x17 * x16 - 0.0768087 * x15 * x17 * x16
potencial_hidrico_10kpa <- 0.339255 + 0.112526 * z10
potencial_hidrico_10kpa
capacidade_campo <- 0.28951 + 0.103815 * z11
capacidade_campo
ponto_murcha_permanente <- 0.214008 + 0.0862945 * z13
ponto_murcha_permanente
sessionInfo()

