.class Lfdt;
.super Lfdn;


# instance fields
.field final synthetic b:Lfdu;


# direct methods
.method public constructor <init>(Lfdu;)V
    .locals 0

    iput-object p1, p0, Lfdt;->b:Lfdu;

    invoke-direct {p0}, Lfdn;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lfdt;->b:Lfdu;

    iget-object v0, v0, Lfdu;->m:Lfdc;

    invoke-virtual {v0}, Lfdc;->c()V

    iget-object v0, p0, Lfdt;->b:Lfdu;

    invoke-virtual {v0}, Lfdu;->m()V

    iget-object v0, p0, Lfdt;->b:Lfdu;

    invoke-virtual {v0}, Lfdu;->l()V

    return-void
.end method

.method public bW()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lfdt;->b:Lfdu;

    iget-object v0, v0, Lfdu;->l:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    invoke-virtual {v0}, Lika;->name()Ljava/lang/String;

    iget-object v0, p0, Lfdt;->b:Lfdu;

    invoke-virtual {v0}, Lfdu;->k()V

    iget-object v0, p0, Lfdt;->b:Lfdu;

    iget-object v0, v0, Lfdu;->k:Lebl;

    invoke-virtual {v0}, Lebl;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfdt;->b:Lfdu;

    iget-object v0, v0, Lfdu;->h:Liff;

    invoke-interface {v0}, Liff;->M()V

    return-void

    :cond_0
    iget-object v0, p0, Lfdt;->b:Lfdu;

    iget-object v1, v0, Lfdu;->l:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lika;

    invoke-virtual {v1}, Lika;->ordinal()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    iget-object v0, v0, Lfdu;->h:Liff;

    invoke-interface {v0}, Liff;->N()V

    return-void

    :sswitch_0
    iget-object v0, v0, Lfdu;->h:Liff;

    invoke-interface {v0}, Liff;->U()V

    return-void

    :sswitch_1
    iget-object v0, v0, Lfdu;->h:Liff;

    invoke-interface {v0}, Liff;->T()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
