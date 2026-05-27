.class final Lgom;
.super Ljava/lang/Object;

# interfaces
.implements Lfwu;


# instance fields
.field public a:Lnrm;

.field public b:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

.field final synthetic c:J

.field final synthetic d:Z

.field final synthetic e:Lcom/google/googlex/gcam/PortraitRequest;

.field final synthetic f:Lcom/google/googlex/gcam/RawReadView;

.field final synthetic g:Lcom/google/googlex/gcam/ShotMetadata;

.field final synthetic h:Lcom/google/googlex/gcam/RawReadView;

.field final synthetic i:Lcom/google/googlex/gcam/ShotMetadata;

.field final synthetic j:Lcom/google/googlex/gcam/InterleavedImageU16;

.field final synthetic k:Lcom/google/googlex/gcam/InterleavedImageU8;

.field final synthetic l:Lgop;

.field final synthetic m:Lehb;


# direct methods
.method public constructor <init>(Lgop;JLehb;ZLcom/google/googlex/gcam/PortraitRequest;Lcom/google/googlex/gcam/RawReadView;Lcom/google/googlex/gcam/ShotMetadata;Lcom/google/googlex/gcam/RawReadView;Lcom/google/googlex/gcam/ShotMetadata;Lcom/google/googlex/gcam/InterleavedImageU16;Lcom/google/googlex/gcam/InterleavedImageU8;)V
    .locals 0

    iput-object p1, p0, Lgom;->l:Lgop;

    iput-wide p2, p0, Lgom;->c:J

    iput-object p4, p0, Lgom;->m:Lehb;

    iput-boolean p5, p0, Lgom;->d:Z

    iput-object p6, p0, Lgom;->e:Lcom/google/googlex/gcam/PortraitRequest;

    iput-object p7, p0, Lgom;->f:Lcom/google/googlex/gcam/RawReadView;

    iput-object p8, p0, Lgom;->g:Lcom/google/googlex/gcam/ShotMetadata;

    iput-object p9, p0, Lgom;->h:Lcom/google/googlex/gcam/RawReadView;

    iput-object p10, p0, Lgom;->i:Lcom/google/googlex/gcam/ShotMetadata;

    iput-object p11, p0, Lgom;->j:Lcom/google/googlex/gcam/InterleavedImageU16;

    iput-object p12, p0, Lgom;->k:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lgom;->b:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    return-void
.end method

.method public static final d(Lgon;)Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOpaqueHandleCallback;
    .locals 1

    new-instance v0, Lgod;

    invoke-direct {v0, p0}, Lgod;-><init>(Lgon;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lnou;
    .locals 20

    move-object/from16 v15, p0

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v16

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v5

    sget-object v0, Lgop;->a:Lnak;

    iget-object v0, v15, Lgom;->l:Lgop;

    iget-object v13, v0, Lgop;->e:Ljava/util/concurrent/Executor;

    iget-object v3, v15, Lgom;->m:Lehb;

    iget-boolean v4, v15, Lgom;->d:Z

    iget-object v6, v15, Lgom;->e:Lcom/google/googlex/gcam/PortraitRequest;

    iget-object v7, v15, Lgom;->f:Lcom/google/googlex/gcam/RawReadView;

    iget-object v8, v15, Lgom;->g:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v9, v15, Lgom;->h:Lcom/google/googlex/gcam/RawReadView;

    iget-object v10, v15, Lgom;->i:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v11, v15, Lgom;->j:Lcom/google/googlex/gcam/InterleavedImageU16;

    iget-object v12, v15, Lgom;->k:Lcom/google/googlex/gcam/InterleavedImageU8;

    iget-wide v1, v15, Lgom;->c:J

    new-instance v14, Lgoe;

    move-object v0, v14

    move-wide/from16 v17, v1

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v15, v13

    move-object/from16 v19, v14

    move-wide/from16 v13, v17

    invoke-direct/range {v0 .. v14}, Lgoe;-><init>(Lgom;Lnph;Lehb;ZLnph;Lcom/google/googlex/gcam/PortraitRequest;Lcom/google/googlex/gcam/RawReadView;Lcom/google/googlex/gcam/ShotMetadata;Lcom/google/googlex/gcam/RawReadView;Lcom/google/googlex/gcam/ShotMetadata;Lcom/google/googlex/gcam/InterleavedImageU16;Lcom/google/googlex/gcam/InterleavedImageU8;J)V

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v16
.end method

.method public final b()Lnou;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lgon;)Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitImageCallback;
    .locals 1

    new-instance v0, Lgof;

    invoke-direct {v0, p0, p1}, Lgof;-><init>(Lgom;Lgon;)V

    return-object v0
.end method
