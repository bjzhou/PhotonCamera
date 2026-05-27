.class public final Lcpe;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Lcrt;

.field public final b:Ldhi;

.field public final c:Lcxb;

.field public final d:Lfme;

.field public final e:Lkog;

.field public f:Lcsc;

.field public final g:Ljava/lang/Object;

.field public final h:Ldja;

.field public final i:Ldja;

.field public final j:Lcvr;

.field public final k:Ldja;

.field public final l:Ligo;

.field private final m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldja;Lcvr;Lcrt;Ldhi;Ldja;Ldja;Ligo;Lcxb;Lfme;Lkog;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p12, Ljava/lang/Object;

    invoke-direct {p12}, Ljava/lang/Object;-><init>()V

    iput-object p12, p0, Lcpe;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcpe;->m:Landroid/content/Context;

    iput-object p2, p0, Lcpe;->i:Ldja;

    iput-object p3, p0, Lcpe;->j:Lcvr;

    iput-object p4, p0, Lcpe;->a:Lcrt;

    iput-object p5, p0, Lcpe;->b:Ldhi;

    iput-object p6, p0, Lcpe;->k:Ldja;

    iput-object p7, p0, Lcpe;->h:Ldja;

    iput-object p8, p0, Lcpe;->l:Ligo;

    iput-object p9, p0, Lcpe;->c:Lcxb;

    iput-object p10, p0, Lcpe;->d:Lfme;

    iput-object p11, p0, Lcpe;->e:Lkog;

    return-void
.end method

.method public static c(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public final a()Ljwu;
    .locals 1

    iget-object v0, p0, Lcpe;->d:Lfme;

    invoke-virtual {v0}, Lfme;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljwu;->j:Ljwu;

    return-object v0

    :cond_0
    sget-object v0, Ljwu;->i:Ljwu;

    return-object v0
.end method

.method public final b(Ljws;Ljwu;Lklv;Lcwx;)Lmvv;
    .locals 2

    new-instance v0, Lmvq;

    invoke-direct {v0}, Lmvq;-><init>()V

    invoke-virtual {p1}, Ljws;->e()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcpe;->i:Ldja;

    iget-object v1, p0, Lcpe;->m:Landroid/content/Context;

    invoke-virtual {p1, v1, p3}, Ldja;->m(Landroid/content/Context;Lklv;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcwx;->e:Lcwx;

    invoke-virtual {p4, p1}, Lcwx;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcwx;->c:Lcwx;

    invoke-virtual {p4, p1}, Lcwx;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcpe;->b:Ldhi;

    sget-object p3, Ldgu;->G:Ldhj;

    invoke-interface {p1, p3}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ljwu;->i:Ljwu;

    invoke-virtual {v0, p1}, Lmvq;->g(Ljava/lang/Object;)V

    sget-object p1, Ljwu;->k:Ljwu;

    invoke-virtual {v0, p1}, Lmvq;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmvq;->f()Lmvv;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Lmvq;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmvq;->f()Lmvv;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lcpe;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcpe;->f:Lcsc;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(Ldne;Ljws;Ljwu;Lcwx;)Lmvv;
    .locals 2

    new-instance v0, Lmvq;

    invoke-direct {v0}, Lmvq;-><init>()V

    invoke-virtual {p2}, Ljws;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmvq;->f()Lmvv;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v1, Lcwx;->e:Lcwx;

    invoke-virtual {p4, v1}, Lcwx;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    sget-object p1, Ljws;->c:Ljws;

    invoke-virtual {v0, p1}, Lmvq;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmvq;->f()Lmvv;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Ljws;->d()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p1, Ljws;->f:Ljws;

    invoke-virtual {v0, p1}, Lmvq;->g(Ljava/lang/Object;)V

    iget-object p1, p0, Lcpe;->b:Ldhi;

    sget-object p2, Ldgu;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->e()V

    invoke-virtual {v0}, Lmvq;->f()Lmvv;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p2, p0, Lcpe;->b:Ldhi;

    sget-object p4, Ldho;->Z:Ldhj;

    invoke-interface {p2, p4}, Ldhi;->k(Ldhj;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Ljws;->a:Ljws;

    invoke-virtual {p1, p2, p3}, Ldne;->p(Ljws;Ljwu;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Ljwu;->d()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcpe;->b:Ldhi;

    sget-object p4, Ldgu;->G:Ldhj;

    invoke-interface {p2, p4}, Ldhi;->l(Ldhj;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcpe;->b:Ldhi;

    sget-object p4, Ldgu;->H:Ldhj;

    invoke-interface {p2, p4}, Ldhi;->l(Ldhj;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    sget-object p2, Ljws;->a:Ljws;

    invoke-virtual {v0, p2}, Lmvq;->g(Ljava/lang/Object;)V

    :cond_4
    sget-object p2, Ljws;->c:Ljws;

    invoke-virtual {v0, p2}, Lmvq;->g(Ljava/lang/Object;)V

    iget-object p2, p0, Lcpe;->b:Ldhi;

    sget-object p4, Ldho;->ba:Ldhj;

    invoke-interface {p2, p4}, Ldhi;->k(Ldhj;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Ljws;->d:Ljws;

    invoke-virtual {p1, p2, p3}, Ldne;->p(Ljws;Ljwu;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p3}, Ljwu;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcpe;->b:Ldhi;

    sget-object p2, Ldgu;->G:Ldhj;

    invoke-interface {p1, p2}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    sget-object p1, Ljws;->d:Ljws;

    invoke-virtual {v0, p1}, Lmvq;->g(Ljava/lang/Object;)V

    :cond_6
    iget-object p1, p0, Lcpe;->b:Ldhi;

    sget-object p2, Ldgu;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->e()V

    invoke-virtual {v0}, Lmvq;->f()Lmvv;

    move-result-object p1

    return-object p1
.end method
