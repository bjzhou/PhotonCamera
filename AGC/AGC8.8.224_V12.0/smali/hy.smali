.class public final Lhy;
.super Lhh;


# instance fields
.field final synthetic d:Lic;


# direct methods
.method public constructor <init>(Lic;Landroid/content/Context;Lhq;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lhy;->d:Lic;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lhh;-><init>(Landroid/content/Context;Lgw;Landroid/view/View;Z)V

    iget-object p2, p3, Lhq;->k:Lgy;

    invoke-virtual {p2}, Lgy;->o()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Lic;->g:Lia;

    if-nez p2, :cond_0

    iget-object p2, p1, Lic;->f:Lhl;

    check-cast p2, Landroid/view/View;

    :cond_0
    iput-object p2, p0, Lhh;->a:Landroid/view/View;

    :cond_1
    iget-object p1, p1, Lic;->l:Lfc;

    invoke-virtual {p0, p1}, Lhh;->e(Lhi;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lhy;->d:Lic;

    const/4 v1, 0x0

    iput-object v1, v0, Lic;->j:Lhy;

    invoke-super {p0}, Lhh;->c()V

    return-void
.end method
