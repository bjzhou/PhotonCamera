.class public final Lib;
.super Lhh;


# instance fields
.field final synthetic d:Lic;


# direct methods
.method public constructor <init>(Lic;Landroid/content/Context;Lgw;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lib;->d:Lic;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Lhh;-><init>(Landroid/content/Context;Lgw;Landroid/view/View;Z)V

    const p2, 0x800005

    iput p2, p0, Lhh;->b:I

    iget-object p1, p1, Lic;->l:Lfc;

    invoke-virtual {p0, p1}, Lhh;->e(Lhi;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lib;->d:Lic;

    iget-object v0, v0, Lic;->c:Lgw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgw;->close()V

    :cond_0
    iget-object v0, p0, Lib;->d:Lic;

    const/4 v1, 0x0

    iput-object v1, v0, Lic;->i:Lib;

    invoke-super {p0}, Lhh;->c()V

    return-void
.end method
