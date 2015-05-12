

   select co.CT_Num, '411'+co.CT_Num as compteclient, 'Client' as Type, 'Pas Bloqué' as Status,CT_classement as industry, 'Siège' as descradress,CT_adresse as adresse,CT_complement as adresse2,CT_ville, CT_codepostal, CT_telephone, CT_telecopie, CT_Intitule N_Reglement, R_Intitule, RT_NbJour, bq.BT_Adresse, (bq.BT_Banque +bq.BT_Guichet+BT_Compte+ bq.BT_Cle) as rib, '100' as pourcregl
from F_COMPTET co
left join F_REGLEMENTT tt on tt.CT_Num = co.CT_Num
left join dbo.P_REGLEMENT re on re.cbIndice = tt.N_Reglement
left join F_BANQUET bq on co.CT_Num = bq.CT_Num

WHERE CT_Num NOT IN(
   SELECT INTERNALACCOUNTNO  FROM sysdba.ACCOUNT where EXTERNALACCOUNTNO = 'CDO')
   
   
      
 SELECT * FROM SRVPCL02.COMPTOIR.dbo.F_COMPTET WHERE CT_Num NOT IN(
   SELECT INTERNALACCOUNTNO  FROM sysdba.ACCOUNT where EXTERNALACCOUNTNO = 'CDO')
     