.class public final Lgju;
.super Lgka;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lgil;

.field private final c:Lfyz;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/commands/PckZslBurstImageCaptureCommand"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgju;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lgil;Lgam;Ljava/util/Set;Lfyz;ILkbc;Lghx;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lgka;-><init>(Lgnk;Lgam;Ljava/util/Set;Lkbc;Lghx;)V

    iput-object p1, p0, Lgju;->b:Lgil;

    iput-object p4, p0, Lgju;->c:Lfyz;

    iput p5, p0, Lgju;->d:I

    return-void
.end method


# virtual methods
.method protected final d(Ljava/util/List;Lgal;Lgkr;)Z
    .locals 10

    :try_start_0
    iget-object v0, p0, Lgju;->c:Lfyz;

    invoke-interface {v0, p3}, Lfyz;->b(Lgkr;)Lfyy;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    :try_start_1
    sget-object v2, Lgju;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0xb2c

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v3, "Cannot acquire image saver session."

    invoke-interface {v2, v3}, Lnah;->o(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    invoke-interface {p2}, Lgal;->close()V

    invoke-static {p1}, Lgju;->e(Ljava/util/List;)V

    return v1

    :cond_0
    :try_start_2
    invoke-interface {p2}, Lgal;->close()V

    move-object v2, p1

    check-cast v2, Lmyu;

    iget v2, v2, Lmyu;->c:I

    move-object v2, p1

    check-cast v2, Lmvv;

    invoke-virtual {v2}, Lmvv;->s()Lnad;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkeb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v5, p0, Lgju;->b:Lgil;

    iget v6, p0, Lgju;->d:I

    iget-object v5, v5, Lgil;->b:Lmvf;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmsy;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v7, :cond_2

    :try_start_4
    invoke-static {v4}, Lkfg;->y(Lkeb;)V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkfj;

    invoke-interface {v4, v7}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v9, Lkoy;

    invoke-interface {v7}, Lkfj;->c()Lkll;

    invoke-direct {v9, v8}, Lkoy;-><init>(Lkpb;)V

    invoke-virtual {v6, v9}, Lmvq;->g(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_5
    sget-object v5, Lgil;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->b()Lnaz;

    move-result-object v5

    const-string v7, "Error retrieving the images from Frame %s"

    invoke-interface {v4}, Lkeb;->b()Lkeg;

    move-result-object v8

    const/16 v9, 0xa89

    invoke-static {v5, v7, v8, v9}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :cond_2
    invoke-virtual {v6}, Lmvq;->f()Lmvv;

    move-result-object v5

    invoke-interface {v4}, Lkeb;->c()Lkou;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v6, :cond_3

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpb;

    invoke-static {v6}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v5

    invoke-interface {p3, v3, v5}, Lfyy;->a(Lkpb;Lnou;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v3, 0x1

    :cond_3
    :try_start_6
    invoke-interface {v4}, Lkeb;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v4}, Lkeb;->close()V

    throw v2

    :cond_4
    if-nez v3, :cond_5

    sget-object v2, Lgju;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0xb2b

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v3, "No images found."

    invoke-interface {v2, v3}, Lnah;->o(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-interface {p3}, Lfyy;->close()V

    goto/16 :goto_0

    :cond_5
    invoke-interface {p3}, Lfyy;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-interface {p2}, Lgal;->close()V

    invoke-static {p1}, Lgju;->e(Ljava/util/List;)V

    return v0

    :catchall_1
    move-exception v2

    if-eqz p3, :cond_6

    :try_start_8
    invoke-interface {p3}, Lfyy;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p3

    :try_start_9
    const-class v3, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v1

    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catch_1
    move-exception p3

    :cond_6
    :goto_3
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception p3

    invoke-interface {p2}, Lgal;->close()V

    invoke-static {p1}, Lgju;->e(Ljava/util/List;)V

    goto :goto_5

    :goto_4
    throw p3

    :goto_5
    goto :goto_4
.end method
