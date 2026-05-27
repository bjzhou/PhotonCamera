.class public final Lewz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field public A:I

.field public B:I

.field public C:[B

.field public D:Z

.field public E:Lexs;

.field public F:Leww;

.field public G:I

.field public H:Lewj;

.field public I:Lewj;

.field private final J:Lexf;

.field private final K:[F

.field private final L:[F

.field private final M:[F

.field private final N:[F

.field private final O:[F

.field private final P:[F

.field private final Q:[F

.field private final R:[F

.field private S:[F

.field private T:F

.field private U:F

.field private V:F

.field private W:I

.field private X:I

.field private Y:Z

.field private Z:I

.field public a:Lewh;

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:Z

.field private ae:Z

.field private af:I

.field private ag:Z

.field private final ah:Ljava/util/ArrayList;

.field private final ai:Lgft;

.field private aj:Z

.field private ak:Lexn;

.field private al:Lexn;

.field private am:Z

.field private an:J

.field private ao:Z

.field private ap:D

.field private aq:D

.field private final ar:Ljava/util/Vector;

.field private final as:Landroid/content/Context;

.field private at:I

.field private au:F

.field private final av:Ljava/util/HashMap;

.field private final aw:Lewo;

.field public final b:Lexc;

.field public c:Lexe;

.field public final d:Lexi;

.field public final e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

.field public f:Lewg;

.field public g:Lewg;

.field public h:Lexg;

.field public i:Lexv;

.field public j:Lewk;

.field public k:Lext;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I

.field public y:Lexj;

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lexf;Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;Lgft;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lexc;

    invoke-direct {v0}, Lexc;-><init>()V

    iput-object v0, p0, Lewz;->b:Lexc;

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lewz;->K:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lewz;->L:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lewz;->M:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lewz;->N:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lewz;->O:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lewz;->P:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lewz;->Q:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lewz;->R:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lewz;->S:[F

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lewz;->T:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lewz;->U:F

    iput v0, p0, Lewz;->V:F

    const/16 v0, 0x78

    iput v0, p0, Lewz;->W:I

    const/16 v0, 0x50

    iput v0, p0, Lewz;->X:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lewz;->l:Z

    iput-boolean v0, p0, Lewz;->m:Z

    iput-boolean v0, p0, Lewz;->Y:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lewz;->n:Z

    iput-boolean v0, p0, Lewz;->ae:Z

    iput v0, p0, Lewz;->af:I

    iput-boolean v0, p0, Lewz;->ag:Z

    iput-boolean v0, p0, Lewz;->q:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lewz;->ah:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lewz;->r:Z

    iput-boolean v0, p0, Lewz;->s:Z

    iput-boolean v0, p0, Lewz;->t:Z

    iput v1, p0, Lewz;->G:I

    iput-boolean v0, p0, Lewz;->u:Z

    iput-boolean v0, p0, Lewz;->aj:Z

    iput-boolean v0, p0, Lewz;->v:Z

    iput-boolean v0, p0, Lewz;->w:Z

    const v1, 0x7f140213

    iput v1, p0, Lewz;->x:I

    new-instance v1, Lewo;

    invoke-direct {v1}, Lewo;-><init>()V

    iput-object v1, p0, Lewz;->aw:Lewo;

    iput-boolean v0, p0, Lewz;->am:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lewz;->an:J

    iput-boolean v0, p0, Lewz;->ao:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lewz;->y:Lexj;

    iput-boolean v0, p0, Lewz;->z:Z

    iput v0, p0, Lewz;->A:I

    iput v0, p0, Lewz;->B:I

    iput-object v1, p0, Lewz;->C:[B

    iput-boolean v0, p0, Lewz;->D:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lewz;->ap:D

    iput-wide v1, p0, Lewz;->aq:D

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lewz;->ar:Ljava/util/Vector;

    iput v0, p0, Lewz;->at:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lewz;->au:F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lewz;->av:Ljava/util/HashMap;

    iput-object p1, p0, Lewz;->as:Landroid/content/Context;

    iput-object p2, p0, Lewz;->J:Lexf;

    iput-object p3, p0, Lewz;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    iput-object p4, p0, Lewz;->ai:Lgft;

    new-instance p2, Lexi;

    invoke-direct {p2, p1}, Lexi;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lewz;->d:Lexi;

    return-void
.end method

.method private final g(F)F
    .locals 7

    iget v0, p0, Lewz;->ab:I

    iget v1, p0, Lewz;->ac:I

    if-ge v0, v1, :cond_0

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    add-double/2addr v1, v1

    iget p1, p0, Lewz;->ac:I

    int-to-double v3, p1

    int-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v1

    add-double/2addr v5, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    add-double/2addr v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    :cond_0
    return p1
.end method

.method private final declared-synchronized h(Z)V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lewz;->h:Lexg;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lewz;->m:Z

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lewz;->y:Lexj;

    iget-object v2, p0, Lewz;->C:[B

    iget v3, p0, Lewz;->A:I

    iget v4, p0, Lewz;->B:I

    iget-boolean v0, v0, Lexg;->h:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lewz;->F:Leww;

    iget-boolean v0, v0, Leww;->s:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    sget-object v7, Lewr;->a:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v8, Lewr;->b:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-static {v2, v3, v4, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ProcessFrame([BIIZ)[F

    move-result-object v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v0, v1, Lexj;->c:Ljava/lang/Object;

    iget-object v0, v1, Lexj;->c:Ljava/lang/Object;

    check-cast v0, [F

    aget v0, v0, v6

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v1, Lexj;->a:Z

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->TakeNewPhoto()Z

    move-result v0

    iput-boolean v0, v1, Lexj;->b:Z

    :goto_2
    iget v0, p0, Lewz;->at:I

    add-int/2addr v0, v5

    iput v0, p0, Lewz;->at:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_5

    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_3
    iget-object p1, p0, Lewz;->y:Lexj;

    iget-boolean p1, p1, Lexj;->a:Z

    iput-boolean p1, p0, Lewz;->ad:Z

    sget-object v0, Lewr;->a:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->MovingTooFast()Z

    move-result v0

    iput-boolean v0, p0, Lewz;->ag:Z

    iget-object v0, p0, Lewz;->y:Lexj;

    iget-boolean v1, v0, Lexj;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lewz;->t:Z

    if-nez p1, :cond_8

    iget-object p1, v0, Lexj;->c:Ljava/lang/Object;

    iget-object v0, p0, Lewz;->c:Lexe;

    new-instance v1, Lexd;

    invoke-direct {v1}, Lexd;-><init>()V

    move-object v3, p1

    check-cast v3, [F

    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    iput-object v3, v1, Lexd;->b:[F

    iget-object v3, v1, Lexd;->b:[F

    iget-object v4, v1, Lexd;->a:[F

    iget-object v11, v0, Lexe;->g:[F

    aget v7, v3, v6

    aput v7, v11, v6

    aget v7, v3, v5

    aput v7, v11, v5

    const/4 v7, 0x2

    aget v8, v3, v7

    aput v8, v11, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput v8, v11, v7

    aget v7, v3, v7

    const/4 v9, 0x4

    aput v7, v11, v9

    aget v7, v3, v9

    const/4 v9, 0x5

    aput v7, v11, v9

    aget v7, v3, v9

    const/4 v9, 0x6

    aput v7, v11, v9

    const/4 v7, 0x7

    aput v8, v11, v7

    aget v9, v3, v9

    const/16 v10, 0x8

    aput v9, v11, v10

    aget v7, v3, v7

    const/16 v9, 0x9

    aput v7, v11, v9

    aget v3, v3, v10

    const/16 v7, 0xa

    aput v3, v11, v7

    const/16 v3, 0xe

    aput v8, v11, v3

    const/16 v3, 0xd

    aput v8, v11, v3

    const/16 v3, 0xc

    aput v8, v11, v3

    const/16 v3, 0xb

    aput v8, v11, v3

    const/16 v3, 0xf

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v11, v3

    iget-object v7, v0, Lexe;->f:[F

    const/4 v8, 0x0

    iget-object v9, v0, Lexe;->h:[F

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v3, v0, Lexe;->f:[F

    invoke-static {v4, v6, v3, v6}, Landroid/opengl/Matrix;->transposeM([FI[FI)V

    const v3, 0x3dcccccd    # 0.1f

    iput v3, v1, Lexd;->e:F

    new-instance v3, Lltf;

    invoke-direct {v3, v2, v2, v2}, Lltf;-><init>([B[B[B)V

    iput-object v3, v1, Lexd;->i:Lltf;

    iget-object v3, v1, Lexd;->i:Lltf;

    iget v3, v3, Lltf;->a:I

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->CreateFrameTexture(I)V

    new-instance v3, Lltf;

    invoke-direct {v3, v2, v2, v2}, Lltf;-><init>([B[B[B)V

    iput-object v3, v1, Lexd;->j:Lltf;

    iget-object v0, v0, Lexe;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lexd;->j:Lltf;

    iget v0, v0, Lltf;->a:I

    sget-object v1, Lewr;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object v3, Lewr;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, p1

    check-cast v3, [F

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->AddImage([F)Ljava/lang/String;

    move-result-object v3

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lewz;->c:Lexe;

    invoke-virtual {v1}, Lexe;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v4, p0, Lewz;->F:Leww;

    iget-boolean v7, v4, Leww;->r:Z

    if-nez v7, :cond_6

    iget-boolean v7, v4, Leww;->s:Z

    if-eqz v7, :cond_6

    iget-object v7, v4, Leww;->E:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v5, v4, Leww;->r:Z

    new-instance v3, Lews;

    invoke-direct {v3, v4}, Lews;-><init>(Leww;)V

    new-array v7, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v7}, Lews;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v3, v4, Leww;->D:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v4, Leww;->m:Ljava/util/Vector;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/util/Vector;->setSize(I)V

    iget-object p1, v4, Leww;->m:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object p1, p0, Lewz;->c:Lexe;

    invoke-virtual {p1, v1, v6}, Lexe;->e(IZ)V

    iget-object p1, p0, Lewz;->ah:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v5, p0, Lewz;->q:Z

    invoke-direct {p0}, Lewz;->i()V

    iput-boolean v6, p0, Lewz;->n:Z

    iget-object p1, p0, Lewz;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->a()V

    iput-boolean v6, p0, Lewz;->ao:Z

    iput-boolean v6, p0, Lewz;->am:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :cond_7
    :try_start_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "State is not ready."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1

    :cond_8
    :goto_4
    iget-boolean p1, p0, Lewz;->r:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lewz;->ah:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lewz;->ah:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lewz;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lewz;->c:Lexe;

    invoke-virtual {v0, p1, v5}, Lexe;->e(IZ)V

    :cond_9
    iget-object p1, p0, Lewz;->d:Lexi;

    invoke-virtual {p1}, Lexi;->a()V

    iget-object p1, p0, Lewz;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    iget-boolean v0, p0, Lewz;->w:Z

    iget-object v1, p0, Lewz;->F:Leww;

    iget v1, v1, Leww;->n:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->d(ZI)V

    iput-boolean v6, p0, Lewz;->r:Z

    :cond_a
    iget-object p1, p0, Lewz;->h:Lexg;

    iget-boolean p1, p1, Lexg;->h:Z

    if-nez p1, :cond_10

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->TargetHit()Z

    move-result p1

    invoke-static {}, Lewr;->a()I

    move-result v0

    iget-boolean v1, p0, Lewz;->v:Z

    if-nez v1, :cond_d

    iget-object v1, p0, Lewz;->h:Lexg;

    iget-boolean v1, v1, Lexg;->g:Z

    if-nez v1, :cond_d

    if-eqz p1, :cond_d

    if-nez v0, :cond_d

    iget-object v0, p0, Lewz;->F:Leww;

    iget-boolean v1, v0, Leww;->s:Z

    if-eqz v1, :cond_c

    iput-boolean v5, p0, Lewz;->v:Z

    iget-object p1, v0, Leww;->c:Lewd;

    new-instance v0, Lewx;

    invoke-direct {v0, p0, v6}, Lewx;-><init>(Lewz;I)V

    iget-boolean v1, p1, Lewd;->d:Z

    if-eqz v1, :cond_b

    iget-object v1, p1, Lewd;->b:Lbne;

    invoke-virtual {v1}, Lbne;->f()Lbnw;

    move-result-object v1

    sget-object v2, Lbnm;->a:Lbnm;

    iput-object v2, v1, Lbnw;->s:Lbnm;

    iget-object v2, p1, Lewd;->b:Lbne;

    invoke-virtual {v2, v1}, Lbne;->m(Lbnw;)V

    iget-object v1, p1, Lewd;->b:Lbne;

    iget-object p1, p1, Lewd;->a:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0}, Lbne;->j(Landroid/os/Handler;Lbmy;)V

    goto :goto_5

    :cond_b
    invoke-interface {v0, v5, v2}, Lbmy;->a(ZLbne;)V

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    :cond_d
    iget-object v1, p0, Lewz;->h:Lexg;

    iget-boolean v2, v1, Lexg;->g:Z

    if-eqz v2, :cond_f

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lewz;->ag:Z

    if-nez p1, :cond_e

    if-eqz v0, :cond_f

    :cond_e
    invoke-virtual {v1}, Lexg;->a()V

    :cond_f
    :goto_5
    iget-boolean p1, p0, Lewz;->t:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lewz;->h:Lexg;

    invoke-virtual {p1}, Lexg;->a()V

    :cond_10
    iput-boolean v6, p0, Lewz;->z:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return-void

    :cond_11
    :try_start_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "State is not ready."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final i()V
    .locals 1

    iget-object v0, p0, Lewz;->c:Lexe;

    invoke-virtual {v0}, Lexe;->b()I

    iget-object v0, p0, Lewz;->c:Lexe;

    invoke-virtual {v0}, Lexe;->b()I

    return-void
.end method

.method private static final j(II)I
    .locals 0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    return p0
.end method

.method private static final k(I)Lexn;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    new-instance p0, Lexp;

    invoke-direct {p0, v1}, Lexp;-><init>(Z)V

    return-object p0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    new-instance p0, Lexp;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lexp;-><init>(Z)V

    return-object p0

    :cond_1
    if-ne p0, v1, :cond_2

    new-instance p0, Lexo;

    invoke-direct {p0}, Lexo;-><init>()V

    return-object p0

    :cond_2
    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    new-instance p0, Lexm;

    invoke-direct {p0}, Lexm;-><init>()V

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    new-instance p0, Lexq;

    invoke-direct {p0}, Lexq;-><init>()V

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final l(FF)F
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    float-to-double p0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    const-wide v0, 0x405ca5dc1a63c1f8L    # 114.59155902616465

    mul-double p0, p0, v0

    double-to-float p0, p0

    return p0
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lewz;->e(F)V

    iget p1, p0, Lewz;->U:F

    iput p1, p0, Lewz;->T:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lewz;->l:Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lewz;->U:F

    iget v1, p0, Lewz;->T:F

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lewz;->a(F)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lewz;->q:Z

    return-void
.end method

.method public final declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lewz;->c:Lexe;

    invoke-virtual {v0}, Lexe;->b()I

    move-result v0

    iget-object v1, p0, Lewz;->c:Lexe;

    iget-object v2, v1, Lexe;->j:Ljava/util/Vector;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v1, Lexe;->j:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, v1, Lexe;->j:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lewz;->ar:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    iget-object v1, p0, Lewz;->ar:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lewz;->ar:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-wide v0, p0, Lewz;->ap:D

    iget-object v2, p0, Lewz;->ar:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lewz;->ap:D

    const-wide v2, 0x4046800000000000L    # 45.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lewz;->aq:D

    iget-object v0, p0, Lewz;->ar:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_2
    invoke-direct {p0}, Lewz;->i()V

    new-instance v0, Lewy;

    invoke-direct {v0, p0}, Lewy;-><init>(Lewz;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final e(F)V
    .locals 1

    iget v0, p0, Lewz;->T:F

    div-float/2addr v0, p1

    iput v0, p0, Lewz;->U:F

    iget p1, p0, Lewz;->W:I

    int-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lewz;->U:F

    iget v0, p0, Lewz;->X:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lewz;->U:F

    invoke-direct {p0, p1}, Lewz;->g(F)F

    move-result p1

    iput p1, p0, Lewz;->V:F

    return-void
.end method

.method public final f(I)V
    .locals 5

    iget v0, p0, Lewz;->G:I

    iput p1, p0, Lewz;->G:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lewz;->w:Z

    const v2, 0x7f140213

    iput v2, p0, Lewz;->x:I

    if-eqz p1, :cond_0

    add-int/lit8 v2, p1, -0x1

    const v3, 0x7f14050f

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lewz;->d:Lexi;

    invoke-virtual {v2, v1}, Lexi;->e(I)V

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lewz;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    iget-object v3, p0, Lewz;->F:Leww;

    iget v3, v3, Leww;->n:I

    invoke-virtual {v2, v1, v3}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->d(ZI)V

    iput-boolean v4, p0, Lewz;->w:Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lewz;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->a()V

    iget-object v1, p0, Lewz;->d:Lexi;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lexi;->e(I)V

    iput-boolean v4, p0, Lewz;->aj:Z

    iget-object v1, p0, Lewz;->aw:Lewo;

    invoke-virtual {v1}, Lewo;->b()V

    goto :goto_0

    :pswitch_2
    iput v3, p0, Lewz;->x:I

    iget-object v1, p0, Lewz;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->a()V

    iget-object v1, p0, Lewz;->d:Lexi;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lexi;->e(I)V

    iput-boolean v4, p0, Lewz;->aj:Z

    iget-object v1, p0, Lewz;->aw:Lewo;

    invoke-virtual {v1}, Lewo;->b()V

    goto :goto_0

    :pswitch_3
    iput v3, p0, Lewz;->x:I

    iget-object v1, p0, Lewz;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->a()V

    iget-object v1, p0, Lewz;->d:Lexi;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lexi;->e(I)V

    iput-boolean v4, p0, Lewz;->aj:Z

    iget-object v1, p0, Lewz;->aw:Lewo;

    invoke-virtual {v1}, Lewo;->b()V

    goto :goto_0

    :pswitch_4
    iput v3, p0, Lewz;->x:I

    iget-object v1, p0, Lewz;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->a()V

    iget-object v1, p0, Lewz;->d:Lexi;

    invoke-virtual {v1, v4}, Lexi;->e(I)V

    iput-boolean v4, p0, Lewz;->aj:Z

    iget-object v1, p0, Lewz;->aw:Lewo;

    invoke-virtual {v1}, Lewo;->b()V

    :goto_0
    invoke-static {v0}, Lewz;->k(I)Lexn;

    move-result-object v0

    iput-object v0, p0, Lewz;->ak:Lexn;

    invoke-static {p1}, Lewz;->k(I)Lexn;

    move-result-object p1

    iput-object p1, p0, Lewz;->al:Lexn;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 34

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lewz;->m:Z

    if-eqz v0, :cond_3c

    iget-boolean v0, v1, Lewz;->s:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1d

    :cond_0
    iget v0, v1, Lewz;->ab:I

    if-eqz v0, :cond_3b

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-boolean v0, v1, Lewz;->m:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, v1, Lewz;->s:Z

    if-eqz v0, :cond_1

    goto/16 :goto_1c

    :cond_1
    sget-object v2, Lewr;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lewr;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_3a

    iget-boolean v0, v1, Lewz;->ae:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lltf;->d()I

    invoke-static {}, Lltf;->d()I

    move-result v0

    iget v4, v1, Lewz;->A:I

    iget v5, v1, Lewz;->B:I

    invoke-static {v0, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitFrameTexture(III)V

    iget-object v4, v1, Lewz;->b:Lexc;

    iget-object v5, v4, Lexc;->d:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->clear()V

    new-instance v5, Lltf;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Lltf;-><init>([B[B)V

    iget-object v6, v4, Lexc;->k:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v4, Lexc;->d:Ljava/util/Vector;

    invoke-virtual {v6, v3, v5}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget-object v4, v4, Lexc;->d:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lltf;

    iput v0, v4, Lltf;->a:I

    iput-boolean v2, v1, Lewz;->ae:Z

    invoke-static {}, Lltf;->c()I

    move-result v0

    iput v0, v1, Lewz;->p:I

    iget v4, v1, Lewz;->A:I

    iget v5, v1, Lewz;->B:I

    invoke-static {v0, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitFrameTexture(III)V

    invoke-static {}, Lltf;->c()I

    move-result v0

    iput v0, v1, Lewz;->o:I

    iget v4, v1, Lewz;->A:I

    iget v5, v1, Lewz;->B:I

    invoke-static {v0, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitFrameTexture(III)V

    :cond_2
    iget-boolean v0, v1, Lewz;->q:Z

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lewz;->z:Z

    if-eqz v0, :cond_4

    iget v0, v1, Lewz;->G:I

    if-ne v0, v2, :cond_3

    iget-boolean v0, v1, Lewz;->u:Z

    if-nez v0, :cond_3

    invoke-direct {v1, v2}, Lewz;->h(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {v1, v3}, Lewz;->h(Z)V

    :cond_4
    :goto_0
    iget-boolean v0, v1, Lewz;->n:Z

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lewz;->E:Lexs;

    invoke-virtual {v0, v4, v5}, Lexs;->c(D)V

    goto :goto_1

    :cond_5
    iget-wide v6, v1, Lewz;->ap:D

    cmpl-double v0, v6, v4

    if-eqz v0, :cond_7

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget-wide v8, v1, Lewz;->aq:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v8, v8

    cmpg-double v0, v6, v8

    if-gez v0, :cond_6

    iget-object v0, v1, Lewz;->E:Lexs;

    invoke-virtual {v0}, Lexs;->a()D

    move-result-wide v6

    iget-wide v8, v1, Lewz;->ap:D

    add-double/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lexs;->c(D)V

    iput-wide v4, v1, Lewz;->ap:D

    goto :goto_1

    :cond_6
    iget-object v0, v1, Lewz;->E:Lexs;

    invoke-virtual {v0}, Lexs;->a()D

    move-result-wide v4

    iget-wide v6, v1, Lewz;->aq:D

    add-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lexs;->c(D)V

    iget-wide v4, v1, Lewz;->ap:D

    iget-wide v6, v1, Lewz;->aq:D

    sub-double/2addr v4, v6

    iput-wide v4, v1, Lewz;->ap:D

    :cond_7
    :goto_1
    iget-object v0, v1, Lewz;->E:Lexs;

    invoke-virtual {v0}, Lexs;->f()[F

    move-result-object v0

    iput-object v0, v1, Lewz;->S:[F

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetFilteredRotation([F)V

    iget-boolean v0, v1, Lewz;->D:Z

    if-eqz v0, :cond_8

    iget v0, v1, Lewz;->p:I

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->UpdateFrameTexture(I)V

    :cond_8
    iget v0, v1, Lewz;->af:I

    if-lez v0, :cond_39

    iget v4, v1, Lewz;->p:I

    const/16 v5, 0xbe2

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v6, 0x302

    const/16 v7, 0x303

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget v0, v1, Lewz;->ab:I

    int-to-float v0, v0

    iget v8, v1, Lewz;->ac:I

    int-to-float v8, v8

    iget v9, v1, Lewz;->V:F

    iget-object v10, v1, Lewz;->aw:Lewo;

    invoke-virtual {v10}, Lewo;->a()D

    move-result-wide v10

    iget v12, v1, Lewz;->G:I

    if-eq v12, v2, :cond_a

    iget-boolean v9, v1, Lewz;->aj:Z

    const-wide/high16 v12, 0x4032000000000000L    # 18.0

    if-eqz v9, :cond_9

    iget v9, v1, Lewz;->V:F

    float-to-double v14, v9

    mul-double v10, v10, v12

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v14, v10

    double-to-float v9, v14

    goto :goto_2

    :cond_9
    iget v9, v1, Lewz;->V:F

    float-to-double v14, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v10

    mul-double v16, v16, v12

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double v14, v14, v16

    double-to-float v9, v14

    :cond_a
    :goto_2
    div-float/2addr v0, v8

    float-to-double v8, v9

    const-wide v10, 0x4076800000000000L    # 360.0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v8, v8

    iget-object v9, v1, Lewz;->M:[F

    const v17, 0x3dcccccd    # 0.1f

    mul-float v14, v8, v17

    mul-float v12, v14, v0

    neg-float v13, v14

    const/4 v10, 0x0

    neg-float v11, v12

    const v15, 0x3dcccccd    # 0.1f

    const/high16 v16, 0x43480000    # 200.0f

    invoke-static/range {v9 .. v16}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    iget-object v0, v1, Lewz;->N:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, v1, Lewz;->ai:Lgft;

    invoke-interface {v0}, Lgft;->f()Lkab;

    move-result-object v0

    invoke-virtual {v0}, Lkab;->a()I

    move-result v0

    int-to-float v0, v0

    iget-object v8, v1, Lewz;->E:Lexs;

    iget v8, v8, Lexs;->k:F

    sub-float v11, v0, v8

    iget-object v9, v1, Lewz;->N:[F

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, v1, Lewz;->K:[F

    const/16 v19, 0x0

    iget-object v8, v1, Lewz;->M:[F

    const/16 v21, 0x0

    iget-object v9, v1, Lewz;->N:[F

    const/16 v23, 0x0

    move-object/from16 v18, v0

    move-object/from16 v20, v8

    move-object/from16 v22, v9

    invoke-static/range {v18 .. v23}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-boolean v0, v1, Lewz;->Y:Z

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x2

    if-nez v0, :cond_d

    iget-object v0, v1, Lewz;->P:[F

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget v10, v1, Lewz;->ab:I

    int-to-float v10, v10

    const/16 v22, 0x0

    iget v11, v1, Lewz;->ac:I

    int-to-float v11, v11

    const/high16 v24, -0x3db80000    # -50.0f

    const/high16 v25, 0x42480000    # 50.0f

    move-object/from16 v18, v0

    move/from16 v21, v10

    move/from16 v23, v11

    invoke-static/range {v18 .. v25}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget v0, v1, Lewz;->ab:I

    iget v10, v1, Lewz;->ac:I

    invoke-static {v0, v10}, Lewz;->j(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v10, v1, Lewz;->av:Ljava/util/HashMap;

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexg;

    if-eqz v10, :cond_b

    iput-object v10, v1, Lewz;->h:Lexg;

    goto :goto_3

    :cond_b
    new-instance v10, Lexg;

    iget-object v11, v1, Lewz;->as:Landroid/content/Context;

    iget-object v12, v1, Lewz;->E:Lexs;

    iget v13, v1, Lewz;->ab:I

    iget v14, v1, Lewz;->ac:I

    invoke-direct {v10, v11, v12, v13, v14}, Lexg;-><init>(Landroid/content/Context;Lexs;II)V

    iput-object v10, v1, Lewz;->h:Lexg;

    iget-object v11, v1, Lewz;->av:Ljava/util/HashMap;

    invoke-virtual {v11, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lexg;

    iget-object v10, v1, Lewz;->as:Landroid/content/Context;

    iget-object v11, v1, Lewz;->E:Lexs;

    iget v12, v1, Lewz;->ac:I

    iget v13, v1, Lewz;->ab:I

    invoke-direct {v0, v10, v11, v12, v13}, Lexg;-><init>(Landroid/content/Context;Lexs;II)V

    iget-object v10, v1, Lewz;->av:Ljava/util/HashMap;

    iget v11, v1, Lewz;->ac:I

    iget v12, v1, Lewz;->ab:I

    invoke-static {v11, v12}, Lewz;->j(II)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v10, v1, Lewz;->d:Lexi;

    iget v11, v1, Lewz;->ab:I

    iget v12, v1, Lewz;->ac:I

    iget-object v13, v1, Lewz;->h:Lexg;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget-object v14, v10, Lexi;->c:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f08030d

    invoke-static {v14, v15, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    new-instance v0, Lewl;

    invoke-direct {v0}, Lewl;-><init>()V

    iput-object v0, v10, Lexi;->e:Lewl;

    iget-object v0, v10, Lexi;->e:Lewl;

    iget-object v14, v10, Lexi;->c:Landroid/content/Context;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v0, v14, v15, v6}, Lewl;->g(Landroid/content/Context;IF)V

    new-instance v0, Lewl;

    invoke-direct {v0}, Lewl;-><init>()V

    iput-object v0, v10, Lexi;->f:Lewl;

    iget-object v0, v10, Lexi;->f:Lewl;

    iget-object v14, v10, Lexi;->c:Landroid/content/Context;

    const v15, 0x7f08030c

    invoke-virtual {v0, v14, v15, v6}, Lewl;->g(Landroid/content/Context;IF)V

    :try_start_1
    new-instance v0, Lexu;

    invoke-direct {v0}, Lexu;-><init>()V

    iput-object v0, v10, Lexi;->g:Lexu;

    new-instance v0, Lext;

    invoke-direct {v0}, Lext;-><init>()V

    iput-object v0, v10, Lexi;->h:Lext;
    :try_end_1
    .catch Lewi; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lewi;->printStackTrace()V

    :goto_4
    iget-object v0, v10, Lexi;->e:Lewl;

    iget-object v14, v10, Lexi;->g:Lexu;

    iput-object v14, v0, Lewh;->e:Lewj;

    iget-object v0, v10, Lexi;->f:Lewl;

    iput-object v14, v0, Lewh;->e:Lewj;

    int-to-float v0, v11

    div-float/2addr v0, v8

    iput v0, v10, Lexi;->m:F

    int-to-float v0, v12

    div-float/2addr v0, v8

    iput v0, v10, Lexi;->n:F

    iget-object v0, v10, Lexi;->w:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iput-object v13, v10, Lexi;->x:Lexg;

    iget-object v0, v1, Lewz;->d:Lexi;

    iget-object v10, v1, Lewz;->E:Lexs;

    iput-object v10, v0, Lexi;->q:Lexs;

    iget-object v0, v1, Lewz;->as:Landroid/content/Context;

    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v10, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x7f080191

    invoke-static {v0, v11, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance v0, Lbob;

    iget v11, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v0, v11, v10}, Lbob;-><init>(II)V

    invoke-virtual {v0}, Lbob;->a()I

    move-result v0

    int-to-float v0, v0

    iget v10, v1, Lewz;->ac:I

    div-int/2addr v10, v9

    iget v11, v1, Lewz;->ab:I

    div-int/2addr v11, v9

    const v12, 0x3f59999a    # 0.85f

    mul-float v0, v0, v12

    float-to-int v0, v0

    add-int v12, v10, v0

    new-instance v13, Landroid/graphics/PointF;

    int-to-float v11, v11

    int-to-float v12, v12

    invoke-direct {v13, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    sub-int/2addr v10, v0

    int-to-float v0, v10

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, v11, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Lewg;

    invoke-direct {v0}, Lewg;-><init>()V

    iput-object v0, v1, Lewz;->f:Lewg;

    new-instance v0, Lewg;

    invoke-direct {v0}, Lewg;-><init>()V

    iput-object v0, v1, Lewz;->g:Lewg;

    iget-object v0, v1, Lewz;->f:Lewg;

    iget-object v11, v1, Lewz;->as:Landroid/content/Context;

    const v12, 0x7f08030b

    invoke-virtual {v0, v11, v12, v6}, Lewl;->g(Landroid/content/Context;IF)V

    iget-object v0, v1, Lewz;->g:Lewg;

    iget-object v11, v1, Lewz;->as:Landroid/content/Context;

    const v12, 0x7f08030a

    invoke-virtual {v0, v11, v12, v6}, Lewl;->g(Landroid/content/Context;IF)V

    iget-object v0, v1, Lewz;->f:Lewg;

    invoke-virtual {v0, v13}, Lewg;->b(Landroid/graphics/PointF;)V

    iget-object v0, v1, Lewz;->g:Lewg;

    invoke-virtual {v0, v10}, Lewg;->b(Landroid/graphics/PointF;)V

    :try_start_2
    new-instance v0, Lext;

    invoke-direct {v0}, Lext;-><init>()V

    iput-object v0, v1, Lewz;->k:Lext;
    :try_end_2
    .catch Lewi; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lewi;->printStackTrace()V

    :goto_5
    iget-object v0, v1, Lewz;->f:Lewg;

    iget-object v6, v1, Lewz;->k:Lext;

    iput-object v6, v0, Lewh;->e:Lewj;

    iget-object v0, v1, Lewz;->g:Lewg;

    iput-object v6, v0, Lewh;->e:Lewj;

    iput-boolean v2, v1, Lewz;->Y:Z

    :cond_d
    iget-object v0, v1, Lewz;->b:Lexc;

    iput-boolean v2, v0, Lexc;->l:Z

    iget-boolean v6, v1, Lewz;->D:Z

    if-eqz v6, :cond_e

    iput-boolean v2, v0, Lexc;->m:Z

    goto :goto_6

    :cond_e
    iput-boolean v3, v0, Lexc;->m:Z

    :goto_6
    iget v0, v1, Lewz;->at:I

    const/4 v6, 0x3

    if-le v0, v6, :cond_f

    const/4 v0, 0x1

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    :goto_7
    iget-object v10, v1, Lewz;->c:Lexe;

    invoke-virtual {v10}, Lexe;->b()I

    move-result v10

    if-nez v10, :cond_10

    if-eqz v0, :cond_10

    const/4 v10, 0x1

    goto :goto_8

    :cond_10
    const/4 v10, 0x0

    :goto_8
    iput-boolean v10, v1, Lewz;->D:Z

    if-nez v10, :cond_11

    iget-object v10, v1, Lewz;->b:Lexc;

    iput-boolean v3, v10, Lexc;->m:Z

    :cond_11
    iget-object v10, v1, Lewz;->b:Lexc;

    iput-boolean v0, v10, Lexc;->l:Z

    invoke-virtual {v10, v4}, Lexc;->e(I)V

    iget-object v0, v1, Lewz;->J:Lexf;

    iget-object v4, v1, Lewz;->c:Lexe;

    invoke-virtual {v4}, Lexe;->b()I

    move-result v4

    if-lez v4, :cond_12

    iget-object v4, v1, Lewz;->F:Leww;

    iget-object v4, v4, Leww;->A:Lewp;

    iget-boolean v4, v4, Lewp;->b:Z

    if-nez v4, :cond_12

    const/4 v4, 0x1

    goto :goto_9

    :cond_12
    const/4 v4, 0x0

    :goto_9
    iget-boolean v10, v0, Lexf;->a:Z

    if-eq v4, v10, :cond_13

    iput-boolean v4, v0, Lexf;->a:Z

    :cond_13
    iget v0, v1, Lewz;->Z:I

    iget v4, v1, Lewz;->aa:I

    invoke-static {v3, v3, v0, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v0, 0x100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v4, 0xb71

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    :try_start_3
    iget-object v10, v1, Lewz;->O:[F

    const/4 v11, 0x0

    iget-object v12, v1, Lewz;->N:[F

    const/4 v13, 0x0

    iget-object v14, v1, Lewz;->S:[F

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, v1, Lewz;->K:[F

    const/16 v19, 0x0

    iget-object v10, v1, Lewz;->M:[F

    const/16 v21, 0x0

    iget-object v11, v1, Lewz;->O:[F

    const/16 v23, 0x0

    move-object/from16 v18, v0

    move-object/from16 v20, v10

    move-object/from16 v22, v11

    invoke-static/range {v18 .. v23}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-static {v8}, Landroid/opengl/GLES20;->glLineWidth(F)V

    iget-object v0, v1, Lewz;->a:Lewh;

    iget-object v8, v1, Lewz;->K:[F

    invoke-virtual {v0, v8}, Lewh;->c([F)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnable(I)V

    iget-object v0, v1, Lewz;->c:Lexe;

    iget-object v8, v1, Lewz;->K:[F

    invoke-virtual {v0, v8}, Lewh;->a([F)V

    iget-object v0, v1, Lewz;->N:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, v1, Lewz;->ai:Lgft;

    invoke-interface {v0}, Lgft;->f()Lkab;

    move-result-object v0

    invoke-virtual {v0}, Lkab;->a()I

    move-result v0

    int-to-float v0, v0

    iget-object v8, v1, Lewz;->E:Lexs;

    iget v8, v8, Lexs;->k:F

    sub-float v12, v0, v8

    iget-object v10, v1, Lewz;->N:[F

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, v1, Lewz;->N:[F

    const/16 v19, 0x0

    const/high16 v20, 0x43340000    # 180.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v23}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v10, v1, Lewz;->L:[F

    const/4 v11, 0x0

    iget-object v12, v1, Lewz;->M:[F

    const/4 v13, 0x0

    iget-object v14, v1, Lewz;->N:[F

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, v1, Lewz;->j:Lewk;

    sget-object v8, Lewc;->c:[F

    invoke-virtual {v0, v8}, Lewk;->j([F)V

    iget-boolean v0, v1, Lewz;->l:Z

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v0, :cond_14

    iget-boolean v0, v1, Lewz;->ad:Z

    if-nez v0, :cond_15

    :cond_14
    iget-boolean v0, v1, Lewz;->n:Z

    if-eqz v0, :cond_16

    :cond_15
    iget-object v0, v1, Lewz;->i:Lexv;

    invoke-virtual {v0}, Lewj;->c()V

    iget-object v0, v1, Lewz;->i:Lexv;

    invoke-virtual {v0, v8}, Lexv;->j(F)V

    iget-object v0, v1, Lewz;->b:Lexc;

    iget-object v10, v1, Lewz;->L:[F

    invoke-virtual {v0, v10}, Lewh;->a([F)V

    :cond_16
    iget-object v0, v1, Lewz;->d:Lexi;

    iget-object v10, v1, Lewz;->S:[F

    iput-object v10, v0, Lexi;->l:[F

    iget-object v10, v1, Lewz;->K:[F

    iget-object v15, v1, Lewz;->P:[F

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetTargetInRange()I

    move-result v14

    const/4 v13, 0x0

    if-ltz v14, :cond_17

    iget v11, v0, Lexi;->o:F

    sub-float v12, v8, v11

    mul-float v12, v12, v17

    add-float/2addr v11, v12

    iput v11, v0, Lexi;->o:F

    goto :goto_a

    :cond_17
    iput v13, v0, Lexi;->o:F

    :goto_a
    iget-object v11, v0, Lexi;->q:Lexs;

    iget v11, v11, Lexs;->m:F

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    const v12, 0x3f32b8c2

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const v12, 0x3e32b8c2

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const v12, -0x41cd473e

    add-float/2addr v11, v12

    const v12, 0x3f060a92

    div-float/2addr v11, v12

    const/high16 v12, 0x3f400000    # 0.75f

    mul-float v11, v11, v12

    sget-object v16, Lewr;->a:Ljava/lang/Object;

    monitor-enter v16
    :try_end_3
    .catch Lewi; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    sget-object v17, Lewr;->b:Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_38

    const/high16 v17, 0x40300000    # 2.75f

    add-float v11, v11, v17

    const v17, 0x3c8efa35

    mul-float v11, v11, v17

    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetTargetHitAngleRadians(F)V

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    new-instance v11, Liml;

    iget-object v12, v0, Lexi;->l:[F

    aget v13, v12, v9

    neg-float v13, v13

    const/16 v25, 0x6

    aget v4, v12, v25

    neg-float v4, v4

    const/16 v16, 0xa

    aget v12, v12, v16

    neg-float v12, v12

    invoke-direct {v11, v13, v4, v12}, Liml;-><init>(FFF)V

    invoke-static {v2, v7}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v4, v0, Lexi;->g:Lexu;

    invoke-virtual {v4}, Lewj;->c()V

    iget-object v4, v0, Lexi;->g:Lexu;

    iget v4, v4, Lexu;->e:I

    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v4, v0, Lexi;->g:Lexu;

    invoke-virtual {v4, v8}, Lexu;->j(F)V
    :try_end_5
    .catch Lewi; {:try_start_5 .. :try_end_5} :catch_5

    const/4 v13, -0x1

    :try_start_6
    iget-object v4, v0, Lexi;->d:Ljava/util/Map;

    monitor-enter v4
    :try_end_6
    .catch Lewi; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    iget-object v12, v0, Lexi;->d:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_b
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v20, v12

    check-cast v20, Ljava/util/Map$Entry;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v21, v12

    check-cast v21, [F

    iget-object v12, v0, Lexi;->k:[F

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v7, v11

    move-object v11, v12

    const/high16 v5, 0x3f400000    # 0.75f

    move/from16 v12, v22

    const/4 v9, 0x0

    move-object v13, v10

    move/from16 v26, v14

    move/from16 v14, v23

    move-object/from16 v27, v15

    move-object/from16 v15, v21

    move/from16 v16, v24

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v11, v0, Lexi;->j:[F

    const/16 v29, 0x0

    iget-object v12, v0, Lexi;->k:[F

    const/16 v31, 0x0

    iget-object v13, v0, Lexi;->i:[F

    const/16 v33, 0x0

    move-object/from16 v28, v11

    move-object/from16 v30, v12

    move-object/from16 v32, v13

    invoke-static/range {v28 .. v33}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v11, v0, Lexi;->r:Lexh;

    new-instance v12, Liml;

    const/16 v13, 0x8

    aget v13, v21, v13

    neg-float v13, v13

    const/16 v14, 0x9

    aget v14, v21, v14

    neg-float v14, v14

    const/16 v15, 0xa

    aget v15, v21, v15

    neg-float v15, v15

    invoke-direct {v12, v13, v14, v15}, Liml;-><init>(FFF)V

    iget v13, v12, Liml;->a:F

    iget v14, v7, Liml;->a:F

    mul-float v13, v13, v14

    iget v14, v12, Liml;->b:F

    iget v15, v7, Liml;->b:F

    mul-float v14, v14, v15

    add-float/2addr v13, v14

    iget v12, v12, Liml;->c:F

    iget v14, v7, Liml;->c:F

    mul-float v12, v12, v14

    add-float/2addr v13, v12

    float-to-double v12, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    double-to-float v12, v12

    sget v13, Lexi;->b:F

    cmpg-float v14, v12, v13

    if-gez v14, :cond_18

    iput v8, v11, Lexh;->a:F

    iput v8, v11, Lexh;->b:F

    goto :goto_c

    :cond_18
    sget v14, Lexi;->a:F

    cmpg-float v15, v12, v14

    if-gez v15, :cond_19

    sub-float/2addr v14, v13

    sub-float/2addr v12, v13

    div-float/2addr v12, v14

    sub-float v12, v8, v12

    add-float v13, v12, v9

    iput v13, v11, Lexh;->a:F

    const v13, 0x3f19999a    # 0.6f

    mul-float v12, v12, v13

    const v13, 0x3ecccccd    # 0.4f

    add-float/2addr v12, v13

    iput v12, v11, Lexh;->b:F

    goto :goto_c

    :cond_19
    iput v9, v11, Lexh;->a:F

    const v12, 0x3ecccccd    # 0.4f

    iput v12, v11, Lexh;->b:F

    :goto_c
    iget-boolean v11, v0, Lexi;->p:Z

    if-nez v11, :cond_1a

    iget-object v11, v0, Lexi;->r:Lexh;

    iget v11, v11, Lexh;->a:F

    goto :goto_d

    :cond_1a
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_d
    iget-object v12, v0, Lexi;->r:Lexh;

    iget v12, v12, Lexh;->b:F

    iget-object v13, v0, Lexi;->d:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    if-ne v13, v2, :cond_1b

    invoke-static {v5, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_1b
    iget-boolean v13, v0, Lexi;->s:Z

    if-eqz v13, :cond_20

    iget-boolean v13, v0, Lexi;->p:Z

    if-nez v13, :cond_20

    iget v13, v0, Lexi;->u:F

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iget-boolean v13, v0, Lexi;->t:Z

    if-eqz v13, :cond_1e

    iget v13, v0, Lexi;->u:F

    sub-float v14, v8, v13

    const v15, 0x3c23d70a    # 0.01f

    mul-float v14, v14, v15

    add-float/2addr v13, v14

    iput v13, v0, Lexi;->u:F

    const v14, 0x3f666666    # 0.9f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1f

    iget-wide v13, v0, Lexi;->v:J

    const-wide/16 v15, 0x0

    cmp-long v18, v13, v15

    if-nez v18, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v13

    iput-wide v13, v0, Lexi;->v:J

    goto :goto_e

    :cond_1c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v13

    iget-wide v5, v0, Lexi;->v:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-long/2addr v13, v5

    long-to-double v5, v13

    const-wide v13, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v13

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    cmpl-double v18, v5, v13

    if-lez v18, :cond_1d

    :try_start_8
    iput-boolean v3, v0, Lexi;->t:Z

    :cond_1d
    const v5, 0x3f666666    # 0.9f

    iput v5, v0, Lexi;->u:F

    goto :goto_e

    :cond_1e
    iget v5, v0, Lexi;->u:F

    const v6, 0x3f7c28f6    # 0.985f

    mul-float v5, v5, v6

    iput v5, v0, Lexi;->u:F

    :cond_1f
    :goto_e
    iget v5, v0, Lexi;->u:F

    const v6, 0x3c23d70a    # 0.01f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_20

    iput v9, v0, Lexi;->u:F

    iput-boolean v3, v0, Lexi;->s:Z

    :cond_20
    :goto_f
    iget-object v5, v0, Lexi;->j:[F

    const/4 v6, 0x3

    aget v13, v5, v6

    cmpg-float v6, v13, v9

    if-ltz v6, :cond_22

    invoke-static {v5}, Lexi;->c([F)V

    iget-object v5, v0, Lexi;->j:[F

    aget v6, v5, v3

    iget v13, v0, Lexi;->m:F

    mul-float v6, v6, v13

    add-float/2addr v6, v13

    aget v5, v5, v2

    iget v13, v0, Lexi;->n:F

    mul-float v5, v5, v13

    add-float/2addr v5, v13

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move/from16 v14, v26

    if-ne v13, v14, :cond_21

    sub-float v13, v8, v11

    iget-object v9, v0, Lexi;->g:Lexu;

    invoke-virtual {v9, v11}, Lexu;->j(F)V

    iget-object v9, v0, Lexi;->f:Lewl;

    move-object/from16 v11, v27

    invoke-virtual {v9, v11, v6, v5, v12}, Lewl;->f([FFFF)V

    iget-object v9, v0, Lexi;->g:Lexu;

    invoke-virtual {v9, v13}, Lexu;->j(F)V

    iget-object v9, v0, Lexi;->e:Lewl;

    invoke-virtual {v9, v11, v6, v5, v12}, Lewl;->f([FFFF)V

    iget-object v5, v0, Lexi;->g:Lexu;

    invoke-virtual {v5, v8}, Lexu;->j(F)V

    move-object v15, v11

    const/16 v5, 0xbe2

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v13, -0x1

    move-object v11, v7

    const/16 v7, 0x303

    goto/16 :goto_b

    :cond_21
    move-object/from16 v9, v27

    iget-object v13, v0, Lexi;->g:Lexu;

    invoke-virtual {v13, v11}, Lexu;->j(F)V

    iget-object v11, v0, Lexi;->e:Lewl;

    invoke-virtual {v11, v9, v6, v5, v12}, Lewl;->f([FFFF)V

    move-object v11, v7

    move-object v15, v9

    const/16 v5, 0xbe2

    const/4 v6, 0x3

    const/16 v7, 0x303

    const/4 v9, 0x2

    const/4 v13, -0x1

    goto/16 :goto_b

    :cond_22
    move/from16 v14, v26

    move-object/from16 v9, v27

    move-object v11, v7

    move-object v15, v9

    const/16 v5, 0xbe2

    const/4 v6, 0x3

    const/16 v7, 0x303

    const/4 v9, 0x2

    const/4 v13, -0x1

    goto/16 :goto_b

    :cond_23
    move-object v9, v15

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v0, v0, Lexi;->x:Lexg;

    if-eqz v0, :cond_2a

    iget-boolean v4, v0, Lexg;->i:Z

    if-nez v4, :cond_24

    const/4 v6, 0x4

    goto/16 :goto_13

    :cond_24
    iget-boolean v4, v0, Lexg;->g:Z

    if-eqz v4, :cond_25

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iget-wide v6, v0, Lexg;->c:J
    :try_end_9
    .catch Lewi; {:try_start_9 .. :try_end_9} :catch_3

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    double-to-int v4, v4

    int-to-long v4, v4

    const-wide/16 v6, 0x190

    :try_start_a
    div-long/2addr v4, v6

    long-to-int v5, v4

    add-int/2addr v5, v2

    iput v5, v0, Lexg;->f:I

    iget-object v4, v0, Lexg;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, -0x1

    add-int/2addr v4, v6

    if-lt v5, v4, :cond_25

    iput-boolean v3, v0, Lexg;->g:Z

    iput-boolean v2, v0, Lexg;->h:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iget-wide v6, v0, Lexg;->c:J
    :try_end_a
    .catch Lewi; {:try_start_a .. :try_end_a} :catch_3

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    double-to-int v4, v4

    :try_start_b
    iget-object v5, v0, Lexg;->b:Lexs;

    iget v6, v5, Lexs;->i:I

    invoke-virtual {v5}, Lexs;->e()[F

    move-result-object v5

    invoke-static {v5, v6, v4}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->EndGyroCalibration([FII)[F

    move-result-object v4

    aget v5, v4, v3

    aget v6, v4, v2

    const/4 v7, 0x2

    aget v4, v4, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bias : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lexg;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, -0x1

    add-int/2addr v4, v5

    iput v4, v0, Lexg;->f:I

    :cond_25
    const/16 v4, 0xbe2

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    iget-object v4, v0, Lexg;->d:Lext;

    invoke-virtual {v4}, Lewj;->c()V

    iget-boolean v4, v0, Lexg;->g:Z

    if-nez v4, :cond_26

    const/16 v4, 0x302

    const/16 v5, 0x303

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v4, v0, Lexg;->d:Lext;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Lext;->j(F)V

    goto :goto_10

    :cond_26
    const/16 v4, 0x303

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v4, v0, Lexg;->d:Lext;

    const v5, 0x3f99999a    # 1.2f

    invoke-virtual {v4, v5}, Lext;->j(F)V

    :goto_10
    iget-object v4, v0, Lexg;->a:Ljava/util/ArrayList;

    iget v5, v0, Lexg;->f:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lewl;

    iget-object v5, v0, Lexg;->e:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v0, v0, Lexg;->e:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-boolean v6, v4, Lewl;->l:Z

    if-nez v6, :cond_27

    sget-object v0, Lewl;->f:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v4, "Sprite not initialized."

    const/16 v5, 0x7e4

    invoke-static {v0, v4, v5}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const/4 v6, 0x4

    goto/16 :goto_13

    :cond_27
    iget-object v6, v4, Lewl;->e:Lewj;

    if-eqz v6, :cond_29

    invoke-virtual {v6}, Lewj;->c()V

    iget-object v6, v4, Lewl;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v6, v4, Lewl;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v6, v4, Lewl;->e:Lewj;

    iget-object v7, v4, Lewl;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v7}, Lewj;->g(Ljava/nio/FloatBuffer;)V

    iget-object v6, v4, Lewl;->e:Lewj;

    iget-object v7, v4, Lewl;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v7}, Lewj;->e(Ljava/nio/FloatBuffer;)V

    iget-object v6, v4, Lewl;->j:[F

    iget v7, v4, Lewl;->h:F

    add-float v22, v5, v7

    const/16 v19, 0x0

    const/16 v21, 0x0

    iget v5, v4, Lewl;->i:F

    add-float v23, v0, v5

    const/16 v24, 0x0

    move-object/from16 v18, v6

    move-object/from16 v20, v9

    invoke-static/range {v18 .. v24}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    iget-object v0, v4, Lewl;->j:[F

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v31}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, v4, Lewl;->e:Lewj;

    iget-object v5, v4, Lewl;->j:[F

    invoke-virtual {v0, v5}, Lewj;->f([F)V

    iget-object v0, v4, Lewl;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, v4, Lewl;->d:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lltf;

    iget-object v5, v4, Lewl;->e:Lewj;

    invoke-virtual {v0}, Lltf;->f()V

    iget-object v0, v4, Lewl;->c:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, v4, Lewl;->k:I

    iget-object v4, v4, Lewl;->c:Ljava/nio/ShortBuffer;
    :try_end_b
    .catch Lewi; {:try_start_b .. :try_end_b} :catch_3

    const/16 v5, 0x1403

    const/4 v6, 0x4

    :try_start_c
    invoke-static {v6, v0, v5, v4}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V
    :try_end_c
    .catch Lewi; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_13

    :cond_28
    const/4 v6, 0x4

    goto :goto_13

    :cond_29
    const/4 v6, 0x4

    goto :goto_13

    :cond_2a
    const/4 v6, 0x4

    goto :goto_13

    :catchall_0
    move-exception v0

    const/4 v6, 0x4

    :goto_11
    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v0
    :try_end_e
    .catch Lewi; {:try_start_e .. :try_end_e} :catch_2

    :catch_2
    move-exception v0

    goto :goto_12

    :catchall_1
    move-exception v0

    goto :goto_11

    :catch_3
    move-exception v0

    const/4 v6, 0x4

    :goto_12
    :try_start_f
    invoke-virtual {v0}, Lewi;->printStackTrace()V

    :goto_13
    const/16 v4, 0x302

    const/16 v5, 0x303

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget v0, v1, Lewz;->G:I

    if-eq v0, v2, :cond_2d

    iget-boolean v0, v1, Lewz;->u:Z

    if-eqz v0, :cond_2b

    goto :goto_14

    :cond_2b
    iget-object v0, v1, Lewz;->aw:Lewo;

    invoke-virtual {v0}, Lewo;->a()D

    move-result-wide v4

    iget-object v9, v1, Lewz;->L:[F

    const/4 v10, 0x0

    iget-object v11, v1, Lewz;->M:[F

    const/4 v12, 0x0

    iget-object v13, v1, Lewz;->N:[F

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-boolean v0, v1, Lewz;->aj:Z

    if-eqz v0, :cond_2c

    iget-object v9, v1, Lewz;->ak:Lexn;

    double-to-float v0, v4

    iget-object v11, v1, Lewz;->d:Lexi;

    iget-object v12, v1, Lewz;->P:[F

    iget v13, v1, Lewz;->ab:I

    iget v14, v1, Lewz;->ac:I

    sub-float v10, v8, v0

    invoke-interface/range {v9 .. v14}, Lexn;->a(FLexi;[FII)V

    iget-object v0, v1, Lewz;->aw:Lewo;

    iget-boolean v4, v0, Lewo;->a:Z

    if-eqz v4, :cond_2d

    invoke-virtual {v0}, Lewo;->b()V

    iput-boolean v3, v1, Lewz;->aj:Z

    goto :goto_14

    :cond_2c
    iget-object v7, v1, Lewz;->al:Lexn;

    double-to-float v8, v4

    iget-object v9, v1, Lewz;->d:Lexi;

    iget-object v10, v1, Lewz;->P:[F

    iget v11, v1, Lewz;->ab:I

    iget v12, v1, Lewz;->ac:I

    invoke-interface/range {v7 .. v12}, Lexn;->a(FLexi;[FII)V

    :cond_2d
    :goto_14
    const/16 v4, 0xbe2

    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v4, 0xb71

    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v5, 0x302

    const/16 v7, 0x303

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v4, 0xbe2

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    invoke-static {}, Lewr;->a()I

    move-result v0

    if-nez v0, :cond_31

    iget-boolean v0, v1, Lewz;->ao:Z

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->PhotoSkippedTooFast()Z

    move-result v0

    if-eqz v0, :cond_2e

    iput-boolean v2, v1, Lewz;->ao:Z

    iput-boolean v3, v1, Lewz;->am:Z

    :cond_2e
    iget-boolean v0, v1, Lewz;->ao:Z

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->PhotoSkippedTooFast()Z

    move-result v0

    if-nez v0, :cond_2f

    iput-boolean v3, v1, Lewz;->ao:Z

    iput-boolean v2, v1, Lewz;->am:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iput-wide v4, v1, Lewz;->an:J

    :cond_2f
    iget-boolean v0, v1, Lewz;->am:Z

    if-eqz v0, :cond_30

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iget-wide v7, v1, Lewz;->an:J
    :try_end_f
    .catch Lewi; {:try_start_f .. :try_end_f} :catch_5

    sub-long/2addr v4, v7

    long-to-double v4, v4

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v7

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    cmpl-double v0, v4, v7

    if-lez v0, :cond_30

    :try_start_10
    iput-boolean v3, v1, Lewz;->am:Z

    iget-object v0, v1, Lewz;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    const v4, 0x7f0b030f

    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f14054f

    invoke-virtual {v0, v5}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->c(I)V

    new-instance v5, Levi;

    const/4 v7, 0x3

    invoke-direct {v5, v4, v7}, Levi;-><init>(Landroid/widget/TextView;I)V

    const-wide/16 v7, 0x2ee

    invoke-virtual {v0, v5, v7, v8}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v4, 0x0

    goto :goto_15

    :cond_30
    const/4 v4, 0x0

    goto :goto_15

    :cond_31
    move v4, v0

    :goto_15
    iget v0, v1, Lewz;->G:I

    const/4 v5, 0x2

    if-eq v0, v5, :cond_33

    const/4 v5, 0x3

    if-eq v0, v5, :cond_33

    if-ne v0, v6, :cond_32

    const/4 v0, 0x1

    goto :goto_16

    :cond_32
    const/4 v0, 0x0

    goto :goto_16

    :cond_33
    const/4 v0, 0x1

    :goto_16
    iget-boolean v5, v1, Lewz;->n:Z

    if-eqz v5, :cond_35

    if-nez v0, :cond_35

    iget-object v0, v1, Lewz;->P:[F

    iget-object v5, v1, Lewz;->E:Lexs;

    invoke-virtual {v5}, Lexs;->f()[F

    move-result-object v5

    aget v5, v5, v25

    neg-float v5, v5

    const/16 v7, 0xbe2

    invoke-static {v7}, Landroid/opengl/GLES20;->glEnable(I)V
    :try_end_10
    .catch Lewi; {:try_start_10 .. :try_end_10} :catch_5

    const v7, 0x3eb2b8c2

    cmpl-float v7, v5, v7

    if-lez v7, :cond_34

    :try_start_11
    iget-object v7, v1, Lewz;->k:Lext;

    invoke-virtual {v7}, Lewj;->c()V

    iget-object v7, v1, Lewz;->k:Lext;

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v7, v8}, Lext;->j(F)V

    iget-object v7, v1, Lewz;->g:Lewg;

    invoke-virtual {v7, v0}, Lewh;->a([F)V

    goto :goto_17

    :catch_4
    move-exception v0

    goto :goto_18

    :cond_34
    :goto_17
    const v7, -0x414d473e

    cmpg-float v5, v5, v7

    if-gez v5, :cond_35

    iget-object v5, v1, Lewz;->k:Lext;

    invoke-virtual {v5}, Lewj;->c()V

    iget-object v5, v1, Lewz;->k:Lext;

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v5, v7}, Lext;->j(F)V

    iget-object v5, v1, Lewz;->f:Lewg;

    invoke-virtual {v5, v0}, Lewh;->a([F)V
    :try_end_11
    .catch Lewi; {:try_start_11 .. :try_end_11} :catch_4

    goto :goto_19

    :goto_18
    :try_start_12
    invoke-virtual {v0}, Lewi;->printStackTrace()V

    :cond_35
    :goto_19
    if-eqz v4, :cond_37

    const/4 v5, -0x1

    if-ne v4, v5, :cond_36

    const/4 v3, 0x1

    goto :goto_1a

    :cond_36
    :goto_1a
    iget-object v0, v1, Lewz;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    new-instance v4, Lbnd;

    const/16 v5, 0xc

    invoke-direct {v4, v0, v3, v5}, Lbnd;-><init>(Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;ZI)V

    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b

    :cond_37
    iget-object v0, v1, Lewz;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    new-instance v3, Levi;

    invoke-direct {v3, v0, v6}, Levi;-><init>(Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;I)V

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->post(Ljava/lang/Runnable;)Z
    :try_end_12
    .catch Lewi; {:try_start_12 .. :try_end_12} :catch_5

    goto :goto_1b

    :cond_38
    :try_start_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "State is not ready."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v16
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    throw v0
    :try_end_14
    .catch Lewi; {:try_start_14 .. :try_end_14} :catch_5

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lewi;->printStackTrace()V

    :cond_39
    :goto_1b
    iget v0, v1, Lewz;->p:I

    iget v3, v1, Lewz;->o:I

    iput v3, v1, Lewz;->p:I

    iput v0, v1, Lewz;->o:I

    iget v0, v1, Lewz;->af:I

    add-int/2addr v0, v2

    iput v0, v1, Lewz;->af:I

    return-void

    :catchall_3
    move-exception v0

    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    throw v0

    :cond_3a
    :goto_1c
    return-void

    :cond_3b
    return-void

    :cond_3c
    :goto_1d
    return-void
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    iget p1, p0, Lewz;->ab:I

    if-ne p2, p1, :cond_0

    iget p1, p0, Lewz;->ac:I

    if-ne p3, p1, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lewz;->ab:I

    iput p3, p0, Lewz;->ac:I

    iput p2, p0, Lewz;->Z:I

    iput p3, p0, Lewz;->aa:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lewz;->Y:Z

    iput-boolean p1, p0, Lewz;->z:Z

    return-void
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 5

    const/4 p1, 0x0

    :try_start_0
    iget p2, p0, Lewz;->au:F

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    iget-object p2, p0, Lewz;->F:Leww;

    invoke-virtual {p2}, Leww;->a()F

    move-result p2

    iput p2, p0, Lewz;->au:F

    :cond_0
    const v1, 0x3fd9999a    # 1.7f

    invoke-static {p2, v1}, Lewz;->l(FF)F

    move-result p2

    iput p2, p0, Lewz;->U:F

    iget p2, p0, Lewz;->au:F

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {p2, v1}, Lewz;->l(FF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lewz;->W:I

    iget p2, p0, Lewz;->au:F

    const v1, 0x3f8ccccd    # 1.1f

    invoke-static {p2, v1}, Lewz;->l(FF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lewz;->X:I

    iget p2, p0, Lewz;->U:F

    iput p2, p0, Lewz;->T:F

    invoke-direct {p0, p2}, Lewz;->g(F)F

    move-result p2

    iput p2, p0, Lewz;->V:F

    new-instance p2, Lewj;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lewj;-><init>([B)V

    iput-object p2, p0, Lewz;->H:Lewj;

    new-instance p2, Lewk;

    invoke-direct {p2}, Lewk;-><init>()V

    iput-object p2, p0, Lewz;->j:Lewk;

    new-instance p2, Lewj;

    invoke-direct {p2, v1}, Lewj;-><init>([C)V

    iput-object p2, p0, Lewz;->I:Lewj;

    new-instance p2, Lexv;

    invoke-direct {p2}, Lexv;-><init>()V

    iput-object p2, p0, Lewz;->i:Lexv;

    iget-object p2, p0, Lewz;->j:Lewk;

    sget-object v1, Lewc;->a:[F

    invoke-virtual {p2, v1}, Lewk;->j([F)V

    new-instance p2, Lexe;

    iget-object v1, p0, Lewz;->b:Lexc;

    invoke-direct {p2, v1}, Lexe;-><init>(Lexc;)V

    iput-object p2, p0, Lewz;->c:Lexe;

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    new-instance p2, Lexa;

    invoke-direct {p2}, Lexa;-><init>()V

    iput-object p2, p0, Lewz;->a:Lewh;

    iget-object p2, p0, Lewz;->b:Lexc;

    iget-object v1, p0, Lewz;->i:Lexv;

    iput-object v1, p2, Lewh;->e:Lewj;

    iget-object v1, p0, Lewz;->j:Lewk;

    iput-object v1, p2, Lexc;->j:Lewj;

    iget-boolean v1, p0, Lewz;->D:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, p2, Lexc;->m:Z

    iput-boolean v2, p2, Lexc;->l:Z

    :cond_1
    iget-object p2, p0, Lewz;->Q:[F

    invoke-static {p2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p2, p0, Lewz;->Q:[F

    aput v0, p2, p1

    const/high16 v1, -0x40800000    # -1.0f

    aput v1, p2, v2

    const/4 v1, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, p2, v1

    const/4 v1, 0x5

    aput v0, p2, v1

    iget-object p2, p0, Lewz;->S:[F

    invoke-static {p2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    sget-object p2, Lewc;->b:[F

    aget v0, p2, p1

    aget v1, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x3

    aget p2, p2, v4

    invoke-static {v0, v1, v3, p2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iput-boolean v2, p0, Lewz;->m:Z

    iget-boolean p2, p0, Lewz;->w:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lewz;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-virtual {p2, v2, p1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->d(ZI)V

    :cond_2
    iget-object p2, p0, Lewz;->R:[F

    invoke-static {p2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
    :try_end_0
    .catch Lewi; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lewi;->printStackTrace()V

    :goto_0
    iput-boolean p1, p0, Lewz;->z:Z

    return-void
.end method
