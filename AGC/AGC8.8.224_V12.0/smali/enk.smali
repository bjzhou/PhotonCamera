.class public final Lenk;
.super Ljava/lang/Object;

# interfaces
.implements Lecp;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Lenm;Lenl;Lkbf;I)V
    .locals 0

    iput p4, p0, Lenk;->d:I

    iput-object p1, p0, Lenk;->c:Ljava/lang/Object;

    iput-object p2, p0, Lenk;->a:Ljava/lang/Object;

    iput-object p3, p0, Lenk;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lewa;Ledn;Lebb;I[B)V
    .locals 0

    iput p4, p0, Lenk;->d:I

    iput-object p1, p0, Lenk;->a:Ljava/lang/Object;

    iput-object p2, p0, Lenk;->b:Ljava/lang/Object;

    iput-object p3, p0, Lenk;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Landroid/hardware/HardwareBuffer;Ldog;)V
    .locals 0

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    iget-object p1, p0, Lenk;->a:Ljava/lang/Object;

    check-cast p1, Lenl;

    iget-object p1, p1, Lenl;->e:Lnph;

    invoke-virtual {p1, p2}, Lnph;->a(Ljava/lang/Throwable;)Z

    iget-object p1, p0, Lenk;->c:Ljava/lang/Object;

    iget-object p2, p0, Lenk;->a:Ljava/lang/Object;

    check-cast p2, Lenl;

    check-cast p1, Lenm;

    invoke-virtual {p1, p2}, Lenm;->b(Lenl;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, Lenk;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lenk;->a:Ljava/lang/Object;

    check-cast v0, Lewa;

    iget-object v0, v0, Lewa;->h:Ljava/lang/Object;

    const-string v3, "RgbHardwareCallback"

    invoke-interface {v0, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, v1, Lenk;->b:Ljava/lang/Object;

    check-cast v0, Ledn;

    iput-object v2, v0, Ledn;->c:Landroid/hardware/HardwareBuffer;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Ledn;->f(Lcom/google/googlex/gcam/ShotMetadata;)V

    invoke-virtual {v0}, Ledn;->a()Ledo;

    move-result-object v0

    iget-object v2, v1, Lenk;->a:Ljava/lang/Object;

    iget-object v3, v1, Lenk;->c:Ljava/lang/Object;

    check-cast v3, Lebb;

    check-cast v2, Lewa;

    invoke-virtual {v2, v3, v0}, Lewa;->c(Lebb;Ledo;)V

    iget-object v0, v1, Lenk;->a:Ljava/lang/Object;

    check-cast v0, Lewa;

    iget-object v0, v0, Lewa;->h:Ljava/lang/Object;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :pswitch_0
    sget-object v0, Lnbk;->a:Lnbc;

    iget-object v0, v1, Lenk;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lkbf;->a()V

    iget-object v0, v1, Lenk;->a:Ljava/lang/Object;

    check-cast v0, Lenl;

    iget-object v0, v0, Lenl;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, v1, Lenk;->a:Ljava/lang/Object;

    check-cast v3, Lenl;

    iget v4, v3, Lenl;->l:I

    if-le v0, v4, :cond_0

    iget-object v0, v3, Lenl;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkad;

    invoke-interface {v0}, Lkad;->close()V

    goto :goto_0

    :cond_0
    sget-object v0, Lenm;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    sget-object v3, Lnbk;->a:Lnbc;

    const-string v4, "KeplerController"

    invoke-interface {v0, v3, v4}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v3, 0x662

    invoke-interface {v0, v3}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    iget-object v3, v1, Lenk;->a:Ljava/lang/Object;

    check-cast v3, Lenl;

    iget v3, v3, Lenl;->l:I

    const-string v4, "Image token for %dth callback not found."

    invoke-interface {v0, v4, v3}, Lnah;->p(Ljava/lang/String;I)V

    :goto_0
    iget-object v0, v1, Lenk;->a:Ljava/lang/Object;

    check-cast v0, Lenl;

    iget-object v0, v0, Lenl;->i:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    iget-object v3, v1, Lenk;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lenk;->c:Ljava/lang/Object;

    check-cast v0, Lenm;

    iget-object v0, v0, Lenm;->i:Ljava/util/Map;

    iget-object v4, v1, Lenk;->a:Ljava/lang/Object;

    check-cast v4, Lenl;

    iget-object v4, v4, Lenl;->a:Leea;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/HardwareBuffer;->close()V

    iget-object v0, v1, Lenk;->a:Ljava/lang/Object;

    check-cast v0, Lenl;

    iget-object v0, v0, Lenl;->a:Leea;

    invoke-virtual {v0}, Leea;->a()I

    monitor-exit v3

    return-void

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v1, Lenk;->a:Ljava/lang/Object;

    check-cast v0, Lenl;

    iget v0, v0, Lenl;->l:I

    const/4 v3, 0x1

    if-nez v0, :cond_3

    iget-object v0, v1, Lenk;->c:Ljava/lang/Object;

    new-instance v9, Lkaf;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v5

    invoke-direct {v9, v4, v5}, Lkaf;-><init>(II)V

    iget-object v14, v1, Lenk;->a:Ljava/lang/Object;

    move-object v4, v14

    check-cast v4, Lenl;

    iget-object v4, v4, Lenl;->a:Leea;

    iget-object v4, v4, Leea;->v:Lgkr;

    iget-object v4, v4, Lgkr;->d:Ljava/lang/Object;

    check-cast v4, Lfte;

    iget v4, v4, Lfte;->a:I

    move-object v5, v0

    check-cast v5, Lenm;

    iget-object v5, v5, Lenm;->f:Limq;

    move-object v6, v0

    check-cast v6, Lenm;

    iget-object v6, v6, Lenm;->j:Lfuz;

    move-object v7, v0

    check-cast v7, Lenm;

    iget-object v7, v7, Lenm;->h:Ljvs;

    move-object v8, v0

    check-cast v8, Lenm;

    iget-object v8, v8, Lenm;->g:Ldhi;

    invoke-static {v4, v5, v6, v7, v8}, Lcea;->b(ILimq;Lkli;Ljvs;Ldhi;)I

    move-result v4

    check-cast v0, Lenm;

    iget-object v0, v0, Lenm;->l:Lgkr;

    move-object v5, v14

    check-cast v5, Lenl;

    iget-object v5, v5, Lenl;->d:Lkph;

    invoke-interface {v5}, Lkph;->e()Ljava/io/FileOutputStream;

    move-result-object v8

    invoke-static {v4}, Lkab;->b(I)Lkab;

    move-result-object v10

    new-instance v15, Lenn;

    iget-object v4, v0, Lgkr;->a:Ljava/lang/Object;

    iget-object v6, v0, Lgkr;->c:Ljava/lang/Object;

    iget-object v7, v0, Lgkr;->d:Ljava/lang/Object;

    iget-object v0, v0, Lgkr;->b:Ljava/lang/Object;

    sget-object v5, Ldhq;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->g()V

    move-object v5, v4

    check-cast v5, Lbkc;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v4, v15

    invoke-direct/range {v4 .. v13}, Lenn;-><init>(Lbkc;Lfbk;Ljava/util/concurrent/Executor;Ljava/io/FileOutputStream;Lkaf;Lkab;[B[B[B)V

    check-cast v14, Lenl;

    iput-object v15, v14, Lenl;->n:Lenn;

    new-instance v0, Lcom/google/googlex/gcam/AwbInfo;

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/ShotMetadata;->d()Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v4

    iget-wide v5, v4, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v5, v6, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_wb_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    new-instance v6, Lcom/google/googlex/gcam/AwbInfo;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v5, v7}, Lcom/google/googlex/gcam/AwbInfo;-><init>(JZ)V

    move-object v4, v6

    :goto_1
    invoke-static {v4}, Lcom/google/googlex/gcam/AwbInfo;->a(Lcom/google/googlex/gcam/AwbInfo;)J

    move-result-wide v5

    invoke-static {v5, v6, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_AwbInfo__SWIG_1(JLcom/google/googlex/gcam/AwbInfo;)J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Lcom/google/googlex/gcam/AwbInfo;-><init>(JZ)V

    iget-object v4, v1, Lenk;->a:Ljava/lang/Object;

    check-cast v4, Lenl;

    iget-object v4, v4, Lenl;->g:Lnph;

    invoke-virtual {v4, v0}, Lnph;->e(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/ShotMetadata;->c()Lcom/google/googlex/gcam/AeResults;

    move-result-object v0

    new-instance v4, Lecc;

    sget-object v5, Lnqb;->a:Lnqb;

    invoke-virtual {v0, v5}, Lcom/google/googlex/gcam/AeResults;->a(Lnqb;)F

    move-result v5

    sget-object v6, Lnqb;->b:Lnqb;

    invoke-virtual {v0, v6}, Lcom/google/googlex/gcam/AeResults;->a(Lnqb;)F

    move-result v0

    invoke-direct {v4, v5, v0}, Lecc;-><init>(FF)V

    iget-object v0, v1, Lenk;->a:Ljava/lang/Object;

    check-cast v0, Lenl;

    iget-object v0, v0, Lenl;->h:Lnph;

    invoke-virtual {v0, v4}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    iget-object v0, v1, Lenk;->a:Ljava/lang/Object;

    check-cast v0, Lenl;

    iget-object v0, v0, Lenl;->n:Lenn;

    if-nez v0, :cond_4

    new-instance v0, Ldog;

    const-string v3, "Encoder not available."

    invoke-direct {v0, v3}, Ldog;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lenk;->b(Landroid/hardware/HardwareBuffer;Ldog;)V

    return-void

    :cond_4
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, v1, Lenk;->a:Ljava/lang/Object;

    check-cast v5, Lenl;

    iget-wide v5, v5, Lenl;->m:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lenn;->b(Landroid/hardware/HardwareBuffer;J)V

    iget-object v2, v1, Lenk;->a:Ljava/lang/Object;

    check-cast v2, Lenl;

    iget v4, v2, Lenl;->l:I

    add-int/2addr v4, v3

    iput v4, v2, Lenl;->l:I

    iget-wide v5, v2, Lenl;->m:J

    iget-object v7, v1, Lenk;->c:Ljava/lang/Object;

    check-cast v7, Lenm;

    iget-wide v7, v7, Lenm;->b:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lenl;->m:J

    iget v2, v2, Lenl;->c:I

    if-ne v4, v2, :cond_5

    invoke-virtual {v0}, Lenn;->a()Lnou;

    move-result-object v0

    new-instance v2, Ljua;

    invoke-direct {v2, v1, v3}, Ljua;-><init>(Lenk;I)V

    iget-object v3, v1, Lenk;->c:Ljava/lang/Object;

    check-cast v3, Lenm;

    iget-object v3, v3, Lenm;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2, v3}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    :cond_5
    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lenm;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    sget-object v4, Lnbk;->a:Lnbc;

    const-string v5, "KeplerController"

    invoke-interface {v3, v4, v5}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v3

    const-string v4, "Encoder creation failed"

    const/16 v5, 0x660

    invoke-static {v3, v4, v5, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    new-instance v3, Ldog;

    const-string v4, "Failed to create encoder."

    invoke-direct {v3, v4, v0}, Ldog;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v3}, Lenk;->b(Landroid/hardware/HardwareBuffer;Ldog;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
