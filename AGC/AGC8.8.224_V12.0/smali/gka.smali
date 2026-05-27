.class public abstract Lgka;
.super Ljava/lang/Object;

# interfaces
.implements Lgam;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lgnk;

.field private final c:Lgam;

.field private final d:Ljava/util/Set;

.field private final e:Lkbc;

.field private final f:Lghx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/commands/PckZslImageCaptureCommandBase"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgka;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lgnk;Lgam;Ljava/util/Set;Lkbc;Lghx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgka;->b:Lgnk;

    iput-object p2, p0, Lgka;->c:Lgam;

    iput-object p3, p0, Lgka;->d:Ljava/util/Set;

    iput-object p4, p0, Lgka;->e:Lkbc;

    iput-object p5, p0, Lgka;->f:Lghx;

    return-void
.end method

.method protected static final e(Ljava/util/List;)V
    .locals 1

    check-cast p0, Lmvv;

    invoke-virtual {p0}, Lmvv;->s()Lnad;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkeb;

    invoke-interface {v0}, Lkeb;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final f(Lgam;Ljava/util/List;Lgal;Lgkr;)V
    .locals 0

    invoke-static {p1}, Lgka;->e(Ljava/util/List;)V

    iget-object p1, p3, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->k()Lhjc;

    move-result-object p1

    invoke-interface {p1}, Lhjc;->f()V

    iget-object p1, p3, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {p1}, Lfzz;->h()V

    invoke-interface {p0, p2, p3}, Lgam;->c(Lgal;Lgkr;)V

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Lgka;->c:Lgam;

    invoke-interface {v0}, Lgam;->a()Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 1

    iget-object v0, p0, Lgka;->d:Ljava/util/Set;

    invoke-static {v0}, Llyh;->C(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lfwt;->c(Ljava/util/List;)Lfwn;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public c(Lgal;Lgkr;)V
    .locals 7

    const-string v0, "Final"

    iget-object v1, p0, Lgka;->e:Lkbc;

    const-string v2, "pckZsl#lockBuffer"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lgka;->b:Lgnk;

    invoke-interface {v1}, Lgnk;->a()Lgnj;

    move-result-object v1

    iget-object v2, p0, Lgka;->b:Lgnk;

    const-string v3, "Initial"

    invoke-interface {v2, v3}, Lgnk;->l(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lgka;->e:Lkbc;

    const-string v3, "pckZsl#getFrames"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v2, p0, Lgka;->b:Lgnk;

    invoke-interface {v2}, Lgnk;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Lgnj;->a()V

    iget-object v3, p0, Lgka;->e:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    iget-object v3, p2, Lgkr;->c:Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lgxl;->C(Z)V

    move-object v3, v2

    check-cast v3, Lmyu;

    iget v3, v3, Lmyu;->c:I

    if-gtz v3, :cond_0

    sget-object v0, Lgka;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v3, 0xb44

    invoke-interface {v0, v3}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v3, "Can\'t execute command, not enough ZSL images"

    invoke-interface {v0, v3}, Lnah;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lgka;->c:Lgam;

    invoke-static {v0, v2, p1, p2}, Lgka;->f(Lgam;Ljava/util/List;Lgal;Lgkr;)V

    goto/16 :goto_2

    :cond_0
    iget-object v3, p0, Lgka;->e:Lkbc;

    const-string v5, "pckHdrZsl#captureIndicator"

    invoke-interface {v3, v5}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v3, p2, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v3}, Lfzz;->d()Lfzy;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p2, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v3}, Lfzz;->c()Lfzy;

    move-result-object v3

    invoke-interface {v3}, Lfzy;->h()V

    :cond_1
    iget-object v3, p0, Lgka;->e:Lkbc;

    const-string v5, "pckZsl#afMetadata"

    invoke-interface {v3, v5}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v3, p0, Lgka;->f:Lghx;

    iget-object v5, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Lghx;->b(Lgxl;)V

    iget-object v3, p0, Lgka;->e:Lkbc;

    const-string v5, "pckZsl#filterFrames"

    invoke-interface {v3, v5}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v3, p0, Lgka;->b:Lgnk;

    invoke-interface {v3, v2}, Lgnk;->h(Ljava/util/List;)Lmvv;

    move-result-object v2

    iget-object v3, p0, Lgka;->e:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lgka;->e:Lkbc;

    const-string v5, "pckZsl#processZslFrames"

    invoke-interface {v3, v5}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1, p2}, Lgka;->d(Ljava/util/List;Lgal;Lgkr;)Z

    move-result v3
    :try_end_1
    .catch Ldog; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lgka;->e:Lkbc;

    invoke-interface {v4}, Lkbc;->f()V

    iget-object v4, p0, Lgka;->b:Lgnk;

    invoke-interface {v4, v0}, Lgnk;->l(Ljava/lang/String;)V

    if-nez v3, :cond_4

    iget-object v0, p0, Lgka;->c:Lgam;

    :goto_0
    invoke-static {v0, v2, p1, p2}, Lgka;->f(Lgam;Ljava/util/List;Lgal;Lgkr;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_3
    instance-of v5, v3, Ldod;

    if-eqz v5, :cond_2

    sget-object v4, Lgka;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    invoke-interface {v4, v3}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const/16 v5, 0xb43

    invoke-interface {v4, v5}, Lnah;->G(I)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const-string v5, "Aborted main ZSL shot, not executing fallback"

    invoke-interface {v4, v5}, Lnah;->o(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    sget-object v5, Lgka;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->b()Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    invoke-interface {v5, v3}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    const/16 v6, 0xb42

    invoke-interface {v5, v6}, Lnah;->G(I)Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    const-string v6, "Error executing main ZSL command, executing fallback"

    invoke-interface {v5, v6}, Lnah;->o(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    iget-object v5, p0, Lgka;->e:Lkbc;

    invoke-interface {v5}, Lkbc;->f()V

    iget-object v5, p0, Lgka;->b:Lgnk;

    invoke-interface {v5, v0}, Lgnk;->l(Ljava/lang/String;)V

    if-eqz v4, :cond_3

    iget-object v0, p0, Lgka;->c:Lgam;

    goto :goto_0

    :cond_3
    iget-object p1, p2, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {p1}, Lfzz;->f()V

    iget-object p1, p2, Lgkr;->c:Ljava/lang/Object;

    sget-object p2, Ligh;->a:Ligf;

    invoke-interface {p1, p2, v3}, Lgxl;->B(Ligf;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :goto_2
    invoke-interface {v1}, Lgnj;->a()V

    return-void

    :goto_3
    :try_start_5
    iget-object v4, p0, Lgka;->e:Lkbc;

    invoke-interface {v4}, Lkbc;->f()V

    iget-object v4, p0, Lgka;->b:Lgnk;

    invoke-interface {v4, v0}, Lgnk;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lgka;->c:Lgam;

    invoke-static {v0, v2, p1, p2}, Lgka;->f(Lgam;Ljava/util/List;Lgal;Lgkr;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    invoke-interface {v1}, Lgnj;->a()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method protected abstract d(Ljava/util/List;Lgal;Lgkr;)Z
.end method
