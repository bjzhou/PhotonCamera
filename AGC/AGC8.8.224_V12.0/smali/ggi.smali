.class public final synthetic Lggi;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# instance fields
.field public final synthetic a:Ljvs;

.field public final synthetic b:Ldhi;

.field public final synthetic c:Lebl;

.field public final synthetic d:Lika;

.field public final synthetic e:Lmrl;


# direct methods
.method public synthetic constructor <init>(Ljvs;Ldhi;Lebl;Lika;Lmrl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lggi;->a:Ljvs;

    iput-object p2, p0, Lggi;->b:Ldhi;

    iput-object p3, p0, Lggi;->c:Lebl;

    iput-object p4, p0, Lggi;->d:Lika;

    iput-object p5, p0, Lggi;->e:Lmrl;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lggi;->a:Ljvs;

    iget-object v1, p0, Lggi;->b:Ldhi;

    iget-object v2, p0, Lggi;->c:Lebl;

    iget-object v3, p0, Lggi;->d:Lika;

    iget-object v4, p0, Lggi;->e:Lmrl;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyp;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    sget-object v7, Lgyp;->a:Lgyp;

    if-eq v0, v7, :cond_0

    sget-object v7, Lgyp;->b:Lgyp;

    if-eq v0, v7, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v7, Ldhq;->ac:Ldhj;

    invoke-interface {v1, v7}, Ldhi;->l(Ldhj;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Ldhq;->aj:Ldhj;

    invoke-interface {v1, v7}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v2, Lebl;->b:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lika;->m:Lika;

    if-eq v3, v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    invoke-interface {v4}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
