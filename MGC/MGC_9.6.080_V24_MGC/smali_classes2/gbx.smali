.class public final Lgbx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Lgbz;

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/nio/ByteBuffer;

.field public i:Ljava/nio/ByteBuffer;

.field public j:F

.field public k:Z

.field public l:Lsxp;

.field private final m:Ljava/nio/FloatBuffer;

.field private final n:Ljava/nio/FloatBuffer;

.field private o:Lrcx;

.field private p:Lcom/google/android/libraries/vision/opengl/Texture;

.field private q:Lcom/google/android/libraries/vision/opengl/Texture;

.field private r:Lcom/google/android/libraries/vision/opengl/Texture;

.field private final s:[F

.field private final t:Landroid/content/Context;

.field private u:Luoj;

.field private v:Luoj;

.field private w:Luoj;

.field private x:Luoj;

.field private y:Luoj;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()V
    .locals 5

    goto/32 :goto_25

    nop

    nop

    :goto_0
    check-cast v0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_38

    nop

    :goto_2
    iput-object v0, p0, Lgbx;->w:Luoj;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v1, Lcom/google/android/apps/camera/ui/eduimageview/JrT/cUhjhcVVea;->piBjDIn:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lgbx;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v2, v0, v1}, Lrcx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_8
    const-string v0, "aVertex"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Lrcx;->e(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    :goto_e
    new-instance v2, Ljava/io/InputStreamReader;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v2, Lrcx;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v1, Ljava/io/InputStreamReader;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v3, 0x7f13007e

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

    :goto_13
    const-string v1, "uVertexTransform"

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Lrcx;->d(Ljava/lang/String;)Luoj;

    move-result-object v0

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

    :goto_15
    iget-object v0, p0, Lgbx;->o:Lrcx;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v0}, Lrcx;->e(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_17
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Lrcx;->d(Ljava/lang/String;)Luoj;

    move-result-object v0

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

    nop

    :goto_19
    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Lgbx;->v:Luoj;

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

    :goto_1b
    const-string v1, "uAspectRatio"

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1c
    iget-object v3, p0, Lgbx;->t:Landroid/content/Context;

    nop

    nop

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

    :goto_1d
    new-instance v0, Ljava/io/BufferedReader;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v2, "\n"

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lgbx;->s:[F

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lgbx;->o:Lrcx;

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

    nop

    :goto_21
    invoke-static {v2}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v3

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v0, p0, Lgbx;->u:Luoj;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v2}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v2

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

    :goto_25
    const v0, 0x1d

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

    :goto_26
    const-string v1, "uCornerRadius"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lgbx;->o:Lrcx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_28
    invoke-static {v1}, Lj$/io/BufferedReaderRetargetClass;->lines(Ljava/io/BufferedReader;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v4, 0x7f13007d

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v1, Ljava/lang/String;

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

    nop

    :goto_2f
    iget-object v2, p0, Lgbx;->t:Landroid/content/Context;

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

    :goto_30
    iput-object v2, p0, Lgbx;->o:Lrcx;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_31
    invoke-interface {v0, v3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    :goto_33
    invoke-virtual {v0, v1}, Lrcx;->d(Ljava/lang/String;)Luoj;

    move-result-object v0

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

    :goto_34
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_35
    iput-object v0, p0, Lgbx;->y:Luoj;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_36
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_39
    iput-object v0, p0, Lgbx;->x:Luoj;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

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

    nop

    :goto_3b
    invoke-static {v0}, Lj$/io/BufferedReaderRetargetClass;->lines(Ljava/io/BufferedReader;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3c
    iget-object v0, p0, Lgbx;->o:Lrcx;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v1, Ljava/io/BufferedReader;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    const v1, 0x4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    iput-object v2, p0, Lgbx;->m:Ljava/nio/FloatBuffer;

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

    nop

    :goto_8
    new-array v1, v1, [F

    nop

    nop

    fill-array-data v1, :array_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v1}, Lrgw;->p([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    new-array v2, v1, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_0

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Lgbx;->k:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lgbx;->t:Landroid/content/Context;

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

    :goto_f
    iput-object v1, p0, Lgbx;->n:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    new-array v0, v0, [F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lgbx;->s:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    const/16 v0, 0x10

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

    nop

    :goto_15
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-boolean v0, p0, Lgbx;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_18
    invoke-static {v2}, Lrgw;->p([F)Ljava/nio/FloatBuffer;

    move-result-object v2

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
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m()V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    new-instance v0, Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    iget v2, p0, Lgbx;->e:I

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

    nop

    :goto_3
    const v0, 0x2

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
    iget v1, p0, Lgbx;->d:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lgbx;->r:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/vision/opengl/Texture;-><init>(II)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Lgbx;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    iget v1, p0, Lgbx;->d:I

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

    :goto_e
    div-int/lit8 v1, v1, 0x2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_10
    iput-object v0, p0, Lgbx;->q:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x8

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

    :goto_13
    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/vision/opengl/Texture;-><init>(II)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v2, p0, Lgbx;->e:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    iget v2, p0, Lgbx;->e:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/vision/opengl/Texture;-><init>(II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v0, p0, Lgbx;->p:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    div-int/lit8 v1, v1, 0x2

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
.end method


# virtual methods
.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 21

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object/from16 v1, p0

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

    nop

    :goto_7
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    throw v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, v1, Lgbx;->g:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_a

    nop

    iget-object v0, v1, Lgbx;->h:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    if-eqz v0, :cond_a

    nop

    iget-object v0, v1, Lgbx;->i:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/16 :goto_10

    nop

    :cond_1
    iget-object v0, v1, Lgbx;->o:Lrcx;

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {p0 .. p0}, Lgbx;->166277962e993c138a6b1f0c9b571cc0m()V

    :cond_2
    iget-object v0, v1, Lgbx;->p:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lgbx;->q:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    if-eqz v2, :cond_9

    nop

    nop

    iget-object v2, v1, Lgbx;->r:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    if-nez v2, :cond_3

    nop

    goto/16 :goto_f

    nop

    nop

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    iget v3, v1, Lgbx;->e:I

    nop

    nop

    nop

    nop

    if-ne v2, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->getWidth()I

    move-result v0

    nop

    nop

    nop

    iget v2, v1, Lgbx;->d:I

    nop

    nop

    nop

    nop

    if-eq v0, v2, :cond_5

    nop

    nop

    :cond_4
    invoke-direct/range {p0 .. p0}, Lgbx;->f875135777c17da3cef2ea6eeff5be29m()V

    :cond_5
    iget v0, v1, Lgbx;->b:I

    nop

    nop

    iget v2, v1, Lgbx;->c:I

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v0, 0x4000

    nop

    nop

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v0, v1, Lgbx;->o:Lrcx;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lrcx;->a()V

    iget v2, v1, Lgbx;->d:I

    nop

    const/high16 v4, 0x3f800000    # 1.0f

    nop

    if-lez v2, :cond_6

    nop

    iget v5, v1, Lgbx;->e:I

    nop

    nop

    if-lez v5, :cond_6

    nop

    nop

    int-to-float v2, v2

    nop

    nop

    nop

    int-to-float v5, v5

    nop

    nop

    nop

    nop

    div-float/2addr v2, v5

    nop

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    :cond_6
    move v2, v4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v5, v1, Lgbx;->l:Lsxp;

    nop

    nop

    sget-object v6, Lsxp;->b:Lsxp;

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    if-ne v5, v6, :cond_7

    nop

    nop

    nop

    iget-object v5, v1, Lgbx;->s:[F

    nop

    nop

    nop

    const/high16 v6, -0x3d4c0000    # -90.0f

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v3, v7, v7, v6}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    goto :goto_d

    nop

    nop

    nop

    nop

    :cond_7
    iget-object v5, v1, Lgbx;->l:Lsxp;

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Lsxp;->d:Lsxp;

    nop

    if-ne v5, v6, :cond_8

    nop

    nop

    nop

    iget-object v5, v1, Lgbx;->s:[F

    nop

    nop

    nop

    nop

    const/high16 v6, 0x42b40000    # 90.0f

    nop

    nop

    invoke-static {v5, v3, v7, v7, v6}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    :goto_d
    div-float v2, v4, v2

    nop

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    :cond_8
    iget-object v4, v1, Lgbx;->s:[F

    nop

    nop

    nop

    nop

    invoke-static {v4, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :goto_e
    iget-object v4, v1, Lgbx;->v:Luoj;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v1, Lgbx;->s:[F

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Luoj;->b([F)V

    iget-object v4, v1, Lgbx;->w:Luoj;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v2}, Luoj;->a(F)V

    iget-object v2, v1, Lgbx;->x:Luoj;

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Luoj;->f()V

    iget-object v2, v1, Lgbx;->x:Luoj;

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lgbx;->m:Ljava/nio/FloatBuffer;

    nop

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    invoke-virtual {v2, v4, v5}, Luoj;->g(Ljava/nio/FloatBuffer;I)V

    iget-object v2, v1, Lgbx;->y:Luoj;

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Luoj;->f()V

    iget-object v2, v1, Lgbx;->y:Luoj;

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lgbx;->n:Ljava/nio/FloatBuffer;

    nop

    invoke-virtual {v2, v4, v5}, Luoj;->g(Ljava/nio/FloatBuffer;I)V

    iget v2, v0, Lrcx;->a:I

    nop

    nop

    const-string v4, "uYTexture"

    nop

    nop

    nop

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    nop

    nop

    iget v4, v0, Lrcx;->a:I

    nop

    nop

    const-string v6, "uUTexture"

    nop

    nop

    nop

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    iget v6, v0, Lrcx;->a:I

    nop

    nop

    nop

    const-string v7, "uVTexture"

    nop

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    nop

    nop

    nop

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v2, 0x1

    nop

    nop

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v2, v1, Lgbx;->u:Luoj;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v1, Lgbx;->j:F

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Luoj;->a(F)V

    const v2, 0x84c0

    nop

    nop

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, v1, Lgbx;->p:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/libraries/vision/opengl/Texture;->bind()V

    iget-object v2, v1, Lgbx;->p:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/libraries/vision/opengl/Texture;->getWidth()I

    move-result v9

    nop

    iget-object v2, v1, Lgbx;->p:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/libraries/vision/opengl/Texture;->getHeight()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    iget-object v14, v1, Lgbx;->g:Ljava/nio/ByteBuffer;

    nop

    nop

    const/16 v6, 0xde1

    nop

    const/4 v7, 0x0

    nop

    nop

    const/16 v8, 0x1909

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    const/16 v12, 0x1909

    nop

    const/16 v13, 0x1401

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v6 .. v14}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v2, 0x2801

    nop

    nop

    nop

    nop

    nop

    const v4, 0x46180400    # 9729.0f

    nop

    nop

    nop

    const/16 v6, 0xde1

    nop

    nop

    nop

    nop

    invoke-static {v6, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v7, 0x2800

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v7, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v8, 0x2802

    nop

    const v9, 0x47012f00    # 33071.0f

    nop

    nop

    nop

    nop

    invoke-static {v6, v8, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v10, 0x2803

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v10, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v11, 0x84c1

    nop

    nop

    nop

    nop

    invoke-static {v11}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v11, v1, Lgbx;->q:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Lcom/google/android/libraries/vision/opengl/Texture;->bind()V

    iget-object v11, v1, Lgbx;->q:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    invoke-virtual {v11}, Lcom/google/android/libraries/vision/opengl/Texture;->getWidth()I

    move-result v15

    nop

    iget-object v11, v1, Lgbx;->q:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    invoke-virtual {v11}, Lcom/google/android/libraries/vision/opengl/Texture;->getHeight()I

    move-result v16

    nop

    iget-object v11, v1, Lgbx;->h:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop

    const/16 v12, 0xde1

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    const/16 v14, 0x190a

    nop

    nop

    nop

    const/16 v17, 0x0

    nop

    nop

    nop

    nop

    nop

    const/16 v18, 0x190a

    nop

    const/16 v19, 0x1401

    nop

    nop

    nop

    nop

    move-object/from16 v20, v11

    nop

    invoke-static/range {v12 .. v20}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v6, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v7, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v8, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v10, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v9, 0x84c2

    nop

    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v9, v1, Lgbx;->r:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lcom/google/android/libraries/vision/opengl/Texture;->bind()V

    iget-object v9, v1, Lgbx;->r:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lcom/google/android/libraries/vision/opengl/Texture;->getWidth()I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v1, Lgbx;->r:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    invoke-virtual {v9}, Lcom/google/android/libraries/vision/opengl/Texture;->getHeight()I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v1, Lgbx;->i:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    const/16 v11, 0xde1

    nop

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    const/16 v13, 0x190a

    nop

    nop

    nop

    nop

    nop

    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    nop

    const/16 v17, 0x190a

    nop

    const/16 v18, 0x1401

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v19, v9

    nop

    nop

    nop

    nop

    invoke-static/range {v11 .. v19}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v6, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v7, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v2, 0x812f

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v8, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v6, v10, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget-object v2, v1, Lgbx;->m:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    nop

    nop

    div-int/2addr v2, v5

    nop

    nop

    nop

    nop

    const/4 v4, 0x5

    nop

    invoke-static {v4, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v2, v1, Lgbx;->p:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/libraries/vision/opengl/Texture;->unbind()V

    iget-object v2, v1, Lgbx;->q:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/libraries/vision/opengl/Texture;->unbind()V

    iget-object v2, v1, Lgbx;->r:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/libraries/vision/opengl/Texture;->unbind()V

    iget-object v2, v1, Lgbx;->y:Luoj;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Luoj;->e()V

    iget-object v2, v1, Lgbx;->x:Luoj;

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Luoj;->e()V

    invoke-virtual {v0}, Lrcx;->c()V

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_9
    :goto_f
    monitor-exit p0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_a
    :goto_10
    monitor-exit p0

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lgbx;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method
