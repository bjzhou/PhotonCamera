.class public final Lcvk;
.super Ljava/lang/Object;

# interfaces
.implements Lcqv;


# instance fields
.field private final a:Ldhi;

.field private final b:Lbkc;


# direct methods
.method public constructor <init>(Lbkc;Ldhi;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvk;->b:Lbkc;

    iput-object p2, p0, Lcvk;->a:Ldhi;

    return-void
.end method


# virtual methods
.method public final a()Lika;
    .locals 1

    sget-object v0, Lika;->i:Lika;

    return-object v0
.end method

.method public final b()Lmqp;
    .locals 2

    iget-object v0, p0, Lcvk;->b:Lbkc;

    invoke-virtual {v0}, Lbkc;->e()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :cond_0
    invoke-static {v0}, Lcdg;->h(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcdg;->j(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lklv;->a:Lklv;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcvk;->a:Ldhi;

    sget-object v1, Ldho;->X:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lcvk;->a:Ldhi;

    sget-object v1, Ldgu;->T:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 3

    iget-object v0, p0, Lcvk;->b:Lbkc;

    invoke-virtual {v0}, Lbkc;->e()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "include_location_in_exif"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
