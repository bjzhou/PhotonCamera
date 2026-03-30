.class public Livc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lpci;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:I

.field public final c:I

.field public d:Lcom/google/android/libraries/vision/opengl/Texture;

.field public e:Landroid/graphics/SurfaceTexture;

.field public f:Livh;

.field public final g:Lsuu;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Liuk;

.field public final j:Lius;

.field public final k:Liuo;

.field private final l:Landroid/content/Context;

.field private final m:[F

.field private final n:[F

.field private o:F

.field private p:F

.field private q:J

.field private final r:Ljava/util/ArrayList;

.field private final s:Lows;

.field private final t:Litk;

.field private final u:Livj;

.field private final v:Livu;

.field private final w:Liud;

.field private final x:I

.field private final y:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private final z:Litp;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m(F)F
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Livc;->o:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget v0, v0, Liuk;->d:F

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    div-float/2addr v0, p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Livc;->i:Liuk;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    mul-float/2addr v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    return v0

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "ivc"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    sput-object v0, Livc;->a:Lsdb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Litk;Litp;Livj;Liud;Liuk;Lius;Liuo;Liva;Liuu;Liuq;Lium;Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_1
    iput-object p1, p0, Livc;->g:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2
    iput-object p1, p0, Livc;->v:Livu;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p2, p0, Livc;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_5
    iput-object p1, p0, Livc;->t:Litk;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Livc;->w:Liud;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Livc;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_9
    iput-boolean p0, p5, Liuk;->h:Z

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

    :goto_a
    sget v0, Livk;->a:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_8

    nop

    nop

    :goto_c
    iput-object p3, p0, Livc;->u:Livj;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p12, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_f
    iput-object v0, p0, Livc;->y:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    iput-wide v0, p0, Livc;->q:J

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_11
    new-array v0, v0, [F

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

    nop

    :goto_12
    iput-object p7, p0, Livc;->k:Liuo;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_13
    iput-object p5, p0, Livc;->i:Liuk;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p2, Lows;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p2}, Lows;-><init>()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1}, Lpnu;->g()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1a
    iput-wide v0, p0, Livc;->q:J

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p3, Livj;->b:Lpnu;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    iput-object v0, p0, Livc;->n:[F

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p2, p12}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Ltri;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p3}, Livj;->a()D

    move-result-wide p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_22
    invoke-virtual {p1, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x1

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_24
    invoke-virtual {p4}, Liud;->k()Z

    move-result p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_26
    div-double/2addr v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_27
    iput-object p12, p0, Livc;->l:Landroid/content/Context;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_28
    iput-object p1, p0, Livc;->r:Ljava/util/ArrayList;

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

    :goto_29
    double-to-int p2, v0

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

    :goto_2a
    iput v0, p0, Livc;->c:I

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2c
    const/16 v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v0, p0, v1}, Ltri;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object p2, p0, Livc;->z:Litp;

    nop

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

    :goto_2f
    return-void

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_31
    iput-object v1, p0, Livc;->m:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_32
    iput p1, p0, Livc;->x:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p1, p3, Livj;->d:Livu;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_34
    const v1, 0x1a

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput-object p2, p0, Livc;->s:Lows;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_36
    new-array v1, v0, [F

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_37
    iput-object p6, p0, Livc;->j:Lius;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sget p2, Livk;->a:I

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

    :goto_39
    int-to-double v0, p2

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3b
    const-wide p2, 0x4076800000000000L    # 360.0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    mul-double/2addr v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_3e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_17

    nop

    :goto_3f
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_40
    const v0, 0x14

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1, p11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-instance p1, Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m(F)F
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    div-float/2addr v0, p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    mul-float/2addr v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Livc;->i:Liuk;

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

    :goto_4
    iget v0, v0, Liuk;->e:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget p0, p0, Livc;->p:F

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
.end method


# virtual methods
.method public final close()V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v2}, Liuj;->a()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Livc;->s:Lows;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2
    if-lt v1, v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v2, Liuj;

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

    :goto_4
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    iget-object p0, p0, Livc;->r:Ljava/util/ArrayList;

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

    :goto_9
    const v1, 0xa

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

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_d
    const v0, 0x1e

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    :goto_10
    goto :goto_b

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lows;->close()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :cond_0
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v3, p0, Livc;->m:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p1, Liuk;->o:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_3
    const v2, 0x3e19999a    # 0.15f

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

    :goto_4
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v1, p1, Liuk;->h:Z

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a4

    nop

    :goto_7
    mul-float/2addr p1, v5

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

    :goto_8
    iput v6, v1, Liuk;->b:F

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    iget-object v1, p0, Livc;->m:[F

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Livc;->w:Liud;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_b
    iput v2, p1, Liuk;->g:F

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_d
    mul-float/2addr v4, p1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_e
    iget-object v3, v1, Liud;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1, v0, v4, v4, v1}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    goto/32 :goto_98

    nop

    nop

    :goto_10
    add-float/2addr v1, p1

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

    nop

    :goto_11
    goto/16 :goto_6e

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_14
    mul-float/2addr v1, v2

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Livc;->f:Livh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    iget-boolean v3, v1, Liuk;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_1a
    add-float/2addr p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1b
    const/16 p1, 0xbe2

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p0, Livc;->i:Liuk;

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

    :goto_1d
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v6, p0, Livc;->p:F

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_1f
    iget-wide v6, p1, Liud;->g:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_20
    add-float/2addr v3, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_22
    iget v1, p1, Liuk;->g:F

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v3, p0, Livc;->b:I

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_24
    mul-float/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/high16 v8, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_27
    iget p1, p1, Liuk;->q:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Liud;->g()F

    move-result p1

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v2, p1, Liuk;->e:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p0, Livc;->w:Liud;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget v6, p0, Livc;->p:F

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_2d
    int-to-float v4, v4

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

    :goto_2e
    invoke-static {v0, v0, v1, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto/32 :goto_67

    nop

    nop

    :goto_2f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {p0, v3}, Livc;->166277962e993c138a6b1f0c9b571cc0m(F)F

    move-result v3

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_31
    mul-float/2addr v3, p1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_32
    iget-object p1, p1, Livh;->a:Liwz;

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v1, p0, Livc;->i:Liuk;

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_b0

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_38
    add-float/2addr v1, p1

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput-boolean v1, p1, Liuk;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move v9, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_3b
    cmpl-float v1, v1, v4

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_3c
    check-cast v1, Liuj;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    int-to-float p1, v3

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_3e
    iget-object p1, p0, Livc;->t:Litk;

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1}, Lows;->b()Z

    move-result p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_40
    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    :cond_5
    goto/32 :goto_be

    nop

    nop

    nop

    :goto_41
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :cond_6
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p1, p0, Livc;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v6, p0, Livc;->w:Liud;

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_45
    mul-float/2addr v2, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_46
    const v4, 0x36eae18b    # 7.0E-6f

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

    nop

    nop

    :goto_47
    iget-object v1, v1, Livx;->d:Livl;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    mul-float/2addr v6, v4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget v6, p0, Livc;->p:F

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p1}, Livh;->b()V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget v6, p0, Livc;->o:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iput v2, v1, Liuk;->b:F

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v1, p0, Livc;->w:Liud;

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_4f
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_50
    iget-object p1, p0, Livc;->f:Livh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_51
    add-float/2addr p1, p1

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v1}, Livl;->getCaptureProgress()F

    move-result v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_7
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_55
    mul-float/2addr v4, v1

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const v5, 0x397ecdd2    # 2.4300002E-4f

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_57
    iget-object p1, p0, Livc;->i:Liuk;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_58
    mul-float/2addr v4, p1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_59
    iget v4, p0, Livc;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v1, p0, Livc;->w:Liud;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p1, v3, v1, v2}, Litk;->a([FJ)V

    :goto_5c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_5d
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-nez p1, :cond_8

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_8
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_5f
    if-lt v0, p1, :cond_9

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object p1, p0, Livc;->i:Liuk;

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iput-boolean v5, p1, Liuk;->n:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_62
    sub-float/2addr v2, p1

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iput v1, v2, Liuk;->g:F

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iput v4, v1, Liuk;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_65
    invoke-interface {v1}, Liuj;->b()V

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_66
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_67
    iget-object p0, p0, Livc;->r:Ljava/util/ArrayList;

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

    nop

    :goto_68
    iget-object p1, p1, Liuk;->f:[F

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_69
    invoke-virtual {v1}, Litk;->d()V

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_6a
    iget-wide v3, v4, Liud;->g:D

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_6b
    mul-float/2addr v4, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_6c
    double-to-float v1, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6d
    goto/16 :goto_80

    nop

    :goto_6e
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    rem-int v0, v0, v1

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

    :goto_70
    mul-float/2addr p1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_71
    move v1, v0

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_72
    move p1, v9

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_74
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v3, p0, Livc;->n:[F

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_77
    add-float/2addr p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_78
    mul-float/2addr v4, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-gez v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_7b
    iget v3, v1, Liuk;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget v2, v1, Liuk;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_7d
    const/high16 v7, 0x43b40000    # 360.0f

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget p1, p1, Liuk;->a:F

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    move v1, v5

    nop

    nop

    :goto_80
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-object p1, p0, Livc;->e:Landroid/graphics/SurfaceTexture;

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_82
    sub-long v3, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_83
    if-nez v1, :cond_b

    nop

    goto/32 :goto_35

    nop

    :cond_b
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_84
    div-float/2addr p1, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object p1, p0, Livc;->s:Lows;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v1, p0, Livc;->w:Liud;

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_87
    goto/16 :goto_25

    nop

    nop

    :goto_88
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_89
    iget v4, v1, Liuk;->g:F

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_73

    nop

    nop

    :goto_8b
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v1}, Liud;->j()Z

    move-result v1

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget v3, p0, Livc;->o:F

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

    nop

    :goto_8e
    invoke-virtual {p1, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    goto/16 :goto_d0

    nop

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v1, p0, Livc;->i:Liuk;

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    goto/16 :goto_75

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    neg-float v2, v2

    nop

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_97
    iget-object p1, p1, Livh;->a:Liwz;

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_98
    iget-object p1, p0, Livc;->i:Liuk;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_99
    iget-boolean p1, v1, Liuk;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_9a
    iget p1, p1, Liuk;->k:I

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-static {p1}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_9c
    iget v1, v1, Liuk;->g:F

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_9d
    long-to-float v3, v3

    nop

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

    :goto_9e
    iget v1, p1, Liuk;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    neg-float v2, v2

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_a1
    div-float/2addr p1, v4

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_a2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-boolean v3, v1, Liuk;->h:Z

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_a4
    goto/32 :goto_b5

    nop

    nop

    :goto_a5
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_a6
    iput p1, v1, Liuk;->e:F

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_a7
    const/4 v0, 0x0

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_a8
    iget-wide v3, p0, Livc;->q:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {p1, v3}, Liwz;->f([F)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget v1, p1, Liuk;->g:F

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget v3, p0, Livc;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_ac
    iget v4, p0, Livc;->c:I

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_ad
    add-float/2addr v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_ae
    iget v2, p0, Livc;->p:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_af
    move v5, v0

    nop

    :goto_b0
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-direct {p0, v2}, Livc;->166277962e993c138a6b1f0c9b571cc0m(F)F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_b2
    iget v1, v2, Liuk;->g:F

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_b3
    div-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_b4
    return-void

    nop

    nop

    nop

    :goto_b5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b6
    div-float/2addr v6, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    iget-wide v6, v1, Liud;->p:D

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_b8
    mul-float/2addr p1, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    sub-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_ba
    iput v2, v1, Liuk;->c:F

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_bb
    invoke-direct {p0, p1}, Livc;->f875135777c17da3cef2ea6eeff5be29m(F)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_bd
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_be
    iget-object v1, v1, Liud;->a:Livx;

    nop

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

    :goto_bf
    iput v4, v1, Liuk;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_c0
    iget v3, p1, Liuk;->p:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_c1
    if-gtz v1, :cond_c

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_c2
    iget v6, p0, Livc;->o:F

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    iget-object p1, p0, Livc;->f:Livh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_c4
    iget-object v3, p0, Livc;->m:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    add-float/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_c8
    int-to-float v1, v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_c9
    if-eqz v3, :cond_d

    nop

    goto/32 :goto_96

    nop

    nop

    :cond_d
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    div-float/2addr p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_cc
    iget-object v2, p0, Livc;->i:Liuk;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_cd
    double-to-float p1, v6

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iput p1, v1, Liuk;->d:F

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

    nop

    :goto_cf
    iput v1, p1, Liuk;->c:F

    nop

    nop

    :goto_d0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    mul-float/2addr v2, v3

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_d2
    const v0, 0x13

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_d3
    iput-wide v1, p0, Livc;->q:J

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-direct {p0, v4}, Livc;->f875135777c17da3cef2ea6eeff5be29m(F)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_d5
    mul-float/2addr p1, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    sub-float/2addr v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_d9
    sub-float/2addr v3, v4

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_da
    neg-float v1, v6

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_db
    add-float/2addr v3, v3

    nop

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

    :goto_dc
    iget-object p1, p0, Livc;->i:Liuk;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    move v4, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_de
    cmpl-float v1, v1, v2

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_df
    double-to-float v6, v6

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

    nop

    :goto_e0
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_e1
    add-float/2addr p1, p1

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

    :goto_e2
    iget v3, p0, Livc;->o:F

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_e3
    iget-object p1, p0, Livc;->i:Liuk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_e4
    iget v1, p1, Liuk;->j:I

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    mul-float/2addr v4, v6

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {p1, v3}, Liwz;->e([F)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_e7
    double-to-float v3, v3

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    const v4, 0x3f666666    # 0.9f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_e9
    iget-object v4, p0, Livc;->w:Liud;

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    sub-float v1, p1, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_eb
    neg-double v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    iget-wide v6, v6, Liud;->f:D

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_ed
    iget-object v1, p0, Livc;->t:Litk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    div-float/2addr p1, v6

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Livj;->a()D

    move-result-wide v0

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p1, Liuk;->h:Z

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Livc;->v:Livu;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Livc;->i:Liuk;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Livc;->o:F

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p1, Liuk;->q:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_7
    double-to-float p1, v0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_8
    div-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    div-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_46

    nop

    nop

    :goto_b
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_67

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_41

    nop

    nop

    :goto_e
    iput p1, v1, Liud;->o:I

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    rem-int/lit16 v0, v0, 0x168

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    div-float/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lt v2, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v0, v0, Livu;->a:I

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_14
    iget v1, p1, Liuk;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_15
    iput v0, v1, Liud;->n:I

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

    :goto_16
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_19
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Livc;->i:Liuk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1b
    iget v0, p0, Livc;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1c
    iget-object p0, p0, Livc;->r:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    int-to-float v1, v1

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

    :goto_1e
    iget-object v1, p0, Livc;->w:Liud;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    div-float/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_17

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_16

    nop

    nop

    :goto_22
    invoke-virtual {p1, p2, p3}, Litk;->b(II)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p1, p0, Livc;->l:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p1, Landroid/app/Activity;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int/lit16 v0, v0, 0x168

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_34

    nop

    :goto_27
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p1, p0, Livc;->i:Liuk;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Livc;->v:Livu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_2a
    invoke-static {v0, v2, v3, v3, v1}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    goto/32 :goto_1b

    nop

    nop

    :goto_2b
    div-float/2addr v0, v1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput p1, p0, Livc;->o:F

    nop

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

    :goto_2d
    int-to-float v0, v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2e
    iget v0, p0, Livc;->p:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2f
    double-to-float p1, v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_30
    iget-object p1, p0, Livc;->u:Livj;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Livj;->a()D

    move-result-wide v0

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_32
    iget v1, v0, Livu;->b:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_35
    mul-float/2addr p1, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_36
    iget v0, v0, Livu;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_37
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_38
    invoke-virtual {p1, p2, p3}, Livh;->c(II)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_39
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    :goto_3a
    div-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3b
    const v0, 0x7

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v0, :cond_2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5b

    nop

    nop

    :goto_3d
    iget-object v0, p0, Livc;->n:[F

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    int-to-float v1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_40
    const/high16 v1, 0x43b40000    # 360.0f

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p1, p0, Livc;->u:Livj;

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

    nop

    :goto_42
    sub-int/2addr v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_44
    invoke-interface {v0, p2, p3}, Liuj;->c(II)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    return-void

    nop

    :goto_46
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v0, :cond_3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_48
    mul-int/lit8 p1, p1, 0x5a

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_49
    iput p1, p0, Livc;->o:F

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_4a
    iget v1, v0, Livu;->b:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_4c
    iput-boolean v0, p1, Liuk;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_4d
    iput p2, p1, Liuk;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_4e
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_4f
    mul-float/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_51
    iget-object p1, p0, Livc;->f:Livh;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_52
    iput v0, p1, Liuk;->p:F

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const v1, 0xd

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_54
    iget-object p1, p0, Livc;->u:Livj;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_56
    invoke-virtual {p1}, Livj;->a()D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_57
    iget-object p1, p0, Livc;->u:Livj;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_58
    double-to-float p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_59
    iput p3, p1, Liuk;->k:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iput v0, p1, Liuk;->a:F

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

    :goto_5b
    iget v0, p1, Liuk;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1}, Livj;->a()D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_5d
    check-cast v0, Liuj;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_5e
    int-to-float v0, p2

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_60
    double-to-float p1, v0

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/4 v3, 0x0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_62
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_64
    invoke-virtual {v1}, Liud;->k()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_65
    neg-int v1, p1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iput p1, p0, Livc;->p:F

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_68
    iput v0, p1, Liuk;->l:F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-object p1, p0, Livc;->t:Litk;

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

    :goto_6a
    iput p1, p0, Livc;->p:F

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Livc;->v:Livu;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Livc;->y:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Livc;->v:Livu;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Livc;->d:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p2, Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v1, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iget-object p1, p0, Livc;->t:Litk;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Livc;->t:Litk;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

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

    :goto_9
    iget-object v0, p0, Livc;->s:Lows;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p2}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_b
    const v1, 0x8d65

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Livc;->e:Landroid/graphics/SurfaceTexture;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x8

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_e
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    goto/32 :goto_c

    nop

    nop

    :goto_10
    iget-object p2, p0, Livc;->z:Litp;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p2, p0, Livc;->d:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p2, p0, Livc;->e:Landroid/graphics/SurfaceTexture;

    nop

    nop

    :goto_15
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_16
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_17
    invoke-direct {v1, p0, p1, v2, p2}, Lhig;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p1, p2, v0}, Livh;-><init>(Lcom/google/android/libraries/vision/opengl/Texture;Liuk;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v2, 0x13

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p1, p0, Livc;->f:Livh;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1b
    new-instance v1, Lhig;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p2, v0, p1, v1}, Lcom/google/android/libraries/vision/opengl/Texture;-><init>(III)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    :goto_1e
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1f
    iget p1, p1, Livu;->b:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_21
    iget v1, v0, Livu;->a:I

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

    nop

    :goto_22
    new-instance p1, Livh;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto/32 :goto_14

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_25
    iget v0, p1, Livu;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_26
    iget v0, v0, Livu;->b:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_27
    iget-object p1, p0, Livc;->e:Landroid/graphics/SurfaceTexture;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_28
    goto/32 :goto_1e

    nop

    :goto_29
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_1
    goto/32 :goto_28

    nop

    :goto_2b
    invoke-virtual {p1, p2}, Litk;->e(Litp;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Livc;->v:Livu;

    nop

    nop

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

    :goto_2d
    new-instance p1, Landroid/graphics/SurfaceTexture;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1, p2, p0}, Litk;->c(Lcom/google/android/libraries/vision/opengl/Texture;Livu;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_30
    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Livc;->i:Liuk;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->getName()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Livc;->g:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0x9

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

    :goto_35
    iput-object p2, p0, Livc;->d:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop
.end method
