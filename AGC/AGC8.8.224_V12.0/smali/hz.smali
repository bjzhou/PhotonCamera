.class final Lhz;
.super Lkq;


# instance fields
.field final synthetic a:Lia;


# direct methods
.method public constructor <init>(Lia;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lhz;->a:Lia;

    invoke-direct {p0, p2}, Lkq;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Lhn;
    .locals 1

    iget-object v0, p0, Lhz;->a:Lia;

    iget-object v0, v0, Lia;->a:Lic;

    iget-object v0, v0, Lic;->i:Lib;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lhh;->a()Lhf;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lhz;->a:Lia;

    iget-object v0, v0, Lia;->a:Lic;

    invoke-virtual {v0}, Lic;->m()Z

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lhz;->a:Lia;

    iget-object v0, v0, Lia;->a:Lic;

    iget-object v1, v0, Lic;->k:Lfvc;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lic;->k()Z

    const/4 v0, 0x1

    return v0
.end method
