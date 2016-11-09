program installux;



uses
  Forms,
  ValorCobrado in 'ValorCobrado.pas' {frmValor},
  aniversarios in 'aniversarios.pas' {frmAniversarios},
  arquitetos in 'arquitetos.pas' {frmArquitetos},
  clientes in 'clientes.pas' {frmClientes},
  efetiva in 'efetiva.pas' {frmEfetiva},
  Estoque in 'Estoque.pas' {frmEstoque},
  filtraorcamento in 'filtraorcamento.pas' {frmFiltraOrcamentos},
  grupos in 'grupos.pas' {frmGrupos},
  imprimeOrco in 'imprimeOrco.pas' {frmImporc},
  orcamentos in 'orcamentos.pas' {frmOrcamentos},
  principal in 'principal.pas' {frmPrincipal},
  produtos in 'produtos.pas' {frmProdutos},
  qrpOrcamento in 'qrpOrcamento.pas' {qrpOrcto: TQuickRep},
  relsaldos in 'relsaldos.pas' {frmRelSaldos},
  relsaldos1 in 'relsaldos1.pas' {qrpRelSaldos: TQuickRep},
  Reajuste in 'Reajuste.pas' {frmReajuste},
  calculasaldos in 'calculasaldos.pas' {frmCalculaSaldos},
  FORNECEDORES in 'FORNECEDORES.pas' {frmFornecedores},
  relservico in 'relservico.pas' {frmRelServicos},
  servicos in 'servicos.pas' {frmServicos},
  servicosdocliente in 'servicosdocliente.pas' {frmServicosCliente},
  relpendencias in 'relpendencias.pas' {frmRelPendencias},
  relpro in 'relpro.pas' {frmRelPro},
  funcionarios in 'funcionarios.pas' {frmFuncionarios},
  ambientes in 'ambientes.pas' {frmAmbientes},
  imprimeOS in 'imprimeOS.pas' {frmImprimeOS},
  calculaficha in 'calculaficha.pas' {frmCalculaFicha},
  relBarras in 'relBarras.pas' {frmRelBarras},
  OS in 'OS.pas' {frmOS},
  confirmaos in 'confirmaos.pas' {frmConfirmaOS},
  pededata in 'pededata.pas' {frmData},
  relfunc in 'relfunc.pas' {frmRelFunc},
  RecalcOS in 'RecalcOS.pas' {frmRecalcOS},
  historicodocliente in 'historicodocliente.pas' {frmHistorico},
  RelMotEstoque in 'RelMotEstoque.pas' {frmRelMovEstoque},
  procuraproduto in 'procuraproduto.pas' {frmProcuraProdutos},
  impficha in 'impficha.pas' {frmImpficha},
  historicodoarquiteto in 'historicodoarquiteto.pas' {frmHistoricoArq},
  conspendcli in 'conspendcli.pas' {frmPendCli},
  pedefuncionario in 'pedefuncionario.pas' {frmPedeFuncionario},
  recibosdocliente in 'recibosdocliente.pas' {frmRecibosCliente},
  recibos in 'recibos.pas' {frmRecibos},
  baixarecibo in 'baixarecibo.pas' {frmBaixaRecibo},
  relpendcli in 'relpendcli.pas' {frmRelPendcli},
  recibosdoarquiteto in 'recibosdoarquiteto.pas' {frmRecibosArquiteto},
  ambcli in 'ambcli.pas' {frmAmbcli},
  relservgrupos in 'relservgrupos.pas' {frmRelServGrupos},
  relRecibosVcto in 'relRecibosVcto.pas' {frmRelRecibosVcto},
  relrecibospgto in 'relrecibospgto.pas' {frmRelRecibosPgto},
  etiquetas in 'etiquetas.pas' {frmEtiqueta},
  relservidodata in 'relservidodata.pas' {frmRelServicosData},
  uRelOsAberto in 'uRelOsAberto.pas' {frmRelOsAberto},
  orctoscli in 'orctoscli.pas' {frmOrctosCli},
  impficharecibo in 'impficharecibo.pas' {frmImpfichaRecibo},
  parcelarecibo in 'parcelarecibo.pas' {frmParcelaRecibo},
  observacoes in 'observacoes.pas' {frmObs},
  datamodulo in 'datamodulo.pas' {dmInstallux: TDataModule},
  empresa in 'empresa.pas' {frmEmpresa},
  relPendArq in 'relPendArq.pas' {frmPendArq},
  verficha in 'verficha.pas' {frmVerFicha},
  sel_orcamento in 'sel_orcamento.pas' {frmSelOrcto},
  ConfDB in 'ConfDB.pas' {frmConfDB},
  prodEstoque in 'prodEstoque.pas' {frmProdEstoque},
  u_locais in 'u_locais.pas' {frmLocais},
  transf_estoque in 'transf_estoque.pas' {frmTransfEstoque},
  relSaldosLocal in 'relSaldosLocal.pas' {frmRelSaldosLocal},
  relAniv in 'relAniv.pas' {frmRelAniv},
  pesq_os in 'pesq_os.pas' {frmPesqOs},
  Efuncoes in '..\Geral\Efuncoes.pas';

{$R *.RES}


begin
  Application.Initialize;
  Application.Title := 'Sistema InstalLux';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmInstallux, dmInstallux);
  Application.Run;
end.

