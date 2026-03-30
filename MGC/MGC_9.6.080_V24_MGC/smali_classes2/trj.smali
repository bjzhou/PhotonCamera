.class public final Ltrj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:Ltrk;

.field public final c:[F

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:[I

.field public volatile g:Landroid/graphics/SurfaceTexture;

.field public volatile h:Landroid/view/Surface;

.field public volatile i:Z

.field public volatile j:Z

.field public final k:Ljava/lang/Object;

.field private final l:I

.field private final m:I

.field private final n:Z

.field private o:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(IIILtrk;Z)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    new-array v0, v0, [F

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_4

    nop

    nop

    :goto_2
    new-array v1, v1, [I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Ltrj;->b:Ltrk;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_4
    if-nez p5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    const/16 v0, 0x10

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    iput-boolean v2, p0, Ltrj;->j:Z

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v1, p0, Ltrj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_e
    iput-boolean v2, p0, Ltrj;->i:Z

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput p1, p0, Ltrj;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    const v1, 0x1f

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    iput-object v1, p0, Ltrj;->f:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1a
    iput-object v1, p0, Ltrj;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    :goto_1c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1d
    iput-boolean p5, p0, Ltrj;->n:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1e
    iput-object p1, p0, Ltrj;->o:Landroid/os/HandlerThread;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1f
    iput p3, p0, Ltrj;->m:I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_20
    new-instance p1, Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_22
    const-string p2, "SurfaceTexture Callback Thread"

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput p2, p0, Ltrj;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v1, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_27
    iput-object v0, p0, Ltrj;->c:[F

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v1, p0, Ltrj;->k:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_29
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    aget v0, v0, v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Ltrj;->i:Z

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ltrj;->f:[I

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

    nop

    :goto_c
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_11
    const/4 v2, 0x0

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
    invoke-virtual {p0, v0}, Ltrj;->b(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Ltrj;->f:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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
.end method

.method public final b(I)V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    :goto_0
    iput-object v2, p0, Ltrj;->g:Landroid/graphics/SurfaceTexture;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Ltrj;->i:Z

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    aput p1, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Ltrj;->g:Landroid/graphics/SurfaceTexture;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ltrk;->c()V

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Ltrj;->o:Landroid/os/HandlerThread;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_7
    const/4 p1, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Ltrj;->f:[I

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

    nop

    :goto_9
    const v0, 0x1b

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p1, Landroid/os/Handler;

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

    :goto_d
    const/4 v1, 0x0

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

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_11
    new-instance v2, Ltri;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v3, p0, Ltrj;->m:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v2, p0, v1}, Ltri;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_30

    nop

    nop

    :goto_14
    new-instance v2, Landroid/graphics/SurfaceTexture;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_5

    nop

    :goto_18
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_19
    new-instance p1, Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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

    :goto_1b
    iget-object p0, p0, Ltrj;->b:Ltrk;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p1, p0, Ltrj;->h:Landroid/view/Surface;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v2, p0, Ltrj;->l:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Ltrj;->g:Landroid/graphics/SurfaceTexture;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    iget-boolean v0, p0, Ltrj;->i:Z

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_20
    aget v0, v0, v1

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

    :goto_21
    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :goto_22
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Ltrj;->g:Landroid/graphics/SurfaceTexture;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_24
    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v0, p0, Ltrj;->l:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-boolean p1, p0, Ltrj;->n:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v0, p0, Ltrj;->m:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_28
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_29
    goto/32 :goto_2e

    nop

    nop

    :goto_2a
    if-gtz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_3e

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2d
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    :goto_2e
    iget-object v0, p0, Ltrj;->g:Landroid/graphics/SurfaceTexture;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Ltrj;->f:[I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, v2, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_31
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_32
    aget v0, v0, v1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_33
    iget-object p1, p0, Ltrj;->g:Landroid/graphics/SurfaceTexture;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Ltrj;->f:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_37

    nop

    :goto_37
    goto/32 :goto_f

    nop

    nop

    :goto_38
    goto/32 :goto_1f

    nop

    nop

    :goto_39
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_3b
    new-instance p1, Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3c
    if-nez p0, :cond_5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    :goto_3e
    goto/32 :goto_7

    nop

    nop

    :goto_3f
    if-eqz v0, :cond_6

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_40
    invoke-direct {v2, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method public final c(Ltrg;)V
    .locals 8

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {v2 .. v7}, Ltrg;->a(IIJ[F)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    move-object v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6
    iget-object v7, p0, Ltrj;->c:[F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    :goto_8
    iput-object v0, p0, Ltrj;->g:Landroid/graphics/SurfaceTexture;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    iget-object v0, p0, Ltrj;->g:Landroid/graphics/SurfaceTexture;

    nop

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

    :goto_a
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    const/4 v4, 0x0

    nop

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

    :goto_d
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Ltrj;->h:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Ltrj;->b:Ltrk;

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

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_15

    nop

    nop

    :goto_11
    iget-object v0, p0, Ltrj;->g:Landroid/graphics/SurfaceTexture;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_12
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Ltrj;->k:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0}, Ltrk;->a()V

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Ltrj;->h:Landroid/view/Surface;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    :goto_1d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Ltrj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Ltrj;->h:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_29

    nop

    nop

    :goto_21
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x1

    nop

    nop

    :try_start_1
    iput-boolean v1, p0, Ltrj;->j:Z

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :goto_25
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v3, p0, Ltrj;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method
