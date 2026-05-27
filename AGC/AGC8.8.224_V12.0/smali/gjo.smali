.class public final Lgjo;
.super Ljava/lang/Object;

# interfaces
.implements Lgam;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lken;

.field private final c:Lglt;

.field private final d:Ljvs;

.field private final e:Lggm;

.field private final f:Lgjy;

.field private final g:Lkbc;

.field private final h:Lkfh;

.field private final i:Ldhi;

.field private final j:Ljuf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/commands/PckSingleFlashHdrPlusImageCaptureCommand"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgjo;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lken;Lglt;Ljvs;Lggm;Lkbc;Lgjy;Ldhi;Ljuf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgjo;->b:Lken;

    iput-object p2, p0, Lgjo;->c:Lglt;

    iput-object p3, p0, Lgjo;->d:Ljvs;

    iput-object p4, p0, Lgjo;->e:Lggm;

    iput-object p5, p0, Lgjo;->g:Lkbc;

    iput-object p6, p0, Lgjo;->f:Lgjy;

    iput-object p7, p0, Lgjo;->i:Ldhi;

    iput-object p8, p0, Lgjo;->j:Ljuf;

    invoke-static {}, Lkfh;->a()Lkff;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lkff;->b(I)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lkff;->c(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lkff;->e(I)V

    invoke-virtual {p1, p2}, Lkff;->d(Z)V

    invoke-virtual {p1}, Lkff;->a()Lkfh;

    move-result-object p1

    iput-object p1, p0, Lgjo;->h:Lkfh;

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Lgjo;->d:Ljvs;

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 1

    invoke-static {}, Lfwt;->e()Lfwn;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lgal;Lgkr;)V
    .locals 10

    const-string v0, "Image capture failed. Aborting capture!"

    const-string v1, "Error capturing image."

    iget-object v2, p0, Lgjo;->c:Lglt;

    invoke-interface {v2}, Lglt;->a()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lgjo;->g:Lkbc;

    const-string v4, "pckFlashHdr#sessionAnd3A"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lgjo;->b:Lken;

    invoke-interface {v5}, Lken;->d()Lker;

    move-result-object v5
    :try_end_0
    .catch Ldog; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget-object v6, p0, Lgjo;->e:Lggm;

    iget-object v7, p0, Lgjo;->h:Lkfh;

    invoke-virtual {v6, v5, v7}, Lggm;->b(Lker;Lkfh;)Lfub;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v7, p2, Lgkr;->d:Ljava/lang/Object;

    check-cast v7, Lfte;

    iget-object v7, v7, Lfte;->g:Ljwb;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v7, p0, Lgjo;->g:Lkbc;

    const-string v8, "pckFlashHdr#submitCaptureRequest"

    invoke-interface {v7, v8}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {v5}, Lker;->c()Lkem;

    move-result-object v7

    move-object v8, v2

    check-cast v8, Lkgq;

    invoke-interface {v7, v8}, Lkem;->b(Lkgq;)V

    iget-object v8, p0, Lgjo;->i:Ldhi;

    invoke-static {v8, v7}, Lemq;->f(Ldhi;Lkem;)V

    invoke-interface {v7}, Lkem;->a()Lkfz;

    move-result-object v7

    invoke-interface {v5, v7}, Lker;->f(Lkfz;)Lkgn;

    move-result-object v7

    iget-object v8, p2, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v8}, Lfzz;->c()Lfzy;

    move-result-object v8

    invoke-interface {v8}, Lfzy;->h()V

    invoke-interface {p1}, Lgal;->close()V

    invoke-interface {v6}, Lfub;->close()V

    invoke-interface {v5}, Lker;->close()V

    iget-object v8, p0, Lgjo;->g:Lkbc;

    const-string v9, "pckFlashHdr#getFrame"

    invoke-interface {v8, v9}, Lkbc;->g(Ljava/lang/String;)V

    check-cast v2, Lkgq;

    invoke-virtual {v7, v2}, Lkgn;->a(Lkgq;)Lkeb;

    move-result-object v2

    invoke-virtual {v7}, Lkgn;->close()V

    if-eqz v2, :cond_0

    invoke-static {v2}, Lkfg;->y(Lkeb;)V

    iget-object v7, p0, Lgjo;->g:Lkbc;

    const-string v8, "pckFlashHdr#process"

    invoke-interface {v7, v8}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v7, p0, Lgjo;->f:Lgjy;

    invoke-static {v2}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v2

    sget-object v8, Lgjn;->a:Lgjn;

    invoke-virtual {v7, v2, v8, p2}, Lgjy;->i(Ljava/util/List;Lgal;Lgkr;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v6}, Lfub;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v5}, Lker;->close()V
    :try_end_4
    .catch Ldog; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-nez v4, :cond_2

    sget-object v2, Lgjo;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const/16 v4, 0xb0b

    invoke-static {v2, v1, v4}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v1, p2, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v1}, Lfzz;->f()V

    iget-object p2, p2, Lgkr;->c:Ljava/lang/Object;

    iget-object v1, p0, Lgjo;->j:Ljuf;

    invoke-virtual {v1}, Ljuf;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ldoe;

    invoke-direct {v0, v3}, Ldoe;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v0}, Lgxl;->w(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    sget-object v1, Ligh;->a:Ligf;

    new-instance v2, Ldog;

    invoke-direct {v2, v0}, Ldog;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1, v2}, Lgxl;->B(Ligf;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    invoke-interface {p1}, Lgal;->close()V

    iget-object p1, p0, Lgjo;->g:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_3

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-interface {v6}, Lfub;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v6

    :try_start_6
    invoke-static {v2, v6}, Lgky;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v2

    :goto_3
    :try_start_7
    invoke-interface {v5}, Lker;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v5

    :try_start_8
    invoke-static {v2, v5}, Lgky;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    throw v2
    :try_end_8
    .catch Ldog; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v2

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_6
    move-exception v2

    :goto_5
    if-nez v4, :cond_4

    sget-object v4, Lgjo;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    const/16 v5, 0xb0d

    invoke-static {v4, v1, v5}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v1, p2, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v1}, Lfzz;->f()V

    iget-object p2, p2, Lgkr;->c:Ljava/lang/Object;

    iget-object v1, p0, Lgjo;->j:Ljuf;

    invoke-virtual {v1}, Ljuf;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ldoe;

    invoke-direct {v0, v3}, Ldoe;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v0}, Lgxl;->w(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_3
    sget-object v1, Ligh;->a:Ligf;

    new-instance v3, Ldog;

    invoke-direct {v3, v0}, Ldog;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1, v3}, Lgxl;->B(Ligf;Ljava/lang/Throwable;)V

    :cond_4
    :goto_6
    invoke-interface {p1}, Lgal;->close()V

    iget-object p1, p0, Lgjo;->g:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    throw v2

    :catch_1
    move-exception v0

    :goto_7
    if-nez v4, :cond_2

    sget-object v2, Lgjo;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const/16 v3, 0xb0c

    invoke-static {v2, v1, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v1, p2, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v1}, Lfzz;->f()V

    iget-object p2, p2, Lgkr;->c:Ljava/lang/Object;

    iget-object v1, p0, Lgjo;->j:Ljuf;

    invoke-virtual {v1}, Ljuf;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ldoe;

    invoke-direct {v1, v0}, Ldoe;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Lgxl;->w(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_5
    sget-object v1, Ligh;->a:Ligf;

    invoke-interface {p2, v1, v0}, Lgxl;->B(Ligf;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method
