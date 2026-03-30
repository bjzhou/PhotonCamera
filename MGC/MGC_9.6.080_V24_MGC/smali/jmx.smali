.class public final Ljmx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field public A:I

.field public B:I

.field public C:[B

.field public D:Z

.field public E:Ljnq;

.field public F:Ljmu;

.field public G:I

.field public H:Ljmh;

.field public I:Ljmh;

.field private final J:Ljnd;

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

.field public a:Ljmf;

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:Z

.field private ae:Z

.field private af:I

.field private ag:Z

.field private final ah:Ljava/util/ArrayList;

.field private ai:Z

.field private aj:Ljnl;

.field private ak:Ljnl;

.field private al:Z

.field private am:J

.field private an:Z

.field private ao:D

.field private ap:D

.field private final aq:Ljava/util/Vector;

.field private final ar:Landroid/content/Context;

.field private as:I

.field private at:F

.field private final au:Ljava/util/HashMap;

.field private final av:Llad;

.field private final aw:Ljmm;

.field public final b:Ljna;

.field public c:Ljnc;

.field public final d:Ljng;

.field public final e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

.field public f:Ljme;

.field public g:Ljme;

.field public h:Ljne;

.field public i:Ljnt;

.field public j:Ljmi;

.field public k:Ljnr;

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

.field public y:Ljnh;

.field public z:Z


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljnc;->b()I

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Ljmx;->c:Ljnc;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljnc;->b()I

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ljmx;->c:Ljnc;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized 19e596a3e324281407eb5c11093c0152m(Z)V
    .locals 13

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    const-string v0, "State is not ready."

    nop

    nop

    nop

    nop

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw p1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_1
    iget-boolean p1, p0, Ljmx;->r:Z

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_3

    nop

    iget-object p1, p0, Ljmx;->ah:Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    nop

    nop

    nop

    nop

    if-nez p1, :cond_2

    nop

    nop

    iget-object p1, p0, Ljmx;->ah:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Ljava/lang/Integer;

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    iget-object v0, p0, Ljmx;->ah:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Ljmx;->c:Ljnc;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1, v5}, Ljnc;->e(IZ)V

    :cond_2
    iget-object p1, p0, Ljmx;->d:Ljng;

    nop

    nop

    invoke-virtual {p1}, Ljng;->a()V

    iget-object p1, p0, Ljmx;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Ljmx;->w:Z

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljmx;->F:Ljmu;

    nop

    iget v1, v1, Ljmu;->n:I

    nop

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->d(ZI)V

    iput-boolean v6, p0, Ljmx;->r:Z

    nop

    nop

    nop

    :cond_3
    iget-object p1, p0, Ljmx;->h:Ljne;

    nop

    nop

    nop

    iget-boolean p1, p1, Ljne;->h:Z

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_9

    nop

    nop

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->TargetHit()Z

    move-result p1

    nop

    nop

    invoke-static {}, Ljmp;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    iget-boolean v1, p0, Ljmx;->v:Z

    nop

    nop

    nop

    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljmx;->h:Ljne;

    nop

    iget-boolean v1, v1, Ljne;->g:Z

    nop

    nop

    nop

    nop

    if-nez v1, :cond_6

    nop

    if-eqz p1, :cond_6

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_6

    nop

    nop

    iget-object v0, p0, Ljmx;->F:Ljmu;

    nop

    iget-boolean v1, v0, Ljmu;->s:Z

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    iput-boolean v5, p0, Ljmx;->v:Z

    nop

    nop

    nop

    iget-object p1, v0, Ljmu;->c:Ljmb;

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Ljmv;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0, v6}, Ljmv;-><init>(Ljava/lang/Object;I)V

    iget-boolean v1, p1, Ljmb;->d:Z

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    iget-object v1, p1, Ljmb;->b:Lfgv;

    nop

    nop

    invoke-virtual {v1}, Lfgv;->f()Lfhn;

    move-result-object v1

    nop

    nop

    nop

    sget-object v2, Lfhd;->a:Lfhd;

    nop

    nop

    iput-object v2, v1, Lfhn;->s:Lfhd;

    nop

    nop

    nop

    iget-object v2, p1, Ljmb;->b:Lfgv;

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lfgv;->m(Lfhn;)V

    iget-object v1, p1, Ljmb;->b:Lfgv;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Ljmb;->a:Landroid/os/Handler;

    nop

    invoke-virtual {v1, p1, v0}, Lfgv;->j(Landroid/os/Handler;Lfgp;)V

    goto :goto_2

    nop

    nop

    nop

    nop

    :cond_4
    invoke-interface {v0, v5, v2}, Lfgp;->a(ZLfgv;)V

    goto :goto_2

    nop

    nop

    :cond_5
    move v0, v6

    nop

    nop

    nop

    :cond_6
    iget-object v1, p0, Ljmx;->h:Ljne;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v2, v1, Ljne;->g:Z

    nop

    if-eqz v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_7

    nop

    nop

    nop

    nop

    nop

    iget-boolean p1, p0, Ljmx;->ag:Z

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_7

    nop

    nop

    nop

    if-eqz v0, :cond_8

    nop

    nop

    nop

    :cond_7
    invoke-virtual {v1}, Ljne;->a()V

    :cond_8
    :goto_2
    iget-boolean p1, p0, Ljmx;->t:Z

    nop

    if-eqz p1, :cond_9

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Ljmx;->h:Ljne;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljne;->a()V

    :cond_9
    iput-boolean v6, p0, Ljmx;->z:Z

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string v0, "State is not ready."

    nop

    nop

    nop

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    monitor-exit v7

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p1

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_b
    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_c
    goto/32 :goto_3

    nop

    :goto_8
    const v1, 0x6

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    :try_start_4
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    throw p1

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    iget-object v0, p0, Ljmx;->h:Ljne;

    nop

    if-eqz v0, :cond_b

    nop

    nop

    iget-boolean v1, p0, Ljmx;->m:Z

    nop

    if-nez v1, :cond_d

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_d
    iget-object v1, p0, Ljmx;->y:Ljnh;

    nop

    iget-object v2, p0, Ljmx;->C:[B

    nop

    nop

    nop

    nop

    iget v3, p0, Ljmx;->A:I

    nop

    nop

    nop

    iget v4, p0, Ljmx;->B:I

    nop

    nop

    nop

    iget-boolean v0, v0, Ljne;->h:Z

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    if-eqz v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljmx;->F:Ljmu;

    nop

    nop

    nop

    iget-boolean v0, v0, Ljmu;->s:Z

    nop

    nop

    if-eqz v0, :cond_e

    nop

    nop

    move v0, v5

    nop

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    nop

    :cond_e
    move v0, v6

    nop

    nop

    nop

    :goto_13
    if-nez v2, :cond_f

    nop

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_f
    sget-object v7, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v7

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    sget-object v8, Ljmp;->b:Ljava/lang/Boolean;

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    nop

    nop

    nop

    if-eqz v8, :cond_a

    nop

    invoke-static {v2, v3, v4, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ProcessFrame([BIIZ)[F

    move-result-object v0

    nop

    monitor-exit v7

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iput-object v0, v1, Ljnh;->c:[F

    nop

    nop

    nop

    iget-object v0, v1, Ljnh;->c:[F

    nop

    nop

    nop

    nop

    nop

    aget v0, v0, v6

    nop

    nop

    nop

    nop

    const/high16 v2, -0x40800000    # -1.0f

    nop

    nop

    cmpl-float v0, v0, v2

    nop

    nop

    nop

    if-eqz v0, :cond_10

    nop

    nop

    nop

    nop

    nop

    move v0, v5

    nop

    goto :goto_14

    nop

    :cond_10
    move v0, v6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v0, v1, Ljnh;->a:Z

    nop

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->TakeNewPhoto()Z

    move-result v0

    nop

    iput-boolean v0, v1, Ljnh;->b:Z

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Ljmx;->as:I

    nop

    nop

    add-int/2addr v0, v5

    nop

    nop

    iput v0, p0, Ljmx;->as:I

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_b

    nop

    nop

    nop

    nop

    iget-object p1, p0, Ljmx;->y:Ljnh;

    nop

    nop

    iget-boolean p1, p1, Ljnh;->a:Z

    nop

    nop

    nop

    nop

    iput-boolean p1, p0, Ljmx;->ad:Z

    nop

    nop

    sget-object v0, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->MovingTooFast()Z

    move-result v0

    nop

    nop

    iput-boolean v0, p0, Ljmx;->ag:Z

    nop

    iget-object v0, p0, Ljmx;->y:Ljnh;

    nop

    nop

    nop

    nop

    iget-boolean v1, v0, Ljnh;->b:Z

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    iget-boolean p1, p0, Ljmx;->t:Z

    nop

    nop

    if-nez p1, :cond_1

    nop

    nop

    nop

    iget-object p1, v0, Ljnh;->c:[F

    nop

    iget-object v0, p0, Ljmx;->c:Ljnc;

    nop

    nop

    nop

    new-instance v1, Ljnb;

    nop

    invoke-direct {v1}, Ljnb;-><init>()V

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, [F

    nop

    nop

    nop

    nop

    iput-object v3, v1, Ljnb;->b:[F

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v1, Ljnb;->b:[F

    nop

    iget-object v4, v1, Ljnb;->a:[F

    nop

    iget-object v11, v0, Ljnc;->g:[F

    nop

    nop

    aget v7, v3, v6

    nop

    nop

    nop

    nop

    aput v7, v11, v6

    nop

    nop

    aget v7, v3, v5

    nop

    nop

    nop

    nop

    nop

    aput v7, v11, v5

    nop

    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    nop

    aget v8, v3, v7

    nop

    aput v8, v11, v7

    nop

    nop

    nop

    const/4 v7, 0x3

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    aput v8, v11, v7

    nop

    nop

    nop

    nop

    nop

    aget v7, v3, v7

    nop

    nop

    nop

    nop

    const/4 v9, 0x4

    nop

    nop

    nop

    nop

    nop

    aput v7, v11, v9

    nop

    nop

    aget v7, v3, v9

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x5

    nop

    nop

    nop

    aput v7, v11, v9

    nop

    aget v7, v3, v9

    nop

    nop

    nop

    const/4 v9, 0x6

    nop

    nop

    nop

    nop

    aput v7, v11, v9

    nop

    nop

    nop

    nop

    const/4 v7, 0x7

    nop

    aput v8, v11, v7

    nop

    nop

    nop

    nop

    nop

    aget v9, v3, v9

    nop

    nop

    nop

    const/16 v10, 0x8

    nop

    aput v9, v11, v10

    nop

    nop

    nop

    nop

    aget v7, v3, v7

    nop

    nop

    nop

    nop

    nop

    const/16 v9, 0x9

    nop

    nop

    aput v7, v11, v9

    nop

    nop

    nop

    aget v3, v3, v10

    nop

    nop

    const/16 v7, 0xa

    nop

    aput v3, v11, v7

    nop

    nop

    nop

    nop

    const/16 v3, 0xe

    nop

    nop

    nop

    nop

    nop

    aput v8, v11, v3

    nop

    nop

    const/16 v3, 0xd

    nop

    nop

    nop

    nop

    aput v8, v11, v3

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0xc

    nop

    nop

    aput v8, v11, v3

    nop

    nop

    const/16 v3, 0xb

    nop

    aput v8, v11, v3

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0xf

    nop

    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    aput v7, v11, v3

    nop

    nop

    nop

    iget-object v7, v0, Ljnc;->f:[F

    nop

    nop

    iget-object v9, v0, Ljnc;->h:[F

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v3, v0, Ljnc;->f:[F

    nop

    nop

    invoke-static {v4, v6, v3, v6}, Landroid/opengl/Matrix;->transposeM([FI[FI)V

    const v3, 0x3dcccccd    # 0.1f

    nop

    nop

    nop

    iput v3, v1, Ljnb;->e:F

    nop

    nop

    nop

    nop

    new-instance v3, Loql;

    nop

    nop

    invoke-direct {v3, v2, v2}, Loql;-><init>([B[B)V

    iput-object v3, v1, Ljnb;->i:Loql;

    nop

    iget-object v3, v1, Ljnb;->i:Loql;

    nop

    nop

    nop

    iget v3, v3, Loql;->a:I

    nop

    nop

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->CreateFrameTexture(I)V

    new-instance v3, Loql;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v2, v2}, Loql;-><init>([B[B)V

    iput-object v3, v1, Ljnb;->j:Loql;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Ljnc;->j:Ljava/util/Vector;

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Ljnb;->j:Loql;

    nop

    nop

    iget v0, v0, Loql;->a:I

    nop

    nop

    nop

    nop

    sget-object v1, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v1

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    sget-object v3, Ljmp;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    nop

    if-eqz v3, :cond_0

    nop

    nop

    invoke-static {p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->AddImage([F)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v1, p0, Ljmx;->c:Ljnc;

    nop

    nop

    invoke-virtual {v1}, Ljnc;->b()I

    move-result v1

    nop

    add-int/lit8 v4, v1, -0x1

    nop

    nop

    nop

    nop

    iget-object v7, p0, Ljmx;->F:Ljmu;

    nop

    nop

    nop

    nop

    iget-boolean v8, v7, Ljmu;->r:Z

    nop

    if-nez v8, :cond_11

    nop

    nop

    nop

    nop

    iget-boolean v8, v7, Ljmu;->s:Z

    nop

    if-eqz v8, :cond_11

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v7, Ljmu;->E:Ljava/util/List;

    nop

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v5, v7, Ljmu;->r:Z

    nop

    nop

    new-instance v3, Ljmq;

    nop

    nop

    invoke-direct {v3, v7}, Ljmq;-><init>(Ljmu;)V

    new-array v8, v6, [Ljava/lang/Void;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v8}, Ljmq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v3, v7, Ljmu;->D:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v7, Ljmu;->m:Ljava/util/Vector;

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Ljava/util/Vector;->setSize(I)V

    iget-object p1, v7, Ljmu;->m:Ljava/util/Vector;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v4, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget-object p1, p0, Ljmx;->c:Ljnc;

    nop

    nop

    nop

    invoke-virtual {p1, v4, v6}, Ljnc;->e(IZ)V

    iget-object p1, p0, Ljmx;->ah:Ljava/util/ArrayList;

    nop

    nop

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v5, p0, Ljmx;->q:Z

    nop

    nop

    nop

    invoke-direct {p0}, Ljmx;->1478a1c7833aac5e360e0ba4b0c0c568m()V

    iput-boolean v6, p0, Ljmx;->n:Z

    nop

    nop

    nop

    nop

    iget-object p1, p0, Ljmx;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    invoke-virtual {p1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->a()V

    iput-boolean v6, p0, Ljmx;->an:Z

    nop

    nop

    iput-boolean v6, p0, Ljmx;->al:Z

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljnd;Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;Llad;)V
    .locals 3

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    iput-object v1, p0, Ljmx;->P:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide v1, p0, Ljmx;->ap:D

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    iput v0, p0, Ljmx;->U:F

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Ljmx;->ag:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_7
    iput v1, p0, Ljmx;->x:I

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_8
    iput-wide v1, p0, Ljmx;->am:J

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_9
    iput-boolean v0, p0, Ljmx;->m:Z

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_a
    const/high16 v0, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    new-array v1, v0, [F

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0}, Ljna;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    iput-wide v1, p0, Ljmx;->ao:D

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    iput-boolean v0, p0, Ljmx;->ai:Z

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Ljmx;->B:I

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_11
    const/high16 v0, 0x42700000    # 60.0f

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Ljmx;->b:Ljna;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Ljmx;->af:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p2, p0, Ljmx;->J:Ljnd;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_15
    iput-boolean v0, p0, Ljmx;->z:Z

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput v0, p0, Ljmx;->X:I

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_19
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_1a
    new-array v1, v0, [F

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_1b
    iput-boolean v0, p0, Ljmx;->t:Z

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v1, p0, Ljmx;->Q:[F

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_1d
    goto/32 :goto_48

    nop

    :goto_1e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/high16 v0, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-boolean v0, p0, Ljmx;->r:Z

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object p3, p0, Ljmx;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v1, p0, Ljmx;->K:[F

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v2, p0, Ljmx;->ah:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_27
    iput-boolean v1, p0, Ljmx;->n:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v0, 0x78

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-boolean v0, p0, Ljmx;->w:Z

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2a
    iput-boolean v0, p0, Ljmx;->an:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v1}, Ljmm;-><init>()V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object v1, p0, Ljmx;->M:[F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2d
    iput-boolean v0, p0, Ljmx;->D:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-boolean v0, p0, Ljmx;->Y:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2f
    iput-boolean v0, p0, Ljmx;->s:Z

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x7f140268

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_31
    iput-boolean v0, p0, Ljmx;->v:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_32
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_33
    iput v0, p0, Ljmx;->at:F

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_34
    iput-boolean v0, p0, Ljmx;->u:Z

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_36
    iput-object p2, p0, Ljmx;->d:Ljng;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_38
    iput-boolean v0, p0, Ljmx;->ae:Z

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_39
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3a
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput v0, p0, Ljmx;->as:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3c
    const/16 v0, 0x50

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1e

    nop

    nop

    :goto_3e
    iput-object v1, p0, Ljmx;->aq:Ljava/util/Vector;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3f
    iput-object v1, p0, Ljmx;->O:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    new-instance v1, Ljava/util/Vector;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_41
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iput-boolean v0, p0, Ljmx;->al:Z

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_43
    iput-object v1, p0, Ljmx;->R:[F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_44
    new-instance p2, Ljng;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_45
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_46
    iput v1, p0, Ljmx;->G:I

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_47
    return-void

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_3d

    nop

    nop

    :goto_49
    const-wide/16 v1, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4a
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4b
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_4c
    iput v0, p0, Ljmx;->W:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_4d
    new-instance v0, Ljava/util/HashMap;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4e
    iput-object v0, p0, Ljmx;->au:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iput v0, p0, Ljmx;->T:F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_50
    iput-object v1, p0, Ljmx;->N:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iput-boolean v0, p0, Ljmx;->l:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_52
    new-instance v0, Ljna;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_53
    iput-object v1, p0, Ljmx;->y:Ljnh;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iput-object v0, p0, Ljmx;->S:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_55
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {p2, p1}, Ljng;-><init>(Landroid/content/Context;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iput-object v1, p0, Ljmx;->aw:Ljmm;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_59
    iput v0, p0, Ljmx;->A:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_5b
    iput-object v1, p0, Ljmx;->C:[B

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_5c
    new-instance v1, Ljmm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_5d
    iput v0, p0, Ljmx;->V:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iput-object v1, p0, Ljmx;->L:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_5f
    iput-object p1, p0, Ljmx;->ar:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_60
    iput-object p4, p0, Ljmx;->av:Llad;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iput-boolean v0, p0, Ljmx;->q:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(F)F
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    double-to-float p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v1, p0, Ljmx;->ac:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    div-double/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    div-double/2addr p0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-double/2addr p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    int-to-double v3, v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_d
    return p1

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    :goto_f
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    float-to-double v1, p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget p0, p0, Ljmx;->ac:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    add-double/2addr v3, v3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_18
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Ljmx;->ab:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1a
    if-lt v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    :goto_1b
    div-double/2addr v3, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1c
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1d
    int-to-double p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-double/2addr v1, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop
.end method

.method private static final j(II)I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr p0, p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    mul-int/lit8 p0, p0, 0x1f

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method private static final k(I)Ljnl;
    .locals 2

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Ljnn;-><init>(Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljnk;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq p0, v1, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v1}, Ljnn;-><init>(Z)V

    goto/32 :goto_4

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljno;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    new-instance p0, Ljnm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljnm;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    :goto_12
    goto/32 :goto_26

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p0, Ljnk;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    :goto_19
    const v1, 0x1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1e
    if-eq p0, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_20
    if-eq p0, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance p0, Ljnn;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eq p0, v0, :cond_4

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    :goto_24
    new-instance p0, Ljnn;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_25
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_26
    const/4 p0, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_28
    new-instance p0, Ljno;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eq p0, v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final l(FF)F
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xa

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-wide v0, 0x405ca5dc1a63c1f8L    # 114.59155902616465

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    div-double/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    const v0, 0x14

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    double-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    mul-double/2addr v0, v2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    mul-double/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_f
    float-to-double v0, p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    mul-double/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    mul-double/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    float-to-double p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    const-wide v2, 0x4066800000000000L    # 180.0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Ljmx;->l:Z

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iget p1, p0, Ljmx;->U:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Ljmx;->T:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Ljmx;->e(F)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    div-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Ljmx;->a(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x5

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Ljmx;->U:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Ljmx;->T:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Ljmx;->q:Z

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ljmx;->c:Ljnc;

    nop

    nop

    invoke-virtual {v0}, Ljnc;->b()I

    move-result v0

    nop

    iget-object v1, p0, Ljmx;->c:Ljnc;

    nop

    nop

    nop

    iget-object v2, v1, Ljnc;->j:Ljava/util/Vector;

    nop

    monitor-enter v2

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, v1, Ljnc;->j:Ljava/util/Vector;

    nop

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    nop

    nop

    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Ljnc;->j:Ljava/util/Vector;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    nop

    nop

    nop

    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_1
    monitor-exit v2

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_a
    :try_start_3
    iget-object v1, p0, Ljmx;->aq:Ljava/util/Vector;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    nop

    if-le v1, v0, :cond_2

    nop

    nop

    nop

    iget-object v1, p0, Ljmx;->aq:Ljava/util/Vector;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    nop

    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v1, p0, Ljmx;->aq:Ljava/util/Vector;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-ne v1, v0, :cond_3

    nop

    nop

    nop

    iget-wide v0, p0, Ljmx;->ao:D

    nop

    nop

    iget-object v2, p0, Ljmx;->aq:Ljava/util/Vector;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Double;

    nop

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    sub-double/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Ljmx;->ao:D

    nop

    nop

    nop

    const-wide v2, 0x4046800000000000L    # 45.0

    nop

    nop

    div-double/2addr v0, v2

    nop

    nop

    iput-wide v0, p0, Ljmx;->ap:D

    nop

    iget-object v0, p0, Ljmx;->aq:Ljava/util/Vector;

    nop

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_3
    invoke-direct {p0}, Ljmx;->1478a1c7833aac5e360e0ba4b0c0c568m()V

    new-instance v0, Ljmw;

    nop

    nop

    invoke-direct {v0, p0}, Ljmw;-><init>(Ljmx;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_5
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final e(F)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Ljmx;->V:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Ljmx;->U:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Ljmx;->T:F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Ljmx;->U:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    div-float/2addr v0, p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1}, Ljmx;->d5484163cd8d335e6b17663474ff5f2bm(F)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput p1, p0, Ljmx;->U:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Ljmx;->X:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    iget p1, p0, Ljmx;->W:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(I)V
    .locals 6

    goto/32 :goto_6

    nop

    nop

    :goto_0
    add-int/lit8 v2, p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Ljmx;->k(I)Ljnl;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, v5}, Ljng;->e(I)V

    goto/32 :goto_4e

    nop

    nop

    :goto_4
    if-ne v2, v4, :cond_0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Ljmx;->k(I)Ljnl;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v4, p0, Ljmx;->w:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    if-ne v2, v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_2c

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_30

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Ljmm;->b()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Ljmx;->aw:Ljmm;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_d
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput p1, p0, Ljmx;->G:I

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Ljmx;->d:Ljng;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->a()V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Ljmx;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    iput v3, p0, Ljmx;->x:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Ljmm;->b()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v5, 0x3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    if-ne v2, v5, :cond_2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    const v3, 0x7f1406cf

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v2, p0, Ljmx;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, v1}, Ljng;->e(I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v3}, Ljng;->e(I)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto :goto_2c

    nop

    :goto_1f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    const v2, 0x7f140268

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_22
    goto :goto_2c

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->a()V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto :goto_2c

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_29
    goto :goto_2c

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1}, Ljmm;->b()V

    :goto_2c
    goto/32 :goto_5

    nop

    nop

    :goto_2d
    iget-object v1, p0, Ljmx;->d:Ljng;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2e
    iput v3, p0, Ljmx;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1, v5}, Ljng;->e(I)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Ljmx;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->a()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-ne v2, v3, :cond_4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_33
    iget v3, v3, Ljmu;->n:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_34
    const/4 v1, 0x0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_35
    iput-boolean v4, p0, Ljmx;->ai:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_36
    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->a()V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput v3, p0, Ljmx;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_38
    iput v2, p0, Ljmx;->x:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_39
    iget-object v3, p0, Ljmx;->F:Ljmu;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1, v4}, Ljng;->e(I)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_3b
    iput-object v0, p0, Ljmx;->aj:Ljnl;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v1, p0, Ljmx;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v1, p0, Ljmx;->aw:Ljmm;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3e
    iput-boolean v4, p0, Ljmx;->ai:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v1, p0, Ljmx;->aw:Ljmm;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    :goto_42
    iget-object v1, p0, Ljmx;->d:Ljng;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v2, v1, v3}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->d(ZI)V

    goto/32 :goto_7

    nop

    nop

    :goto_44
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_45
    iget-object v1, p0, Ljmx;->d:Ljng;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput-boolean v1, p0, Ljmx;->w:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-ne v2, v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v1, p0, Ljmx;->d:Ljng;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_4b
    iput-boolean v4, p0, Ljmx;->ai:Z

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_4c
    invoke-virtual {v1}, Ljmm;->b()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v3, 0x5

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_4e
    iput-boolean v4, p0, Ljmx;->ai:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v1, p0, Ljmx;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_50
    iget v0, p0, Ljmx;->G:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iput-object p1, p0, Ljmx;->ak:Ljnl;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_52
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_53
    const/4 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v1, p0, Ljmx;->aw:Ljmm;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 41

    goto/32 :goto_172

    nop

    nop

    :goto_0
    iget-object v0, v10, Ljng;->f:Ljmj;

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    :goto_1
    iget-object v12, v1, Ljmx;->E:Ljnq;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_2
    iget-wide v7, v1, Ljmx;->ap:D

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_c1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v25, 0x0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_6
    float-to-double v7, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_7
    int-to-float v0, v11

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_9
    iget v11, v1, Ljmx;->ab:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    :goto_a
    cmpg-double v0, v7, v9

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_b
    iput-object v0, v10, Ljng;->e:Ljmj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    :goto_c
    iget v10, v1, Ljmx;->ac:I

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    mul-double v16, v16, v13

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_e
    iget v0, v1, Ljmx;->af:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v13}, Ljme;->b(Landroid/graphics/PointF;)V

    goto/32 :goto_af

    nop

    nop

    :goto_10
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_11
    invoke-static {v4, v4, v0, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_5c

    nop

    nop

    :goto_13
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_15
    iget-object v0, v1, Ljmx;->E:Ljnq;

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, v1, Ljmx;->f:Ljme;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_17
    iget-boolean v10, v1, Ljmx;->ai:Z

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v7, v8}, Ljnq;->c(D)V

    goto/32 :goto_147

    nop

    nop

    nop

    :goto_19
    iget-object v2, v1, Ljmx;->k:Ljnr;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1a
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v2, v0, Ljmf;->e:Ljmh;

    nop

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    :goto_1c
    iget-wide v9, v1, Ljmx;->ao:D

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    goto/32 :goto_10d

    nop

    nop

    :goto_1e
    sub-int/2addr v10, v0

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {}, Loql;->b()I

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_20
    iget v5, v1, Ljmx;->aa:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ljmg;->printStackTrace()V

    :goto_22
    goto/32 :goto_1c4

    nop

    nop

    nop

    :goto_23
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->UpdateFrameTexture(I)V

    :goto_24
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    div-float/2addr v0, v9

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_26
    iget-boolean v0, v1, Ljmx;->m:Z

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_28
    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_29
    move/from16 v20, v11

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_2a
    if-nez v0, :cond_0

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_0
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sub-double/2addr v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v5, Loql;

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_2d
    invoke-static/range {v16 .. v23}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {}, Loql;->a()I

    move-result v0

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Ljmg;->printStackTrace()V

    :goto_30
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v0, v1, Ljmx;->ab:I

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v5}, Ljnc;->b()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v6, v1, Ljmx;->B:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_34
    move-object/from16 v26, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v5, v6}, Ljnq;->c(D)V

    goto/32 :goto_17b

    nop

    nop

    :goto_36
    goto/16 :goto_15e

    nop

    nop

    :goto_37
    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    :goto_38
    move v5, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_39
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_3a
    add-double/2addr v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    mul-double/2addr v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto :goto_40

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v15

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw v0

    nop
    :try_end_1
    .catch Ljmg; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {v0}, Ljmg;->printStackTrace()V

    :cond_1
    :goto_40
    const/16 v2, 0x302

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0x303

    nop

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget v0, v1, Ljmx;->G:I

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    if-eq v0, v2, :cond_4

    nop

    iget-boolean v0, v1, Ljmx;->u:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/16 :goto_41

    nop

    :cond_2
    iget-object v0, v1, Ljmx;->aw:Ljmm;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljmm;->a()D

    move-result-wide v2

    nop

    nop

    nop

    iget-object v8, v1, Ljmx;->L:[F

    nop

    nop

    iget-object v10, v1, Ljmx;->M:[F

    nop

    nop

    nop

    nop

    iget-object v12, v1, Ljmx;->N:[F

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    const/4 v9, 0x0

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-boolean v0, v1, Ljmx;->ai:Z

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    iget-object v8, v1, Ljmx;->aj:Ljnl;

    nop

    nop

    nop

    nop

    double-to-float v0, v2

    nop

    nop

    nop

    sub-float v9, v7, v0

    nop

    nop

    nop

    iget-object v10, v1, Ljmx;->d:Ljng;

    nop

    nop

    nop

    nop

    iget-object v11, v1, Ljmx;->P:[F

    nop

    iget v12, v1, Ljmx;->ab:I

    nop

    nop

    nop

    nop

    nop

    iget v13, v1, Ljmx;->ac:I

    nop

    nop

    invoke-interface/range {v8 .. v13}, Ljnl;->a(FLjng;[FII)V

    iget-object v0, v1, Ljmx;->aw:Ljmm;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v2, v0, Ljmm;->a:Z

    nop

    nop

    nop

    if-eqz v2, :cond_4

    nop

    invoke-virtual {v0}, Ljmm;->b()V

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-boolean v2, v1, Ljmx;->ai:Z

    nop

    nop

    nop

    nop

    nop

    goto :goto_41

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v0, v1, Ljmx;->ak:Ljnl;

    nop

    nop

    nop

    nop

    double-to-float v4, v2

    nop

    nop

    nop

    iget-object v5, v1, Ljmx;->d:Ljng;

    nop

    iget-object v6, v1, Ljmx;->P:[F

    nop

    nop

    nop

    iget v7, v1, Ljmx;->ab:I

    nop

    nop

    iget v8, v1, Ljmx;->ac:I

    nop

    nop

    nop

    nop

    nop

    move-object v3, v0

    nop

    nop

    invoke-interface/range {v3 .. v8}, Ljnl;->a(FLjng;[FII)V

    :cond_4
    :goto_41
    const/16 v2, 0xbe2

    nop

    nop

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v3, 0xb71

    nop

    nop

    nop

    nop

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v4, 0x302

    nop

    nop

    nop

    const/16 v5, 0x303

    nop

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    invoke-static {}, Ljmp;->a()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_8

    nop

    nop

    nop

    nop

    iget-boolean v0, v1, Ljmx;->an:Z

    nop

    nop

    if-nez v0, :cond_5

    nop

    nop

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->PhotoSkippedTooFast()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_5

    nop

    const/4 v2, 0x1

    nop

    nop

    iput-boolean v2, v1, Ljmx;->an:Z

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    iput-boolean v2, v1, Ljmx;->al:Z

    nop

    :cond_5
    iget-boolean v0, v1, Ljmx;->an:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->PhotoSkippedTooFast()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_6

    nop

    const/4 v2, 0x0

    nop

    nop

    iput-boolean v2, v1, Ljmx;->an:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    iput-boolean v2, v1, Ljmx;->al:Z

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    nop

    nop

    iput-wide v2, v1, Ljmx;->am:J

    nop

    nop

    nop

    nop

    :cond_6
    iget-boolean v0, v1, Ljmx;->al:Z

    nop

    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    nop

    iget-wide v4, v1, Ljmx;->am:J

    nop

    nop

    nop

    sub-long/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    long-to-double v2, v2

    nop

    nop

    nop

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    nop

    nop

    div-double/2addr v2, v4

    nop

    nop

    nop

    nop

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    nop

    nop

    nop

    nop

    nop

    cmpl-double v0, v2, v4

    nop

    nop

    nop

    nop

    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    iput-boolean v6, v1, Ljmx;->al:Z

    nop

    iget-object v0, v1, Ljmx;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    const v2, 0x7f0b0409

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    const v3, 0x7f14070e

    nop

    nop

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->c(I)V

    new-instance v3, Ljll;

    nop

    nop

    const/16 v4, 0x9

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v2, v4}, Ljll;-><init>(Landroid/view/View;I)V

    const-wide/16 v4, 0x2ee

    nop

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_42

    nop

    nop

    :cond_7
    const/4 v6, 0x0

    nop

    nop

    :goto_42
    move v4, v6

    nop

    goto :goto_43

    nop

    :cond_8
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    :goto_43
    iget v0, v1, Ljmx;->G:I

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    if-eq v0, v2, :cond_a

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    if-eq v0, v2, :cond_a

    nop

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    if-ne v0, v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_9
    move v0, v6

    nop

    goto :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_a
    :goto_44
    const/4 v0, 0x1

    nop

    :goto_45
    iget-boolean v2, v1, Ljmx;->n:Z

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_f

    nop

    nop

    nop

    nop

    if-nez v0, :cond_f

    nop

    nop

    nop

    iget-object v0, v1, Ljmx;->P:[F

    nop

    nop

    nop

    nop

    iget-object v2, v1, Ljmx;->E:Ljnq;

    nop

    nop

    invoke-virtual {v2}, Ljnq;->f()[F

    move-result-object v2

    nop

    nop

    aget v2, v2, v26

    nop

    nop

    nop

    nop

    nop

    neg-float v2, v2

    nop

    nop

    const/16 v3, 0xbe2

    nop

    nop

    nop

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V
    :try_end_2
    .catch Ljmg; {:try_start_2 .. :try_end_2} :catch_3

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_46
    iget-object v5, v1, Ljmx;->c:Ljnc;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_47
    new-instance v10, Ljne;

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    :goto_48
    iput-object v14, v0, Ljmf;->e:Ljmh;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-wide v7, v1, Ljmx;->ao:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {v0, v5, v6}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitFrameTexture(III)V

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_4b
    iget v13, v1, Ljmx;->ab:I

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/16 v17, 0x0

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v0, :cond_b

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1c6

    nop

    nop

    nop

    :goto_4e
    iget-object v14, v10, Ljng;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v14, v10, Ljng;->g:Ljns;

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v11, v1, Ljmx;->ar:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_51
    move-object/from16 v22, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_52
    neg-float v10, v0

    nop

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    :goto_53
    sub-float v18, v0, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    :goto_54
    iput-object v0, v1, Ljmx;->g:Ljme;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_55
    float-to-double v7, v10

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :goto_56
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/16 v6, 0xbe2

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_58
    iget v2, v1, Ljmx;->o:I

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/high16 v2, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget v0, v1, Ljmx;->Z:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5b
    throw v0

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_149

    nop

    nop

    :goto_5d
    iget-object v10, v1, Ljmx;->ar:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_5e
    iput-object v0, v1, Ljmx;->f:Ljme;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v0, v5, v6}, Ljnq;->c(D)V

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnable(I)V

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_61
    int-to-float v0, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    :goto_62
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_63
    iput v0, v1, Ljmx;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-eqz v0, :cond_c

    nop

    nop

    goto/32 :goto_d4

    nop

    :cond_c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-boolean v0, v1, Ljmx;->n:Z

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_66
    add-double/2addr v5, v7

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v7, v1, Ljmx;->E:Ljnq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_68
    move-object/from16 v1, p0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-static {v0, v11, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6b
    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-nez v0, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const v12, 0x3f59999a    # 0.85f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    :goto_6e
    iput-object v2, v0, Ljmf;->e:Ljmh;

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-direct {v11, v10, v12, v13, v14}, Ljne;-><init>(Landroid/content/Context;Ljnq;II)V

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_70
    iput v2, v1, Ljmx;->p:I

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_71
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-gt v0, v2, :cond_e

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    :cond_e
    goto/32 :goto_190

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto :goto_76

    nop

    :goto_75
    :try_start_3
    invoke-virtual {v0}, Ljmg;->printStackTrace()V

    :cond_f
    :goto_76
    if-eqz v4, :cond_11

    nop

    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    if-ne v4, v2, :cond_10

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    goto :goto_77

    nop

    nop

    nop

    nop

    nop

    :cond_10
    move v4, v6

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v0, v1, Ljmx;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    new-instance v2, Lfgu;

    nop

    nop

    nop

    const/16 v3, 0xc

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    invoke-direct {v2, v0, v4, v3, v5}, Lfgu;-><init>(Ljava/lang/Object;ZI[B)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_f1

    nop

    :cond_11
    iget-object v0, v1, Ljmx;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    new-instance v2, Ljll;

    nop

    nop

    const/16 v3, 0xa

    nop

    nop

    nop

    invoke-direct {v2, v0, v3}, Ljll;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljmg; {:try_start_3 .. :try_end_3} :catch_3

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_78
    const-wide v9, 0x4076800000000000L    # 360.0

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    :goto_79
    const v15, 0x7f0803ac

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_7a
    iput v0, v1, Ljmx;->af:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_7b
    iget-object v0, v10, Ljng;->w:[F

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget v11, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_7d
    move/from16 v21, v11

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    :goto_7e
    const v3, 0x3eb2b8c2

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    if-nez v0, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    :cond_12
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_80
    div-int/2addr v10, v8

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget v9, v1, Ljmx;->ac:I

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_82
    add-double v7, v7, v16

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_122

    nop

    nop

    :goto_84
    iput v0, v1, Ljmx;->p:I

    nop

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    :goto_85
    iget v5, v1, Ljmx;->p:I

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_86
    invoke-direct {v0}, Ljme;-><init>()V

    goto/32 :goto_54

    nop

    nop

    :goto_87
    if-eqz v0, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_14b

    nop

    nop

    :goto_88
    iput-boolean v4, v0, Ljna;->m:Z

    nop

    nop

    :goto_89
    goto/32 :goto_e5

    nop

    nop

    :goto_8a
    iget v0, v1, Ljmx;->ab:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    add-int v0, v0, v1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v14, v10, Ljng;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    :goto_8d
    move-object/from16 v24, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_8e
    double-to-float v7, v7

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v0}, Ljnq;->a()D

    move-result-wide v5

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_90
    if-gtz v3, :cond_14

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :cond_14
    :try_start_4
    iget-object v3, v1, Ljmx;->k:Ljnr;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljmh;->c()V

    iget-object v3, v1, Ljmx;->k:Ljnr;

    nop

    nop

    nop

    nop

    const/high16 v5, 0x3f000000    # 0.5f

    nop

    nop

    nop

    invoke-virtual {v3, v5}, Ljnr;->j(F)V

    iget-object v3, v1, Ljmx;->g:Ljme;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Ljmf;->a([F)V

    goto :goto_91

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    goto/16 :goto_75

    nop

    :goto_91
    const v3, -0x414d473e

    nop

    nop

    nop

    cmpg-float v2, v2, v3

    nop

    nop

    nop

    nop

    nop

    if-gez v2, :cond_f

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, Ljmx;->k:Ljnr;

    nop

    nop

    invoke-virtual {v2}, Ljmh;->c()V

    iget-object v2, v1, Ljmx;->k:Ljnr;

    nop

    nop

    const/high16 v3, 0x3f000000    # 0.5f

    nop

    invoke-virtual {v2, v3}, Ljnr;->j(F)V

    iget-object v2, v1, Ljmx;->f:Ljme;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v0}, Ljmf;->a([F)V
    :try_end_4
    .catch Ljmg; {:try_start_4 .. :try_end_4} :catch_2

    goto/32 :goto_74

    nop

    nop

    :goto_92
    iget-boolean v0, v1, Ljmx;->m:Z

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    :goto_93
    const/16 v23, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_94
    const/16 v19, 0x0

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    :goto_95
    iput-boolean v3, v0, Ljna;->m:Z

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_96
    iput-boolean v10, v1, Ljmx;->D:Z

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    :goto_97
    int-to-float v10, v10

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v0, v1, Ljmx;->d:Ljng;

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    :goto_99
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    div-float/2addr v0, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    :goto_9b
    const v12, 0x7f0803aa

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_9c
    iget-wide v9, v1, Ljmx;->ap:D

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iput-wide v5, v1, Ljmx;->ao:D

    nop

    :goto_9e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    if-eqz v0, :cond_15

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    iget v7, v1, Ljmx;->V:F

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_a1
    invoke-virtual {v7, v4, v6}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-static {v0, v10}, Ljmx;->j(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-wide v7, v1, Ljmx;->ap:D

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_a4
    move/from16 v19, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_a5
    iget-boolean v0, v1, Ljmx;->u:Z

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_a6
    invoke-static {v14, v15, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget v0, v1, Ljmx;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_a8
    iget v10, v1, Ljmx;->V:F

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    :goto_a9
    int-to-float v0, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_aa
    iget v11, v1, Ljmx;->ac:I

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    :goto_ab
    const v15, 0x7f0803ad

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_ac
    move/from16 v21, v7

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iget-boolean v5, v5, Ljmn;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iget-boolean v0, v1, Ljmx;->s:Z

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_af
    iget-object v0, v1, Ljmx;->g:Ljme;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-direct {v10, v11, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    int-to-float v11, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {v0}, Lfhs;->a()I

    move-result v0

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    iget-object v5, v5, Ljmu;->A:Ljmn;

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnable(I)V

    :try_start_5
    iget-object v10, v1, Ljmx;->O:[F

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v1, Ljmx;->N:[F

    nop

    nop

    nop

    nop

    iget-object v14, v1, Ljmx;->S:[F

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    const/4 v13, 0x0

    nop

    nop

    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, v1, Ljmx;->K:[F

    nop

    nop

    nop

    nop

    iget-object v10, v1, Ljmx;->M:[F

    nop

    nop

    nop

    nop

    iget-object v11, v1, Ljmx;->O:[F

    nop

    const/16 v23, 0x0

    nop

    nop

    nop

    nop

    nop

    const/16 v19, 0x0

    nop

    nop

    nop

    const/16 v21, 0x0

    nop

    move-object/from16 v18, v0

    nop

    nop

    nop

    move-object/from16 v20, v10

    nop

    nop

    move-object/from16 v22, v11

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v18 .. v23}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-static {v7}, Landroid/opengl/GLES20;->glLineWidth(F)V

    iget-object v0, v1, Ljmx;->a:Ljmf;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v1, Ljmx;->K:[F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v7}, Ljmf;->c([F)V

    invoke-static {v5}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnable(I)V

    iget-object v0, v1, Ljmx;->c:Ljnc;

    nop

    nop

    nop

    iget-object v7, v1, Ljmx;->K:[F

    nop

    invoke-virtual {v0, v7}, Ljmf;->a([F)V

    iget-object v0, v1, Ljmx;->N:[F

    nop

    invoke-static {v0, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, v1, Ljmx;->av:Llad;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Llad;->b()Lpcg;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lpcg;->a()I

    move-result v0

    nop

    int-to-float v0, v0

    nop

    nop

    nop

    iget-object v7, v1, Ljmx;->E:Ljnq;

    nop

    nop

    nop

    nop

    nop

    iget v7, v7, Ljnq;->j:F

    nop

    nop

    nop

    sub-float v12, v0, v7

    nop

    nop

    nop

    iget-object v10, v1, Ljmx;->N:[F

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    const/high16 v15, 0x3f800000    # 1.0f

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, v1, Ljmx;->N:[F

    nop

    const/16 v22, 0x0

    nop

    nop

    nop

    const/16 v23, 0x0

    nop

    nop

    const/16 v19, 0x0

    nop

    nop

    nop

    const/high16 v20, 0x43340000    # 180.0f

    nop

    nop

    nop

    nop

    const/high16 v21, 0x3f800000    # 1.0f

    nop

    nop

    move-object/from16 v18, v0

    nop

    nop

    nop

    nop

    invoke-static/range {v18 .. v23}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v10, v1, Ljmx;->L:[F

    nop

    nop

    nop

    nop

    iget-object v12, v1, Ljmx;->M:[F

    nop

    iget-object v14, v1, Ljmx;->N:[F

    nop

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    const/4 v13, 0x0

    nop

    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, v1, Ljmx;->j:Ljmi;

    nop

    nop

    nop

    sget-object v7, Ljma;->c:[F

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v7}, Ljmi;->j([F)V

    iget-boolean v0, v1, Ljmx;->l:Z

    nop

    nop

    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    nop

    if-nez v0, :cond_16

    nop

    nop

    nop

    nop

    iget-boolean v0, v1, Ljmx;->ad:Z

    nop

    if-nez v0, :cond_17

    nop

    nop

    :cond_16
    iget-boolean v0, v1, Ljmx;->n:Z

    nop

    nop

    nop

    if-eqz v0, :cond_18

    nop

    nop

    :cond_17
    iget-object v0, v1, Ljmx;->i:Ljnt;

    nop

    invoke-virtual {v0}, Ljmh;->c()V

    iget-object v0, v1, Ljmx;->i:Ljnt;

    nop

    nop

    invoke-virtual {v0, v7}, Ljnt;->j(F)V

    iget-object v0, v1, Ljmx;->b:Ljna;

    nop

    nop

    iget-object v10, v1, Ljmx;->L:[F

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v10}, Ljmf;->a([F)V

    :cond_18
    iget-object v0, v1, Ljmx;->d:Ljng;

    nop

    nop

    nop

    nop

    iget-object v10, v1, Ljmx;->S:[F

    nop

    nop

    nop

    nop

    iput-object v10, v0, Ljng;->l:[F

    nop

    iget-object v10, v1, Ljmx;->K:[F

    nop

    nop

    nop

    iget-object v11, v1, Ljmx;->P:[F

    nop

    nop

    nop

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetTargetInRange()I

    move-result v12

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    if-ltz v12, :cond_19

    nop

    nop

    nop

    nop

    iget v14, v0, Ljng;->o:F

    nop

    nop

    nop

    sub-float v15, v7, v14

    nop

    mul-float/2addr v15, v9

    nop

    nop

    add-float/2addr v14, v15

    nop

    nop

    nop

    nop

    iput v14, v0, Ljng;->o:F

    nop

    nop

    nop

    nop

    goto :goto_b6

    nop

    nop

    nop

    nop

    nop

    :cond_19
    iput v13, v0, Ljng;->o:F

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    iget-object v9, v0, Ljng;->q:Ljnq;

    nop

    nop

    nop

    iget v9, v9, Ljnq;->l:F

    nop

    nop

    nop

    float-to-double v14, v9

    nop

    nop

    nop

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    nop

    nop

    double-to-float v9, v14

    nop

    nop

    nop

    const v14, 0x3f32b8c2

    nop

    nop

    nop

    invoke-static {v9, v14}, Ljava/lang/Math;->min(FF)F

    move-result v9

    nop

    const v14, 0x3e32b8c2

    nop

    nop

    invoke-static {v9, v14}, Ljava/lang/Math;->max(FF)F

    move-result v9

    nop

    nop

    nop

    nop

    nop

    const v14, -0x41cd473e

    nop

    nop

    nop

    nop

    nop

    add-float/2addr v9, v14

    nop

    nop

    nop

    const v14, 0x3f060a92

    nop

    nop

    nop

    div-float/2addr v9, v14

    nop

    nop

    nop

    const/high16 v14, 0x3f400000    # 0.75f

    nop

    nop

    nop

    nop

    mul-float/2addr v9, v14

    nop

    nop

    nop

    const/high16 v15, 0x40300000    # 2.75f

    nop

    nop

    add-float/2addr v9, v15

    nop

    nop

    nop

    sget-object v15, Ljmp;->a:Ljava/lang/Object;

    nop

    monitor-enter v15

    nop

    nop

    nop
    :try_end_5
    .catch Ljmg; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    sget-object v18, Ljmp;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    nop

    nop

    if-eqz v18, :cond_35

    nop

    nop

    const v18, 0x3c8efa35

    nop

    nop

    nop

    mul-float v9, v9, v18

    nop

    invoke-static {v9}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetTargetHitAngleRadians(F)V

    monitor-exit v15

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    new-instance v9, Lnpl;

    nop

    nop

    nop

    nop

    iget-object v15, v0, Ljng;->l:[F

    nop

    nop

    nop

    aget v5, v15, v8

    nop

    nop

    nop

    nop

    nop

    neg-float v5, v5

    nop

    nop

    nop

    const/16 v26, 0x6

    nop

    aget v6, v15, v26

    nop

    nop

    neg-float v6, v6

    nop

    nop

    nop

    nop

    nop

    const/16 v8, 0xa

    nop

    nop

    nop

    nop

    nop

    aget v15, v15, v8

    nop

    neg-float v15, v15

    nop

    invoke-direct {v9, v5, v6, v15}, Lnpl;-><init>(FFF)V

    const/16 v5, 0x303

    nop

    nop

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v5, v0, Ljng;->g:Ljns;

    nop

    nop

    invoke-virtual {v5}, Ljmh;->c()V

    iget-object v5, v0, Ljng;->g:Ljns;

    nop

    nop

    nop

    iget v5, v5, Ljns;->e:I

    nop

    nop

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v5, v0, Ljng;->g:Ljns;

    nop

    invoke-virtual {v5, v7}, Ljns;->j(F)V
    :try_end_7
    .catch Ljmg; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    iget-object v15, v0, Ljng;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v15

    nop

    nop

    nop

    nop
    :try_end_8
    .catch Ljmg; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    iget-object v5, v0, Ljng;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    nop

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    nop

    if-eqz v18, :cond_26

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    nop

    move-object/from16 v24, v18

    nop

    nop

    nop

    check-cast v24, Ljava/util/Map$Entry;

    nop

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v28, v18

    nop

    nop

    check-cast v28, [F

    nop

    iget-object v6, v0, Ljng;->k:[F

    nop

    nop

    nop

    const/16 v21, 0x0

    nop

    nop

    nop

    const/16 v23, 0x0

    nop

    const/16 v19, 0x0

    nop

    move-object/from16 v18, v6

    nop

    move-object/from16 v20, v10

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v22, v28

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v18 .. v23}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v6, v0, Ljng;->j:[F

    nop

    nop

    nop

    iget-object v2, v0, Ljng;->k:[F

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v0, Ljng;->i:[F

    nop

    nop

    nop

    nop

    nop

    const/16 v34, 0x0

    nop

    nop

    nop

    nop

    nop

    const/16 v30, 0x0

    nop

    nop

    nop

    const/16 v32, 0x0

    nop

    move-object/from16 v29, v6

    nop

    nop

    nop

    move-object/from16 v31, v2

    nop

    nop

    move-object/from16 v33, v4

    nop

    nop

    invoke-static/range {v29 .. v34}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v2, v0, Ljng;->r:Ljnf;

    nop

    nop

    new-instance v4, Lnpl;

    nop

    nop

    nop

    nop

    const/16 v6, 0x8

    nop

    aget v6, v28, v6

    nop

    nop

    nop

    nop

    neg-float v6, v6

    nop

    nop

    nop

    nop

    nop

    const/16 v18, 0x9

    nop

    nop

    aget v14, v28, v18

    nop

    neg-float v14, v14

    nop

    aget v3, v28, v8

    nop

    nop

    nop

    nop

    nop

    neg-float v3, v3

    nop

    invoke-direct {v4, v6, v14, v3}, Lnpl;-><init>(FFF)V

    iget v3, v4, Lnpl;->a:F

    nop

    nop

    nop

    iget v6, v9, Lnpl;->a:F

    nop

    nop

    mul-float/2addr v3, v6

    nop

    iget v6, v4, Lnpl;->b:F

    nop

    nop

    iget v14, v9, Lnpl;->b:F

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v6, v14

    nop

    add-float/2addr v3, v6

    nop

    nop

    nop

    iget v4, v4, Lnpl;->c:F

    nop

    nop

    nop

    iget v6, v9, Lnpl;->c:F

    nop

    mul-float/2addr v4, v6

    nop

    nop

    add-float/2addr v3, v4

    nop

    nop

    nop

    nop

    float-to-double v3, v3

    nop

    nop

    nop

    nop

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    nop

    double-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    sget v4, Ljng;->b:F

    nop

    nop

    nop

    nop

    nop

    cmpg-float v6, v3, v4

    nop

    nop

    nop

    if-gez v6, :cond_1a

    nop

    iput v7, v2, Ljnf;->a:F

    nop

    nop

    nop

    iput v7, v2, Ljnf;->b:F

    nop

    nop

    nop

    nop

    nop

    goto :goto_b8

    nop

    nop

    nop

    nop

    :cond_1a
    sget v6, Ljng;->a:F

    nop

    nop

    nop

    nop

    nop

    cmpg-float v14, v3, v6

    nop

    if-gez v14, :cond_1b

    nop

    nop

    nop

    nop

    nop

    sub-float/2addr v6, v4

    nop

    nop

    nop

    sub-float/2addr v3, v4

    nop

    div-float/2addr v3, v6

    nop

    nop

    nop

    nop

    sub-float v3, v7, v3

    nop

    nop

    nop

    add-float v4, v3, v13

    nop

    iput v4, v2, Ljnf;->a:F

    nop

    nop

    nop

    nop

    nop

    const v4, 0x3f19999a    # 0.6f

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v3, v4

    nop

    nop

    nop

    nop

    const v4, 0x3ecccccd    # 0.4f

    nop

    nop

    nop

    nop

    nop

    add-float/2addr v3, v4

    nop

    iput v3, v2, Ljnf;->b:F

    nop

    nop

    nop

    nop

    goto :goto_b8

    nop

    nop

    nop

    :cond_1b
    iput v13, v2, Ljnf;->a:F

    nop

    nop

    nop

    nop

    const v3, 0x3ecccccd    # 0.4f

    nop

    nop

    iput v3, v2, Ljnf;->b:F

    nop

    nop

    :goto_b8
    iget-boolean v2, v0, Ljng;->p:Z

    nop

    nop

    nop

    nop

    if-nez v2, :cond_1c

    nop

    iget-object v2, v0, Ljng;->r:Ljnf;

    nop

    nop

    nop

    iget v2, v2, Ljnf;->a:F

    nop

    goto :goto_b9

    nop

    nop

    nop

    :cond_1c
    move v2, v7

    nop

    :goto_b9
    iget-object v3, v0, Ljng;->r:Ljnf;

    nop

    iget v3, v3, Ljnf;->b:F

    nop

    iget-object v4, v0, Ljng;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    nop

    nop

    const/4 v6, 0x1

    nop

    if-ne v4, v6, :cond_1d

    nop

    nop

    nop

    nop

    const/high16 v4, 0x3f400000    # 0.75f

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    nop

    nop

    move-object v6, v5

    nop

    move v3, v7

    nop

    nop

    :goto_ba
    move-object v14, v9

    nop

    nop

    goto/16 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    const/high16 v4, 0x3f400000    # 0.75f

    nop

    nop

    nop

    nop

    nop

    iget-boolean v6, v0, Ljng;->s:Z

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_22

    nop

    nop

    nop

    iget-boolean v6, v0, Ljng;->p:Z

    nop

    nop

    if-nez v6, :cond_22

    nop

    iget v6, v0, Ljng;->u:F

    nop

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    nop

    nop

    nop

    iget-boolean v6, v0, Ljng;->t:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_21

    nop

    nop

    nop

    nop

    iget v6, v0, Ljng;->u:F

    nop

    nop

    nop

    nop

    sub-float v14, v7, v6

    nop

    const v18, 0x3c23d70a    # 0.01f

    nop

    nop

    nop

    nop

    nop

    mul-float v14, v14, v18

    nop

    nop

    nop

    nop

    nop

    add-float/2addr v6, v14

    nop

    iput v6, v0, Ljng;->u:F

    nop

    nop

    nop

    nop

    const v14, 0x3f666666    # 0.9f

    nop

    nop

    nop

    nop

    nop

    cmpl-float v6, v6, v14

    nop

    nop

    nop

    if-lez v6, :cond_20

    nop

    move-object v6, v5

    nop

    nop

    nop

    nop

    nop

    iget-wide v4, v0, Ljng;->v:J

    nop

    const-wide/16 v20, 0x0

    nop

    nop

    nop

    cmp-long v4, v4, v20

    nop

    nop

    nop

    nop

    if-nez v4, :cond_1e

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    nop

    nop

    nop

    iput-wide v4, v0, Ljng;->v:J

    nop

    nop

    goto :goto_bb

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    nop

    nop

    nop

    move-object v14, v9

    nop

    nop

    nop

    iget-wide v8, v0, Ljng;->v:J

    nop

    nop

    nop

    nop

    sub-long/2addr v4, v8

    nop

    nop

    nop

    long-to-double v4, v4

    nop

    nop

    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    nop

    nop

    div-double/2addr v4, v8

    nop

    nop

    nop

    nop

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    nop

    nop

    nop

    cmpl-double v4, v4, v8

    nop

    nop

    nop

    if-lez v4, :cond_1f

    nop

    const/4 v4, 0x0

    nop

    nop

    iput-boolean v4, v0, Ljng;->t:Z

    nop

    :cond_1f
    const v4, 0x3f666666    # 0.9f

    nop

    iput v4, v0, Ljng;->u:F

    nop

    nop

    nop

    goto :goto_bc

    nop

    nop

    nop

    nop

    :cond_20
    move-object v6, v5

    nop

    nop

    nop

    nop

    :goto_bb
    move-object v14, v9

    nop

    nop

    nop

    nop

    goto :goto_bc

    nop

    nop

    nop

    nop

    nop

    :cond_21
    move-object v6, v5

    nop

    nop

    nop

    nop

    move-object v14, v9

    nop

    nop

    nop

    nop

    iget v4, v0, Ljng;->u:F

    nop

    nop

    nop

    nop

    nop

    const v5, 0x3f7c28f6    # 0.985f

    nop

    nop

    mul-float/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    iput v4, v0, Ljng;->u:F

    nop

    :goto_bc
    iget v4, v0, Ljng;->u:F

    nop

    const v5, 0x3c23d70a    # 0.01f

    nop

    nop

    nop

    cmpg-float v4, v4, v5

    nop

    if-gez v4, :cond_23

    nop

    nop

    nop

    iput v13, v0, Ljng;->u:F

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-boolean v4, v0, Ljng;->s:Z

    nop

    nop

    nop

    nop

    goto :goto_bd

    nop

    nop

    nop

    :cond_22
    move-object v6, v5

    nop

    nop

    nop

    goto/16 :goto_ba

    nop

    nop

    nop

    nop

    :cond_23
    :goto_bd
    iget-object v4, v0, Ljng;->j:[F

    nop

    const/4 v5, 0x3

    nop

    aget v8, v4, v5

    nop

    nop

    cmpg-float v5, v8, v13

    nop

    nop

    nop

    if-ltz v5, :cond_25

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ljng;->c([F)V

    iget-object v4, v0, Ljng;->j:[F

    nop

    nop

    const/4 v5, 0x0

    nop

    aget v8, v4, v5

    nop

    nop

    iget v5, v0, Ljng;->m:F

    nop

    nop

    nop

    mul-float/2addr v8, v5

    nop

    add-float/2addr v8, v5

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    aget v4, v4, v5

    nop

    nop

    iget v5, v0, Ljng;->n:F

    nop

    nop

    nop

    nop

    mul-float/2addr v4, v5

    nop

    add-float/2addr v4, v5

    nop

    nop

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    if-ne v5, v12, :cond_24

    nop

    nop

    nop

    sub-float v5, v7, v2

    nop

    nop

    iget-object v9, v0, Ljng;->g:Ljns;

    nop

    invoke-virtual {v9, v2}, Ljns;->j(F)V

    iget-object v2, v0, Ljng;->f:Ljmj;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v11, v8, v4, v3}, Ljmj;->f([FFFF)V

    iget-object v2, v0, Ljng;->g:Ljns;

    nop

    invoke-virtual {v2, v5}, Ljns;->j(F)V

    iget-object v2, v0, Ljng;->e:Ljmj;

    nop

    nop

    invoke-virtual {v2, v11, v8, v4, v3}, Ljmj;->f([FFFF)V

    iget-object v2, v0, Ljng;->g:Ljns;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v7}, Ljns;->j(F)V

    goto :goto_be

    nop

    nop

    nop

    :cond_24
    iget-object v5, v0, Ljng;->g:Ljns;

    nop

    nop

    nop

    invoke-virtual {v5, v2}, Ljns;->j(F)V

    iget-object v2, v0, Ljng;->e:Ljmj;

    nop

    nop

    invoke-virtual {v2, v11, v8, v4, v3}, Ljmj;->f([FFFF)V

    :cond_25
    :goto_be
    move-object v5, v6

    nop

    nop

    nop

    nop

    move-object v9, v14

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    const/16 v8, 0xa

    nop

    nop

    nop

    nop

    const/high16 v14, 0x3f400000    # 0.75f

    nop

    nop

    goto/16 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :cond_26
    monitor-exit v15

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object v0, v0, Ljng;->x:Ljne;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    iget-boolean v2, v0, Ljne;->i:Z

    nop

    nop

    nop

    nop

    if-nez v2, :cond_27

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_27
    iget-boolean v2, v0, Ljne;->g:Z

    nop

    if-eqz v2, :cond_28

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    nop

    nop

    nop

    iget-wide v4, v0, Ljne;->c:J

    nop

    nop

    nop

    sub-long/2addr v2, v4

    nop

    nop

    nop

    nop

    long-to-double v2, v2

    nop

    nop

    nop

    nop

    nop

    const-wide v4, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    div-double/2addr v2, v4

    nop

    nop

    nop

    nop

    double-to-int v2, v2

    nop

    nop

    int-to-long v2, v2

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v4, 0x190

    nop

    nop

    nop

    nop

    nop

    div-long/2addr v2, v4

    nop

    nop

    nop

    nop

    long-to-int v2, v2

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    add-int/2addr v2, v3

    nop

    nop

    iput v2, v0, Ljne;->f:I

    nop

    nop

    iget-object v4, v0, Ljne;->a:Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    nop

    nop

    const/4 v5, -0x1

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    if-lt v2, v4, :cond_28

    nop

    nop

    const/4 v2, 0x0

    nop

    iput-boolean v2, v0, Ljne;->g:Z

    nop

    iput-boolean v3, v0, Ljne;->h:Z

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    nop

    iget-wide v4, v0, Ljne;->c:J

    nop

    nop

    nop

    sub-long/2addr v2, v4

    nop

    nop

    nop

    long-to-double v2, v2

    nop

    nop

    nop

    nop

    const-wide v4, 0x412e848000000000L    # 1000000.0

    nop

    div-double/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    double-to-int v2, v2

    nop

    nop

    nop

    iget-object v3, v0, Ljne;->b:Ljnq;

    nop

    nop

    nop

    nop

    iget v4, v3, Ljnq;->h:I

    nop

    invoke-virtual {v3}, Ljnq;->e()[F

    move-result-object v3

    nop

    nop

    nop

    invoke-static {v3, v4, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->EndGyroCalibration([FII)[F

    move-result-object v2

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    aget v4, v2, v3

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    aget v4, v2, v3

    nop

    nop

    const/4 v3, 0x2

    nop

    aget v2, v2, v3

    nop

    nop

    iget-object v2, v0, Ljne;->a:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    const/4 v3, -0x1

    nop

    nop

    nop

    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    iput v2, v0, Ljne;->f:I

    nop

    nop

    nop

    nop

    nop

    :cond_28
    const/16 v2, 0xbe2

    nop

    nop

    nop

    nop

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    iget-object v2, v0, Ljne;->d:Ljnr;

    nop

    nop

    invoke-virtual {v2}, Ljmh;->c()V

    iget-boolean v2, v0, Ljne;->g:Z

    nop

    nop

    nop

    nop

    if-nez v2, :cond_29

    nop

    nop

    nop

    const/16 v2, 0x302

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0x303

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v2, v0, Ljne;->d:Ljnr;

    nop

    const/high16 v3, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Ljnr;->j(F)V

    goto :goto_bf

    nop

    :cond_29
    const/16 v2, 0x303

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v3, v0, Ljne;->d:Ljnr;

    nop

    nop

    const v4, 0x3f99999a    # 1.2f

    nop

    invoke-virtual {v3, v4}, Ljnr;->j(F)V

    :goto_bf
    iget-object v3, v0, Ljne;->a:Ljava/util/ArrayList;

    nop

    iget v4, v0, Ljne;->f:I

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Ljmj;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v0, Ljne;->e:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    iget v4, v4, Landroid/graphics/Point;->x:I

    nop

    nop

    int-to-float v4, v4

    nop

    nop

    nop

    iget-object v0, v0, Ljne;->e:Landroid/graphics/Point;

    nop

    nop

    iget v0, v0, Landroid/graphics/Point;->y:I

    nop

    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    iget-boolean v5, v3, Ljmj;->l:Z

    nop

    nop

    nop

    if-nez v5, :cond_2a

    nop

    sget-object v0, Ljmj;->f:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0x9bd

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v3, "Sprite not initialized."

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lscz;->s(Ljava/lang/String;)V

    goto/16 :goto_40

    nop

    :cond_2a
    iget-object v5, v3, Ljmj;->e:Ljmh;

    nop

    if-eqz v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljmh;->c()V

    iget-object v5, v3, Ljmj;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v5, v3, Ljmj;->b:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v5, v3, Ljmj;->e:Ljmh;

    nop

    nop

    nop

    nop

    iget-object v6, v3, Ljmj;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    invoke-virtual {v5, v6}, Ljmh;->g(Ljava/nio/FloatBuffer;)V

    iget-object v5, v3, Ljmj;->e:Ljmh;

    nop

    iget-object v6, v3, Ljmj;->b:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Ljmh;->e(Ljava/nio/FloatBuffer;)V

    iget-object v5, v3, Ljmj;->j:[F

    nop

    nop

    nop

    nop

    nop

    iget v6, v3, Ljmj;->h:F

    nop

    nop

    add-float v22, v4, v6

    nop

    nop

    nop

    nop

    nop

    iget v4, v3, Ljmj;->i:F

    nop

    nop

    add-float v23, v0, v4

    nop

    const/16 v24, 0x0

    nop

    nop

    const/16 v19, 0x0

    nop

    nop

    nop

    nop

    const/16 v21, 0x0

    nop

    nop

    nop

    nop

    move-object/from16 v18, v5

    nop

    move-object/from16 v20, v11

    nop

    nop

    invoke-static/range {v18 .. v24}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    iget-object v0, v3, Ljmj;->j:[F

    nop

    nop

    nop

    const/16 v39, 0x0

    nop

    nop

    nop

    const/high16 v40, 0x3f800000    # 1.0f

    nop

    const/16 v36, 0x0

    nop

    nop

    nop

    const/16 v37, 0x0

    nop

    const/16 v38, 0x0

    nop

    move-object/from16 v35, v0

    nop

    nop

    nop

    nop

    invoke-static/range {v35 .. v40}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, v3, Ljmj;->e:Ljmh;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v3, Ljmj;->j:[F

    nop

    invoke-virtual {v0, v4}, Ljmh;->f([F)V

    iget-object v0, v3, Ljmj;->d:Ljava/util/Vector;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    iget-object v0, v3, Ljmj;->d:Ljava/util/Vector;

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Loql;

    nop

    nop

    nop

    iget-object v5, v3, Ljmj;->e:Ljmh;

    nop

    nop

    invoke-virtual {v0}, Loql;->d()V

    iget-object v0, v3, Ljmj;->c:Ljava/nio/ShortBuffer;

    nop

    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, v3, Ljmj;->k:I

    nop

    iget-object v3, v3, Ljmj;->c:Ljava/nio/ShortBuffer;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x4

    nop

    const/16 v5, 0x1403

    nop

    nop

    invoke-static {v4, v0, v5, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V
    :try_end_a
    .catch Ljmg; {:try_start_a .. :try_end_a} :catch_1

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-direct {v1, v4}, Ljmx;->19e596a3e324281407eb5c11093c0152m(Z)V

    :goto_c1
    goto/32 :goto_65

    nop

    nop

    :goto_c2
    goto :goto_c8

    nop

    :goto_c3
    goto/32 :goto_c7

    nop

    nop

    :goto_c4
    iget v7, v7, Ljnq;->j:F

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    iput-object v14, v0, Ljmf;->e:Ljmh;

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    add-double/2addr v9, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c7
    move v0, v4

    nop

    nop

    nop

    nop

    :goto_c8
    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_c9
    if-ltz v0, :cond_2b

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_1c0

    nop

    nop

    nop

    :goto_ca
    iget-object v7, v5, Ljna;->k:Ljava/util/ArrayList;

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    goto/16 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    iget-boolean v2, v1, Ljmx;->D:Z

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    :goto_ce
    iget-object v0, v1, Ljmx;->b:Ljna;

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_cf
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    iget-object v0, v10, Ljng;->e:Ljmj;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    iget-object v0, v1, Ljmx;->N:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_d2
    if-eqz v5, :cond_2c

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_2c
    goto/32 :goto_38

    nop

    nop

    :goto_d3
    invoke-static {v0, v5, v6}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitFrameTexture(III)V

    :goto_d4
    goto/32 :goto_1a6

    nop

    nop

    nop

    :goto_d5
    const v22, 0x3dcccccd    # 0.1f

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_d6
    iget-boolean v0, v1, Ljmx;->ae:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    iput-object v11, v1, Ljmx;->h:Ljne;

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-virtual {v0}, Ljnq;->f()[F

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    iget-object v0, v1, Ljmx;->f:Ljme;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_da
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_db
    iput v0, v5, Loql;->a:I

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_dc
    invoke-virtual {v0}, Lpcg;->a()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    iget-boolean v0, v1, Ljmx;->s:Z

    nop

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v10}, Ljnc;->b()I

    move-result v10

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_df
    new-instance v11, Ljne;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    int-to-float v12, v12

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    iput-boolean v5, v0, Ljnd;->a:Z

    nop

    :goto_e3
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-static {v11, v12}, Ljmx;->j(II)I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_e5
    iget v0, v1, Ljmx;->as:I

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_e7
    div-float/2addr v0, v7

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    iget v0, v1, Ljmx;->ab:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e9
    iget v11, v1, Ljmx;->ac:I

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetFilteredRotation([F)V

    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {v0, v11, v12, v2}, Ljmj;->g(Landroid/content/Context;IF)V

    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    if-gtz v0, :cond_2d

    nop

    goto/32 :goto_f1

    nop

    :cond_2d
    goto/32 :goto_85

    nop

    nop

    nop

    :goto_ed
    const/16 v20, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-direct {v13, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {v0}, Ljmg;->printStackTrace()V

    :goto_f1
    goto/32 :goto_128

    nop

    nop

    nop

    :goto_f2
    iget-boolean v0, v1, Ljmx;->z:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    const/16 v18, 0x0

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_f4
    invoke-virtual {v11}, Ljmm;->a()D

    move-result-wide v11

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    :goto_f5
    const/16 v7, 0x302

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_f6
    iput-boolean v3, v1, Ljmx;->ae:Z

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_f7
    new-instance v0, Ljmj;

    nop

    nop

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-static {}, Loql;->b()I

    move-result v0

    nop

    goto/32 :goto_169

    nop

    nop

    :goto_f9
    invoke-virtual {v0}, Llad;->b()Lpcg;

    move-result-object v0

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_fa
    if-lez v0, :cond_2e

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_104

    nop

    :goto_fb
    float-to-double v7, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_fc
    iget-object v5, v1, Ljmx;->b:Ljna;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-virtual {v0, v14, v15, v2}, Ljmj;->g(Landroid/content/Context;IF)V

    :try_start_b
    new-instance v0, Ljns;

    nop

    invoke-direct {v0}, Ljns;-><init>()V

    iput-object v0, v10, Ljng;->g:Ljns;

    nop

    nop

    new-instance v0, Ljnr;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljnr;-><init>()V

    iput-object v0, v10, Ljng;->h:Ljnr;

    nop

    nop

    nop

    nop
    :try_end_b
    .catch Ljmg; {:try_start_b .. :try_end_b} :catch_4

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    sub-double v16, v16, v11

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    const/16 v5, 0xb71

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_100
    iput-object v10, v0, Ljng;->q:Ljnq;

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    :goto_101
    invoke-static {v0, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_180

    nop

    nop

    :goto_102
    iget-object v10, v1, Ljmx;->b:Ljna;

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    mul-double/2addr v11, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    goto/32 :goto_14a

    nop

    :goto_105
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_106
    return-void

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    :try_start_c
    monitor-exit v2

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_107
    iget-object v10, v1, Ljmx;->d:Ljng;

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    :goto_108
    const/high16 v23, 0x43480000    # 200.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    const/16 v0, 0x4000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    :goto_10a
    const/16 v27, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    goto/16 :goto_89

    nop

    nop

    nop

    nop

    :goto_10c
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_10d
    new-instance v6, Loql;

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    goto/16 :goto_83

    nop

    nop

    :goto_10f
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_110
    add-int/2addr v0, v2

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    goto/32 :goto_105

    nop

    nop

    :goto_112
    mul-float/2addr v0, v12

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    :goto_113
    const/16 v8, 0x303

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_114
    if-nez v0, :cond_2f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_115
    invoke-virtual {v10, v5}, Ljna;->e(I)V

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_116
    iput-object v0, v10, Ljng;->f:Ljmj;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_117
    const v11, 0x7f0801c2

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_118
    if-ne v5, v10, :cond_30

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    :cond_30
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_119
    mul-float/2addr v7, v9

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-static {}, Loql;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    move-object/from16 v16, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_11c
    iget-object v0, v1, Ljmx;->E:Ljnq;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_11d
    if-eqz v10, :cond_31

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    :goto_11e
    iget-object v10, v1, Ljmx;->c:Ljnc;

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_11f
    float-to-int v0, v0

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_120
    int-to-float v9, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_121
    if-ne v13, v3, :cond_32

    nop

    goto/32 :goto_123

    nop

    nop

    :cond_32
    goto/32 :goto_17

    nop

    nop

    :goto_122
    double-to-float v10, v7

    nop

    nop

    nop

    nop

    :goto_123
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_125
    const/4 v3, 0x1

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_126
    if-nez v0, :cond_33

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_33
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_127
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    goto/32 :goto_ff

    nop

    nop

    :goto_128
    iget v0, v1, Ljmx;->p:I

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_129
    invoke-direct {v0, v11, v10}, Lfhs;-><init>(II)V

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_12a
    new-instance v13, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_12b
    if-nez v10, :cond_34

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    :cond_34
    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    invoke-direct {v0}, Ljme;-><init>()V

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_12d
    new-instance v10, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    const/16 v0, 0x100

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    move/from16 v18, v10

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    :goto_130
    iget v12, v1, Ljmx;->ab:I

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_131
    iput-boolean v3, v0, Ljna;->l:Z

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_132
    iget-object v6, v5, Ljna;->d:Ljava/util/Vector;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_133
    invoke-virtual {v0, v10}, Ljme;->b(Landroid/graphics/PointF;)V

    :try_start_d
    new-instance v0, Ljnr;

    nop

    nop

    invoke-direct {v0}, Ljnr;-><init>()V

    iput-object v0, v1, Ljmx;->k:Ljnr;

    nop

    nop

    nop
    :try_end_d
    .catch Ljmg; {:try_start_d .. :try_end_d} :catch_0

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_134
    iget-object v0, v1, Ljmx;->J:Ljnd;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_135
    invoke-virtual {v0}, Ljnq;->a()D

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_136
    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_137
    iget v10, v1, Ljmx;->V:F

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_138
    goto/16 :goto_f1

    nop

    nop

    :cond_35
    :try_start_e
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string v2, "State is not ready."

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    monitor-exit v15

    nop

    nop

    nop

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v0

    nop

    nop

    nop
    :try_end_f
    .catch Ljmg; {:try_start_f .. :try_end_f} :catch_3

    :catch_3
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_139
    if-gtz v5, :cond_36

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_36
    goto/32 :goto_157

    nop

    nop

    nop

    nop

    :goto_13a
    invoke-direct {v6, v2}, Loql;-><init>([B)V

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_13b
    iput v0, v10, Ljng;->m:F

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_13c
    invoke-direct {v10, v0, v11, v12, v13}, Ljne;-><init>(Landroid/content/Context;Ljnq;II)V

    goto/32 :goto_16c

    nop

    nop

    nop

    :goto_13d
    iget-object v10, v1, Ljmx;->au:Ljava/util/HashMap;

    nop

    goto/32 :goto_197

    nop

    nop

    :goto_13e
    new-instance v0, Lfhs;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    if-eqz v0, :cond_37

    nop

    nop

    goto/32 :goto_c1

    nop

    :cond_37
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_140
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_141
    cmpl-double v0, v7, v5

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_142
    const-wide v9, 0x400921fb54442d18L    # Math.PI

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_143
    iget-boolean v0, v1, Ljmx;->Y:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    :goto_144
    if-eqz v10, :cond_38

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    :cond_38
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_145
    goto/16 :goto_30

    nop

    nop

    nop

    :catch_4
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_146
    iget-boolean v10, v0, Ljnd;->a:Z

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_147
    iput-wide v5, v1, Ljmx;->ao:D

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    :goto_148
    iget v10, v1, Ljmx;->ab:I

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_149
    return-void

    nop

    nop

    nop

    nop

    :goto_14a
    goto/32 :goto_111

    nop

    nop

    :goto_14b
    invoke-direct {v1, v3}, Ljmx;->19e596a3e324281407eb5c11093c0152m(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14c
    invoke-static {v0, v5, v6}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitFrameTexture(III)V

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    invoke-static {v0, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    iget v0, v1, Ljmx;->af:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14f
    check-cast v10, Ljne;

    nop

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_150
    iget-object v10, v1, Ljmx;->E:Ljnq;

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :goto_151
    move/from16 v19, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_152
    iget v12, v1, Ljmx;->ac:I

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    :goto_153
    iget-object v13, v1, Ljmx;->h:Ljne;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_154
    if-nez v0, :cond_39

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_39
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_155
    iget-object v0, v10, Ljng;->f:Ljmj;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_156
    iput-object v0, v1, Ljmx;->S:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_157
    iget-object v5, v1, Ljmx;->F:Ljmu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_158
    iput-object v13, v10, Ljng;->x:Ljne;

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_159
    move-object/from16 v16, v8

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_15a
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    iput-boolean v3, v1, Ljmx;->Y:Z

    nop

    nop

    nop

    :goto_15c
    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_15d
    move v5, v4

    nop

    nop

    :goto_15e
    goto/32 :goto_146

    nop

    nop

    nop

    :goto_15f
    iput-boolean v0, v10, Ljna;->l:Z

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :goto_160
    add-int v12, v10, v0

    nop

    goto/32 :goto_12a

    nop

    nop

    :goto_161
    const/high16 v7, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    :goto_162
    div-int/2addr v11, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_163
    new-instance v0, Ljme;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_164
    int-to-float v0, v0

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    :goto_165
    iget-object v0, v1, Ljmx;->ar:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_166
    iget-object v0, v1, Ljmx;->g:Ljme;

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_167
    iget-object v14, v10, Ljng;->c:Landroid/content/Context;

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_168
    iget-object v10, v1, Ljmx;->b:Ljna;

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    :goto_169
    iget v5, v1, Ljmx;->A:I

    nop

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    :goto_16a
    move v10, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    :goto_16b
    iget-wide v5, v1, Ljmx;->ao:D

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    iget-object v0, v1, Ljmx;->au:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_16d
    if-nez v0, :cond_3a

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    :cond_3a
    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    iget-object v8, v1, Ljmx;->M:[F

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    iget v0, v1, Ljmx;->G:I

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_170
    iget-object v11, v1, Ljmx;->ar:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    :goto_171
    iget-object v0, v1, Ljmx;->K:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    nop

    :goto_172
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_173
    invoke-virtual {v0, v11, v12, v2}, Ljmj;->g(Landroid/content/Context;IF)V

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_174
    iget v10, v1, Ljmx;->ac:I

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_175
    new-instance v0, Ljme;

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :goto_176
    if-nez v10, :cond_3b

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    :cond_3b
    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    :goto_177
    iget v11, v1, Ljmx;->ab:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    :goto_178
    iget-object v0, v1, Ljmx;->P:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    :goto_179
    iget v14, v1, Ljmx;->ac:I

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    iget-object v11, v1, Ljmx;->aw:Ljmm;

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_17b
    goto/16 :goto_9e

    nop

    nop

    nop

    nop

    :goto_17c
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    if-eq v0, v3, :cond_3c

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_3c
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    iput v0, v1, Ljmx;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    invoke-static/range {v16 .. v23}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_180
    iget-object v0, v1, Ljmx;->av:Llad;

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_181
    if-eqz v0, :cond_3d

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    :cond_3d
    goto/32 :goto_178

    nop

    nop

    nop

    :goto_182
    new-instance v0, Ljmj;

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    :goto_183
    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    :goto_184
    iget v5, v1, Ljmx;->A:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    :goto_185
    invoke-virtual {v10, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_165

    nop

    nop

    :goto_186
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_187
    const/16 v20, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    :goto_188
    invoke-direct {v0}, Ljmj;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_189
    iput-boolean v3, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_18a
    iput v0, v10, Ljng;->n:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_18b
    const/high16 v23, 0x42480000    # 50.0f

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    move v10, v4

    nop

    nop

    nop

    :goto_18d
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    iget v12, v1, Ljmx;->ac:I

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_18f
    cmpl-float v3, v2, v3

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_190
    move v0, v3

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_191
    iget-object v11, v1, Ljmx;->E:Ljnq;

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_192
    if-nez v2, :cond_3e

    nop

    goto/32 :goto_10c

    nop

    nop

    :cond_3e
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_193
    iget-object v8, v1, Ljmx;->N:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_194
    neg-float v11, v7

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_195
    const/16 v17, 0x0

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    :goto_196
    move-object/from16 v16, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    :goto_197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    nop

    nop

    nop

    :goto_198
    if-nez v0, :cond_3f

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_3f
    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_199
    iget-object v5, v5, Ljna;->d:Ljava/util/Vector;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    mul-float/2addr v0, v7

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_19b
    if-nez v0, :cond_40

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :cond_40
    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19c
    iput-boolean v4, v10, Ljna;->m:Z

    nop

    :goto_19d
    goto/32 :goto_168

    nop

    nop

    :goto_19e
    const-wide/high16 v13, 0x4032000000000000L    # 18.0

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    :goto_19f
    const/high16 v22, -0x3db80000    # -50.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    :goto_1a0
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_1a1
    iget-object v7, v5, Ljna;->d:Ljava/util/Vector;

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_1a2
    iget v13, v1, Ljmx;->ab:I

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_1a3
    iput-boolean v4, v10, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    :goto_1a4
    iput-object v10, v1, Ljmx;->h:Ljne;

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_1a5
    invoke-virtual {v0, v14, v15, v2}, Ljmj;->g(Landroid/content/Context;IF)V

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_1a6
    iget-boolean v0, v1, Ljmx;->q:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    const/high16 v21, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_1a8
    iget v6, v1, Ljmx;->B:I

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    :goto_1a9
    goto/16 :goto_18d

    nop

    :goto_1aa
    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    :goto_1ab
    iget v5, v1, Ljmx;->A:I

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1ac
    iget-object v0, v1, Ljmx;->ar:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ad
    iget-object v0, v1, Ljmx;->N:[F

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    :goto_1ae
    const v9, 0x3dcccccd    # 0.1f

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_1af
    iget-object v0, v1, Ljmx;->g:Ljme;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    :goto_1b0
    invoke-static/range {v16 .. v21}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b1
    iget-object v0, v10, Ljng;->e:Ljmj;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b2
    const v12, 0x7f0803a9

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    :goto_1b3
    int-to-float v11, v11

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    :goto_1b4
    goto/16 :goto_9e

    nop

    nop

    nop

    nop

    :goto_1b5
    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_1b6
    iget-object v0, v1, Ljmx;->E:Ljnq;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    sget-object v2, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    :goto_1b8
    add-double/2addr v7, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    monitor-enter v2

    nop

    nop

    nop

    nop

    :try_start_10
    sget-object v0, Ljmp;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    monitor-exit v2

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ba
    div-double/2addr v7, v9

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    :goto_1bb
    invoke-direct {v0}, Ljmj;-><init>()V

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    :goto_1bc
    iget-object v10, v1, Ljmx;->au:Ljava/util/HashMap;

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    :goto_1bd
    invoke-static/range {v22 .. v27}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1be
    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    :goto_1bf
    iget-object v7, v1, Ljmx;->M:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    :goto_1c0
    iget-object v0, v1, Ljmx;->E:Ljnq;

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :goto_1c1
    iget-boolean v0, v1, Ljmx;->D:Z

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    :goto_1c2
    iget v13, v1, Ljmx;->G:I

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    :goto_1c3
    if-nez v0, :cond_41

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_41
    goto/32 :goto_12

    nop

    nop

    :goto_1c4
    iget-object v0, v1, Ljmx;->f:Ljme;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c5
    iget v6, v1, Ljmx;->B:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1c7
    goto/32 :goto_182

    nop

    nop

    nop

    nop
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Ljmx;->ac:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    iget p1, p0, Ljmx;->ab:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    if-eq p3, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Ljmx;->aa:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p1, p0, Ljmx;->Y:Z

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p2, p1, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iput p2, p0, Ljmx;->ab:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput p2, p0, Ljmx;->Z:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-boolean p1, p0, Ljmx;->z:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget p1, p0, Ljmx;->ac:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 5

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Ljmx;->z:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    nop

    nop

    :try_start_0
    iget p2, p0, Ljmx;->at:F

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    cmpg-float v1, p2, v0

    nop

    nop

    if-gez v1, :cond_0

    nop

    iget-object p2, p0, Ljmx;->F:Ljmu;

    nop

    invoke-virtual {p2}, Ljmu;->a()F

    move-result p2

    nop

    iput p2, p0, Ljmx;->at:F

    nop

    nop

    nop

    nop

    nop

    :cond_0
    const v1, 0x3fd9999a    # 1.7f

    nop

    nop

    invoke-static {p2, v1}, Ljmx;->l(FF)F

    move-result p2

    nop

    nop

    nop

    nop

    iput p2, p0, Ljmx;->U:F

    nop

    nop

    nop

    nop

    nop

    iget p2, p0, Ljmx;->at:F

    nop

    nop

    nop

    nop

    const/high16 v1, 0x40200000    # 2.5f

    nop

    invoke-static {p2, v1}, Ljmx;->l(FF)F

    move-result p2

    nop

    nop

    nop

    float-to-int p2, p2

    nop

    iput p2, p0, Ljmx;->W:I

    nop

    nop

    nop

    nop

    iget p2, p0, Ljmx;->at:F

    nop

    nop

    nop

    nop

    nop

    const v1, 0x3f8ccccd    # 1.1f

    nop

    nop

    nop

    invoke-static {p2, v1}, Ljmx;->l(FF)F

    move-result p2

    nop

    nop

    nop

    nop

    nop

    float-to-int p2, p2

    nop

    nop

    nop

    nop

    nop

    iput p2, p0, Ljmx;->X:I

    nop

    nop

    iget p2, p0, Ljmx;->U:F

    nop

    nop

    nop

    nop

    iput p2, p0, Ljmx;->T:F

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ljmx;->d5484163cd8d335e6b17663474ff5f2bm(F)F

    move-result p2

    nop

    iput p2, p0, Ljmx;->V:F

    nop

    new-instance p2, Ljmh;

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2, v1}, Ljmh;-><init>([B)V

    iput-object p2, p0, Ljmx;->H:Ljmh;

    nop

    nop

    nop

    new-instance p2, Ljmi;

    nop

    nop

    nop

    invoke-direct {p2}, Ljmi;-><init>()V

    iput-object p2, p0, Ljmx;->j:Ljmi;

    nop

    nop

    nop

    new-instance p2, Ljmh;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2, v1}, Ljmh;-><init>([C)V

    iput-object p2, p0, Ljmx;->I:Ljmh;

    nop

    nop

    nop

    new-instance p2, Ljnt;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2}, Ljnt;-><init>()V

    iput-object p2, p0, Ljmx;->i:Ljnt;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p0, Ljmx;->j:Ljmi;

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Ljma;->a:[F

    nop

    nop

    nop

    invoke-virtual {p2, v1}, Ljmi;->j([F)V

    new-instance p2, Ljnc;

    nop

    nop

    nop

    iget-object v1, p0, Ljmx;->b:Ljna;

    nop

    nop

    nop

    nop

    invoke-direct {p2, v1}, Ljnc;-><init>(Ljna;)V

    iput-object p2, p0, Ljmx;->c:Ljnc;

    nop

    nop

    nop

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    nop

    nop

    nop

    nop

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    nop

    nop

    nop

    new-instance p2, Ljmy;

    nop

    nop

    invoke-direct {p2}, Ljmy;-><init>()V

    iput-object p2, p0, Ljmx;->a:Ljmf;

    nop

    nop

    nop

    nop

    iget-object p2, p0, Ljmx;->b:Ljna;

    nop

    iget-object v1, p0, Ljmx;->i:Ljnt;

    nop

    nop

    nop

    iput-object v1, p2, Ljmf;->e:Ljmh;

    nop

    iget-object v1, p0, Ljmx;->j:Ljmi;

    nop

    nop

    iput-object v1, p2, Ljna;->j:Ljmh;

    nop

    nop

    iget-boolean v1, p0, Ljmx;->D:Z

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    iput-boolean v2, p2, Ljna;->m:Z

    nop

    iput-boolean v2, p2, Ljna;->l:Z

    nop

    nop

    :cond_1
    iget-object p2, p0, Ljmx;->Q:[F

    nop

    nop

    nop

    nop

    nop

    invoke-static {p2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p2, p0, Ljmx;->Q:[F

    nop

    nop

    aput v0, p2, p1

    nop

    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    aput v1, p2, v2

    nop

    nop

    nop

    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    aput v3, p2, v1

    nop

    nop

    nop

    nop

    const/4 v1, 0x5

    nop

    nop

    aput v0, p2, v1

    nop

    nop

    iget-object p2, p0, Ljmx;->S:[F

    nop

    nop

    nop

    nop

    invoke-static {p2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    sget-object p2, Ljma;->b:[F

    nop

    nop

    aget v0, p2, p1

    nop

    nop

    nop

    nop

    aget v1, p2, v2

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    aget v3, p2, v3

    nop

    nop

    const/4 v4, 0x3

    nop

    aget p2, p2, v4

    nop

    nop

    nop

    invoke-static {v0, v1, v3, p2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iput-boolean v2, p0, Ljmx;->m:Z

    nop

    nop

    nop

    nop

    iget-boolean p2, p0, Ljmx;->w:Z

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    iget-object p2, p0, Ljmx;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    invoke-virtual {p2, v2, p1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->d(ZI)V

    :cond_2
    iget-object p2, p0, Ljmx;->R:[F

    nop

    nop

    nop

    invoke-static {p2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
    :try_end_0
    .catch Ljmg; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    :goto_b
    invoke-virtual {p2}, Ljmg;->printStackTrace()V

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_3
    goto/32 :goto_9

    nop
.end method
