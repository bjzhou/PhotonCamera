.class public Lgmo;
.super Ljava/lang/Object;

# interfaces
.implements Lebu;
.implements Lecm;
.implements Lecn;
.implements Lecw;


# static fields
.field private static final e:Lnak;


# instance fields
.field protected final a:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;

.field protected final b:Lkbc;

.field protected final c:Lgkf;

.field protected final d:Ldja;

.field private final f:Ldne;

.field private final g:Lcea;

.field private final h:Lkaf;

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Ljava/util/HashMap;

.field private final k:Lgue;

.field private final l:Lcvr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/payloadprocessor/DynamicDepthProcessor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgmo;->e:Lnak;

    return-void
.end method

.method public constructor <init>(Ldne;Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;Lgue;Lgkf;Lcea;Lgdd;Ldja;Ljava/util/concurrent/Executor;Lkbc;Lcvr;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p11, Ljava/util/HashMap;

    invoke-direct {p11}, Ljava/util/HashMap;-><init>()V

    iput-object p11, p0, Lgmo;->j:Ljava/util/HashMap;

    iput-object p1, p0, Lgmo;->f:Ldne;

    iput-object p2, p0, Lgmo;->a:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;

    iput-object p3, p0, Lgmo;->k:Lgue;

    iput-object p4, p0, Lgmo;->c:Lgkf;

    iput-object p5, p0, Lgmo;->g:Lcea;

    iget-object p1, p6, Lgdd;->b:Lkaf;

    iput-object p1, p0, Lgmo;->h:Lkaf;

    iput-object p7, p0, Lgmo;->d:Ldja;

    iput-object p8, p0, Lgmo;->i:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lgmo;->b:Lkbc;

    iput-object p10, p0, Lgmo;->l:Lcvr;

    return-void
.end method

.method private final l(Lgmp;Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;)V
    .locals 2

    iget-boolean v0, p1, Lgmp;->q:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;->close()V

    const/4 p2, 0x0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lgmo;->f:Ldne;

    iget-object v1, p1, Lgmp;->t:Lgkr;

    iget-object v1, v1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->h()Lgxy;

    move-result-object v1

    invoke-static {p2}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ldne;->c(Lgxy;Lmqp;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1}, Lgmp;->g()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    sget-object v0, Lgmo;->e:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p2}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 v0, 0xbd9

    invoke-interface {p2, v0}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string v0, "Trying to set a result for an already aborted shot."

    invoke-interface {p2, v0}, Lnah;->o(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lgmp;->g()V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final a(Leea;IJLkou;)V
    .locals 0

    iget-object p3, p1, Leea;->v:Lgkr;

    iget-object p3, p3, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p3}, Lgxl;->h()Lgxy;

    iget-object p3, p0, Lgmo;->j:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgmp;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lgmp;->l:Lnph;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Shot hasn\'t been started yet!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic b(Lhjg;Lebd;)V
    .locals 0

    return-void
.end method

.method public final c(Leea;Lecq;)V
    .locals 0

    iget-object p1, p1, Leea;->v:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgmo;->d(Lgxy;)V

    return-void
.end method

.method public final d(Lgxy;)V
    .locals 3

    sget-object v0, Lgmo;->e:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Shot has been aborted %s"

    const/16 v2, 0xbd3

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    iget-object v0, p0, Lgmo;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leea;

    iget-object v2, v1, Leea;->v:Lgkr;

    iget-object v2, v2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v2}, Lgxl;->h()Lgxy;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lgmo;->j:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgmp;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lgmo;->f:Ldne;

    iget-object v1, p1, Lgmp;->t:Lgkr;

    iget-object v1, v1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->h()Lgxy;

    move-result-object v1

    sget-object v2, Lmpx;->a:Lmpx;

    invoke-virtual {v0, v1, v2}, Ldne;->c(Lgxy;Lmqp;)V

    invoke-virtual {p1}, Lgmp;->b()V

    :cond_3
    return-void
.end method

.method public final e(Leea;Lkeb;)V
    .locals 11

    iget-object v0, p0, Lgmo;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgmp;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Lgmp;->c(Lkeb;)V

    iget v0, p1, Lgmp;->r:I

    add-int/lit8 v0, v0, -0x1

    iget-object p1, p1, Lgmp;->t:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->m()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-object v1, Lfnq;->p:Lfnq;

    invoke-virtual {p1, v1}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lgmo;->k:Lgue;

    invoke-virtual {v1, p2}, Lgue;->a(Lkeb;)Lgli;

    move-result-object p2

    invoke-virtual {p2}, Lgli;->d()Lkpb;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "payload_depth"

    aput-object v4, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const-string v0, "%s_%02d.pd"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lnbk;->a:Lnbc;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {p2}, Lkpb;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkpa;

    invoke-interface {v2}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    new-array v7, v6, [B

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-interface {p2}, Lkpb;->a()I

    move-result v8

    const/16 v9, 0x1003

    if-ne v8, v9, :cond_1

    invoke-interface {v2}, Lkpa;->getRowStride()I

    move-result v8

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lkpb;->c()I

    move-result v8

    invoke-interface {v2}, Lkpa;->getPixelStride()I

    move-result v9

    mul-int v8, v8, v9

    :goto_1
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v6, :cond_2

    invoke-virtual {p1, v7, v9, v8}, Ljava/io/OutputStream;->write([BII)V

    invoke-interface {v2}, Lkpa;->getRowStride()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    invoke-interface {p2}, Lkpb;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_4
    const-class v2, Ljava/lang/Throwable;

    const-string v5, "addSuppressed"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catch_0
    move-exception p1

    :goto_4
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :try_start_6
    sget-object v0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    sget-object v2, Lnbk;->a:Lnbc;

    const-string v3, "CAM_DynDepthUtils"

    invoke-interface {v0, v2, v3}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0x410

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v0, "IOException while saving Depth debug image %s"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :goto_5
    invoke-interface {p2}, Lkpb;->close()V

    throw p1

    :cond_4
    :goto_6
    return-void

    :cond_5
    invoke-interface {p2}, Lkeb;->close()V

    return-void
.end method

.method public final f(Leea;Lcom/google/googlex/gcam/BurstSpec;Lkou;)V
    .locals 9

    iget-object v0, p0, Lgmo;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lgmo;->j:Ljava/util/HashMap;

    new-instance v8, Lgmp;

    iget-object v2, p1, Leea;->v:Lgkr;

    iget-object v1, p0, Lgmo;->c:Lgkf;

    invoke-virtual {v1}, Lgkf;->a()Lebb;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lgmp;-><init>(Lgkr;Lebb;Lcom/google/googlex/gcam/BurstSpec;Lkou;[B[B)V

    invoke-virtual {v0, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lgmo;->f:Ldne;

    iget-object p1, p1, Leea;->v:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object p1

    invoke-virtual {p2, p1}, Ldne;->b(Lgxy;)V

    return-void
.end method

.method public final g(Lgxy;)V
    .locals 2

    iget-object v0, p0, Lgmo;->l:Lcvr;

    invoke-virtual {v0, p1}, Lcvr;->K(Lgxy;)Leeb;

    move-result-object p1

    invoke-virtual {p1, p0}, Leeb;->c(Lecn;)V

    new-instance v0, Lgnb;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lgnb;-><init>(Lgmo;I)V

    invoke-virtual {p1, v0}, Leeb;->a(Lecm;)V

    invoke-virtual {p1, p0}, Leeb;->f(Lecw;)V

    return-void
.end method

.method public final h(Leea;)V
    .locals 4

    iget-object v0, p0, Lgmo;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgmp;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lgmo;->i:Ljava/util/concurrent/Executor;

    new-instance v2, Lggh;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v0, p1, v3}, Lggh;-><init>(Lgmo;Lgmp;Leea;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Shot hasn\'t been started yet!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic i(Leea;)V
    .locals 0

    return-void
.end method

.method protected j(Lgli;Lgmp;)Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;
    .locals 11

    invoke-virtual {p1}, Lgli;->g()Lkpb;

    move-result-object v0

    invoke-virtual {p1}, Lgli;->d()Lkpb;

    move-result-object v1

    invoke-virtual {p2}, Lgmp;->g()V

    iget-object v2, p2, Lgmp;->t:Lgkr;

    iget-object v2, v2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v2}, Lgxl;->h()Lgxy;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lgmo;->d:Ldja;

    invoke-virtual {v2}, Ldja;->D()V

    :try_start_0
    iget-object v2, p2, Lgmp;->m:Lnph;

    invoke-virtual {v2}, Lnph;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v3, p0, Lgmo;->b:Lkbc;

    const-string v4, "ddepth#process"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    iget-object v6, p0, Lgmo;->h:Lkaf;

    iget-object v4, p0, Lgmo;->g:Lcea;

    invoke-virtual {v4}, Lcea;->d()Lkab;

    move-result-object v4

    invoke-virtual {v4}, Lkab;->ordinal()I

    move-result v7

    iget-object p2, p2, Lgmp;->s:Lebb;

    iget-boolean v9, p2, Lebb;->f:Z

    iget-object p1, p1, Lgli;->a:Lkeb;

    const/4 v8, 0x0

    invoke-interface {p1}, Lkeb;->c()Lkou;

    move-result-object v10

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;-><init>(Lkaf;IZZLkou;)V

    iget-object p1, p0, Lgmo;->a:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;

    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->b(Lkpb;Lkpb;Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;Lcom/google/googlex/gcam/ShotMetadata;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgmo;->b:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    invoke-interface {v1}, Lkpb;->close()V

    invoke-interface {v0}, Lkpb;->close()V

    return-object v3

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lgmo;->b:Lkbc;

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lgmo;->b:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    invoke-interface {v1}, Lkpb;->close()V

    invoke-interface {v0}, Lkpb;->close()V

    throw p1

    :catch_0
    move-exception p1

    iget-object p1, p0, Lgmo;->b:Lkbc;

    :goto_0
    invoke-interface {p1}, Lkbc;->f()V

    invoke-interface {v1}, Lkpb;->close()V

    invoke-interface {v0}, Lkpb;->close()V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkpb;->close()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lkpb;->close()V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic k(Lgmp;Leea;)V
    .locals 5

    const-string v0, "Error retrieving the base frame index."

    invoke-virtual {p1}, Lgmp;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lgmo;->b:Lkbc;

    const-string v4, "depth"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v3, p1, Lgmp;->l:Lnph;

    invoke-virtual {v3}, Lnph;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkeb;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lgmo;->k:Lgue;

    invoke-virtual {v3, v1}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lgmo;->j(Lgli;Lgmp;)Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :goto_0
    invoke-direct {p0, p1, v2}, Lgmo;->l(Lgmp;Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;)V

    iget-object p1, p0, Lgmo;->j:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lgmo;->b:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lgmp;->b()V

    sget-object v3, Lgmo;->e:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    invoke-interface {v3, v1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v3, 0xbd5

    invoke-interface {v1, v3}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, v0}, Lnah;->o(Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    sget-object v3, Lgmo;->e:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    invoke-interface {v3, v1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v3, 0xbd4

    invoke-interface {v1, v3}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, v0}, Lnah;->o(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    invoke-direct {p0, p1, v2}, Lgmo;->l(Lgmp;Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;)V

    iget-object p1, p0, Lgmo;->j:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lgmo;->b:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lgmp;->b()V

    return-void
.end method

.method public final o(Leea;Landroid/graphics/Bitmap;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 1

    iget-object p2, p1, Leea;->v:Lgkr;

    iget-object p2, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p2}, Lgxl;->h()Lgxy;

    move-result-object p2

    iget-object v0, p0, Lgmo;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgmp;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lgmp;->m:Lnph;

    invoke-virtual {p1, p3}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_0
    sget-object p1, Lgmo;->e:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p3, "Couldn\'t find inflight shot, already processed? %s"

    const/16 v0, 0xbd8

    invoke-static {p1, p3, p2, v0}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void
.end method

.method public final p(Leea;)V
    .locals 0

    iget-object p1, p1, Leea;->v:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgmo;->d(Lgxy;)V

    return-void
.end method
