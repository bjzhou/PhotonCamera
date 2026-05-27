.class public final Lepd;
.super Lgmp;


# static fields
.field private static final u:Lnak;


# instance fields
.field public a:Z

.field public final b:Leea;

.field public final c:Lkad;

.field public final d:Leqg;

.field public final e:I

.field public final f:Ljava/util/UUID;

.field public final g:Ljava/util/concurrent/Phaser;

.field public final h:I

.field public i:Landroid/graphics/Bitmap;

.field public j:Lnsz;

.field private final v:Ljava/util/ArrayList;

.field private final w:Ldqx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/lasagna/MotionBlurInflightShot"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lepd;->u:Lnak;

    return-void
.end method

.method public constructor <init>(Ldqx;Lgkr;Lebb;Lcom/google/googlex/gcam/BurstSpec;Lkou;Leea;Lkad;Leqg;I[B[B[B[B)V
    .locals 8

    move-object v7, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lgmp;-><init>(Lgkr;Lebb;Lcom/google/googlex/gcam/BurstSpec;Lkou;[B[B)V

    move-object v0, p6

    iput-object v0, v7, Lepd;->b:Leea;

    invoke-virtual {p6}, Leea;->a()I

    move-result v0

    iput v0, v7, Lepd;->h:I

    move-object v0, p7

    iput-object v0, v7, Lepd;->c:Lkad;

    move-object/from16 v0, p8

    iput-object v0, v7, Lepd;->d:Leqg;

    move/from16 v0, p9

    iput v0, v7, Lepd;->e:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, v7, Lepd;->f:Ljava/util/UUID;

    const/4 v0, 0x0

    iput-boolean v0, v7, Lepd;->a:Z

    new-instance v0, Ljava/util/concurrent/Phaser;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/Phaser;-><init>(I)V

    iput-object v0, v7, Lepd;->g:Ljava/util/concurrent/Phaser;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lepd;->v:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, v7, Lepd;->j:Lnsz;

    move-object v0, p1

    iput-object v0, v7, Lepd;->w:Ldqx;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lepd;->v:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lepd;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-object v0
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lepd;->c:Lkad;

    invoke-interface {v0}, Lkad;->close()V

    invoke-virtual {p0}, Lepd;->e()V

    invoke-virtual {p0}, Lepd;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnsx;

    iget-object v4, v3, Lnsx;->b:Lcom/google/googlex/gcam/FrameMetadata;

    invoke-virtual {v4}, Lcom/google/googlex/gcam/FrameMetadata;->c()J

    iget-object v3, v3, Lnsx;->d:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgmp;->t:Lgkr;

    iget-object v0, v0, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lgxl;->h()Lgxy;

    :cond_1
    invoke-super {p0}, Lgmp;->b()V

    return-void
.end method

.method public final c(Lkeb;)V
    .locals 4

    invoke-super {p0, p1}, Lgmp;->c(Lkeb;)V

    iget-object v0, p0, Lepd;->w:Ldqx;

    invoke-virtual {v0, p1}, Ldqx;->h(Lkeb;)Lnsx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lepd;->v:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-interface {p1}, Lkeb;->b()Lkeg;

    move-result-object p1

    sget-object v0, Lepd;->u:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x6c8

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    if-eqz p1, :cond_1

    iget-wide v1, p1, Lkeg;->c:J

    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x1

    :goto_0
    const-string p1, "No valid RAW image found for frame %s, adding empty frame."

    invoke-interface {v0, p1, v1, v2}, Lnah;->q(Ljava/lang/String;J)V

    iget-object p1, p0, Lepd;->v:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/googlex/gcam/RawWriteView;

    invoke-direct {v0}, Lcom/google/googlex/gcam/RawWriteView;-><init>()V

    new-instance v1, Lcom/google/googlex/gcam/FrameMetadata;

    invoke-direct {v1}, Lcom/google/googlex/gcam/FrameMetadata;-><init>()V

    new-instance v2, Lcom/google/googlex/gcam/SpatialGainMap;

    invoke-direct {v2}, Lcom/google/googlex/gcam/SpatialGainMap;-><init>()V

    sget-object v3, Lchy;->o:Lchy;

    invoke-static {v0, v1, v2, v3}, Lnsx;->a(Lcom/google/googlex/gcam/RawWriteView;Lcom/google/googlex/gcam/FrameMetadata;Lcom/google/googlex/gcam/SpatialGainMap;Ljava/lang/Runnable;)Lnsx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lepd;->j:Lnsz;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnsz;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lepd;->j:Lnsz;

    return-void

    :cond_0
    iget-object v0, p0, Lgmp;->t:Lgkr;

    iget-object v0, v0, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lgxl;->h()Lgxy;

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lepd;->g:Ljava/util/concurrent/Phaser;

    invoke-virtual {v0}, Ljava/util/concurrent/Phaser;->arrive()I

    return-void
.end method
