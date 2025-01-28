M1
> moyenneAbs <- mean(resultats_pres2022$Part_abs)
> paste("L'abstention moyenne est de ", round(moyenneAbs, digits=2), "%")
[1] "L'abstention moyenne est de  24.12 %"

M2
> voteJadot2040 <- resultats_pres2022[resultats_pres2022$Part_Jadot > 20 & resultats_pres2022$Part_Jadot < 40,]
> View((voteJadot2040))

M4
> extract_saintes <- resultats_pres2022[resultats_pres2022$Libelle == "Saintes",]
> write.csv(extract_saintes, "C:\1_LUPSIG\r\donnees\saintes.csv")

M4
> voteSaintes_Candidats1_3 <- resultats_pres2022[resultats_pres2022$Libelle == "Saintes",][ ,c("Part_Macron", "Part_LePen", "Part_Melenchon")]
> View(voteSaintes_Candidats1_3_2)
> sd(voteSaintes_Candidats1_3$Part_Macron)
[1] 4.587577
> sd(voteSaintes_Candidats1_3$Part_LePen)
[1] 4.207913
> sd(voteSaintes_Candidats1_3$Part_Melenchon)
[1] 3.846068

M5
> voteCAndidats1_4$colonne <- ifelse(voteCAndidats1_4$Part_Macron > 30, "MacronSup30", NA)
> View(voteCAndidats1_4)

M6
> col1 <- c("Hidalgo", "Melenchon", "Jadot")
> col2 <- c(mean(resultats_pres2022$Part_Hidalgo), mean(resultats_pres2022$Part_Melenchon), mean(resultats_pres2022$Part_Jadot))
> data <- data.frame(group=col1, value=col2)
> ggplot(data, aes(x="", y=value , fill=group)) +
+     geom_bar(stat="identity", width=1) +
+     geom_col() +
+     coord_polar("y", start=0) + # coord_polar permet de convertir des barres en cercles
+     geom_text(aes(label = round(value, digits=2)), position = position_stack(vjust = 0.5)) +
+     scale_fill_manual(values = c("#0a4", "#bb4", "#002"))

M12
> Part_Jadot <- resultats_pres2022$Part_Jadot
> Part_Melenchon <- resultats_pres2022$Part_Melenchon
> paste("Corrélation Jadot/Mélenchon :",round(cor(Part_Jadot, Part_Melenchon),2))
[1] "Corrélation Jadot/Mélenchon : 0.02"

> Part_Macron <- resultats_pres2022$Part_Macron
> Part_Pecresse <- resultats_pres2022$Part_Pecresse
> paste("Corrélation Jadot/Pecresse :",round(cor(Part_Macron, Part_Pecresse),2))
[1] "Corrélation Jadot/Pecresse : 0.28"

