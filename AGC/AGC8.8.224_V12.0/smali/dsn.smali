.class public final Ldsn;
.super Ljava/lang/Object;

# interfaces
.implements Lioo;


# static fields
.field private static final a:Lnak;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:[F


# instance fields
.field private final e:Ljava/util/Map;

.field private final f:Lldh;

.field private final g:Lldf;

.field private final h:Llbd;

.field private i:Llde;

.field private j:Lklv;

.field private k:F

.field private l:F

.field private final m:Lldc;

.field private n:Lldc;

.field private final o:Lgkr;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "com/google/android/apps/camera/fastzoom/FastZoomEffect"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldsn;->a:Lnak;

    const-string v0, "\n"

    invoke-static {v0}, Llhz;->j(Ljava/lang/String;)Llhz;

    move-result-object v1

    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "uniform float zoomFactor;"

    aput-object v5, v3, v4

    const-string v5, "out vec2 texCoord;"

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    const-string v7, "void main() {"

    aput-object v7, v3, v5

    const-string v8, "  texCoord = (1.0 + position) / 2.0;"

    const/4 v9, 0x3

    aput-object v8, v3, v9

    const-string v8, "  gl_Position = vec4(zoomFactor * position, 0.0, 1.0);"

    const/4 v10, 0x4

    aput-object v8, v3, v10

    const/4 v8, 0x5

    const-string v11, "}"

    aput-object v11, v3, v8

    const-string v12, "in vec2 position;"

    const-string v13, "#version 300 es"

    invoke-virtual {v1, v13, v12, v3}, Llhz;->g(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ldsn;->b:Ljava/lang/String;

    invoke-static {v0}, Llhz;->j(Ljava/lang/String;)Llhz;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "precision highp float;"

    aput-object v3, v1, v4

    const-string v3, "uniform highp sampler2D imgTex;"

    aput-object v3, v1, v6

    const-string v3, "in vec2 texCoord;"

    aput-object v3, v1, v5

    const-string v3, "layout(yuv) out vec4 outColor;"

    aput-object v3, v1, v9

    aput-object v7, v1, v10

    const-string v3, "  outColor = vec4(rgb_2_yuv(texture(imgTex, texCoord).rgb, itu_601_full_range), 1.0);"

    aput-object v3, v1, v8

    aput-object v11, v1, v2

    const-string v2, "#extension GL_EXT_YUV_target : enable"

    invoke-virtual {v0, v13, v2, v1}, Llhz;->g(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldsn;->c:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Ldsn;->d:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Llbd;Lgkr;[B[B[B[B[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Ldsn;->e:Ljava/util/Map;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Ldsn;->k:F

    const/high16 p3, 0x3b000000    # 0.001953125f

    iput p3, p0, Ldsn;->l:F

    iput-object p1, p0, Ldsn;->h:Llbd;

    iput-object p2, p0, Ldsn;->o:Lgkr;

    sget-object p3, Ldsn;->d:[F

    invoke-static {p3}, Lldi;->a([F)Lldi;

    move-result-object p3

    iget p4, p3, Lldi;->a:I

    iget p5, p3, Lldi;->c:I

    mul-int/lit8 p6, p5, 0x20

    mul-int p6, p6, p4

    const/4 p7, 0x1

    new-array p7, p7, [Llad;

    iget-object v0, p3, Lldi;->b:Llad;

    const/4 v1, 0x0

    aput-object v0, p7, v1

    filled-new-array {p5}, [I

    move-result-object p5

    div-int/lit8 p6, p6, 0x8

    invoke-static {p6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p6

    :goto_0
    if-ge v1, p4, :cond_0

    invoke-virtual {p3, v1, p6}, Lldi;->c(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance p3, Lldh;

    const v0, 0x8892

    invoke-static {p1, v0, p6}, Llax;->b(Llbd;ILjava/nio/ByteBuffer;)Llax;

    move-result-object p6

    invoke-direct {p3, p6, p7, p5, p4}, Lldh;-><init>(Llax;[Llad;[II)V

    iput-object p3, p0, Ldsn;->f:Lldh;

    invoke-static {p1}, Lldf;->a(Llbd;)Lldf;

    move-result-object p3

    iput-object p3, p0, Ldsn;->g:Lldf;

    invoke-static {p1}, Lldc;->o(Llbd;)Lloi;

    move-result-object p3

    sget-object p4, Ldsn;->b:Ljava/lang/String;

    invoke-static {p1, p4}, Lldc;->h(Llbd;Ljava/lang/String;)Lldc;

    move-result-object p4

    invoke-static {p4}, Lktf;->l(Lkyc;)Llfg;

    move-result-object p4

    invoke-virtual {p3, p4}, Lloi;->b(Llfg;)V

    sget-object p4, Ldsn;->c:Ljava/lang/String;

    invoke-static {p1, p4}, Lldc;->b(Llbd;Ljava/lang/String;)Lldc;

    move-result-object p1

    invoke-static {p1}, Lktf;->l(Lkyc;)Llfg;

    move-result-object p1

    invoke-virtual {p3, p1}, Lloi;->b(Llfg;)V

    invoke-virtual {p3}, Lloi;->d()Lldc;

    move-result-object p1

    iput-object p1, p0, Ldsn;->m:Lldc;

    iget-object p1, p2, Lgkr;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lklv;

    iput-object p1, p0, Ldsn;->j:Lklv;

    return-void
.end method

.method private final d(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Ldsn;->l:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()Liop;
    .locals 1

    sget-object v0, Liop;->e:Liop;

    return-object v0
.end method

.method public final synthetic b()Llbd;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lkba;->t(Lioo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Ldsn;->i:Llde;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llbk;->a()Lkzf;

    iput-object v1, p0, Ldsn;->i:Llde;

    :cond_0
    iget-object v0, p0, Ldsn;->n:Lldc;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Llbk;->a()Lkzf;

    iput-object v1, p0, Ldsn;->n:Lldc;

    :cond_1
    iget-object v0, p0, Ldsn;->f:Lldh;

    invoke-virtual {v0}, Lldh;->a()Lkzf;

    iget-object v0, p0, Ldsn;->m:Lldc;

    invoke-virtual {v0}, Llbk;->a()Lkzf;

    iget-object v0, p0, Ldsn;->g:Lldf;

    invoke-virtual {v0}, Lldf;->c()V

    return-void
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Ldsn;->o:Lgkr;

    invoke-virtual {v0}, Lgkr;->g()F

    move-result v0

    iget v1, p0, Ldsn;->k:F

    invoke-direct {p0, v0, v1}, Ldsn;->d(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic l(Lkpb;Lkpb;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lkba;->u(Lioo;Lkpb;Lkpb;)I

    move-result p1

    return p1
.end method

.method public final m(Lkeb;Lkfj;Lkeb;)V
    .locals 12

    iget-object p3, p0, Ldsn;->o:Lgkr;

    iget-object p3, p3, Lgkr;->a:Ljava/lang/Object;

    check-cast p3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lklv;

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldsn;->j:Lklv;

    if-nez v0, :cond_1

    iput-object p3, p0, Ldsn;->j:Lklv;

    :cond_1
    iget-object v0, p0, Ldsn;->j:Lklv;

    if-eq v0, p3, :cond_2

    return-void

    :cond_2
    iget-object p3, p0, Ldsn;->o:Lgkr;

    iget-object p3, p3, Lgkr;->c:Ljava/lang/Object;

    check-cast p3, Lbkc;

    invoke-virtual {p3}, Lbkc;->y()Lgxb;

    move-result-object p3

    if-eqz p3, :cond_14

    iget-object v0, p0, Ldsn;->i:Llde;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldsn;->n:Lldc;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ldsn;->o:Lgkr;

    iget-object v0, v0, Lgkr;->c:Ljava/lang/Object;

    check-cast v0, Lbkc;

    invoke-virtual {v0}, Lbkc;->y()Lgxb;

    move-result-object v0

    if-nez v0, :cond_4

    goto/16 :goto_b

    :cond_4
    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    check-cast v0, Lkaf;

    iget v1, v0, Lkaf;->a:I

    iget v2, v0, Lkaf;->b:I

    invoke-static {v1, v2}, Lkym;->d(II)Lkym;

    move-result-object v1

    iget-object v2, p0, Ldsn;->h:Llbd;

    new-instance v3, Llar;

    invoke-direct {v3, v1}, Llar;-><init>(Lkym;)V

    invoke-static {v2, v3}, Llde;->g(Llbd;Llaq;)Llde;

    move-result-object v1

    iput-object v1, p0, Ldsn;->i:Llde;

    invoke-static {v1}, Lktf;->k(Ljava/lang/Object;)Llfg;

    move-result-object v1

    invoke-static {v1}, Lldc;->m(Llfg;)Lldc;

    move-result-object v1

    iput-object v1, p0, Ldsn;->n:Lldc;

    iget v1, v0, Lkaf;->a:I

    int-to-float v1, v1

    iget v0, v0, Lkaf;->b:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    iput v1, p0, Ldsn;->l:F

    :goto_0
    iget-object v0, p0, Ldsn;->i:Llde;

    iget-object v1, p0, Ldsn;->n:Lldc;

    invoke-interface {p1}, Lkeb;->c()Lkou;

    move-result-object v2

    if-eqz v1, :cond_13

    if-eqz v0, :cond_13

    if-nez v2, :cond_5

    goto/16 :goto_a

    :cond_5
    iget-object v3, p0, Ldsn;->o:Lgkr;

    invoke-virtual {v3}, Lgkr;->g()F

    move-result v3

    iget v4, p0, Ldsn;->k:F

    invoke-direct {p0, v3, v4}, Ldsn;->d(FF)Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    :cond_6
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Lkou;->g()Ljava/util/Map;

    move-result-object v4

    if-eqz v3, :cond_7

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkoq;

    if-nez v2, :cond_7

    check-cast v4, Lmwa;

    invoke-virtual {v4}, Lmwa;->r()Lmwn;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    sget-object v4, Ldsn;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->c()Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const/16 v5, 0x46c

    invoke-interface {v4, v5}, Lnah;->G(I)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Missing camera metadata for activeId=%s. Resorting to metadata from id=%s"

    invoke-interface {v4, v6, v3, v5}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkoq;

    :cond_7
    iget-object v4, p0, Ldsn;->e:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    iget-object v4, p0, Ldsn;->o:Lgkr;

    iget-object v4, v4, Lgkr;->c:Ljava/lang/Object;

    check-cast v4, Lbkc;

    invoke-virtual {v4}, Lbkc;->y()Lgxb;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v6, v4, Lgxb;->a:Ljava/lang/Object;

    check-cast v6, Lily;

    invoke-virtual {v6}, Lily;->j()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_a

    iget-object v7, v4, Lgxb;->a:Ljava/lang/Object;

    check-cast v7, Lily;

    invoke-virtual {v7}, Lily;->f()Lkli;

    move-result-object v7

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v7, v8}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SizeF;

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v7, v9}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    if-eqz v8, :cond_a

    if-eqz v7, :cond_a

    invoke-static {v7}, Lnsy;->V([F)F

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkll;

    iget-object v10, v4, Lgxb;->a:Ljava/lang/Object;

    iget-object v11, v9, Lkll;->a:Ljava/lang/String;

    check-cast v10, Lily;

    invoke-virtual {v10, v11}, Lily;->a(Ljava/lang/String;)Lkli;

    move-result-object v10

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v10, v11}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SizeF;

    if-eqz v10, :cond_9

    invoke-virtual {v8}, Landroid/util/SizeF;->getWidth()F

    move-result v11

    div-float/2addr v11, v7

    invoke-virtual {v10}, Landroid/util/SizeF;->getWidth()F

    move-result v10

    div-float/2addr v11, v10

    iget-object v10, p0, Ldsn;->e:Ljava/util/Map;

    iget-object v9, v9, Lkll;->a:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    :goto_2
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v4}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    if-nez v4, :cond_b

    sget-object p1, Ldsn;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string p2, "Scaler crop region unexpectedly missing."

    const/16 p3, 0x46b

    invoke-static {p1, p2, p3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_b
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v6}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    if-nez v2, :cond_c

    sget-object p1, Ldsn;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string p2, "Focal length unexpectedly missing."

    const/16 p3, 0x46a

    invoke-static {p1, p2, p3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_c
    iget-object v6, p0, Ldsn;->e:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_d

    iget-object v6, p0, Ldsn;->e:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float v6, v6, v2

    goto :goto_3

    :cond_d
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_3
    iget-object p3, p3, Lgxb;->a:Ljava/lang/Object;

    check-cast p3, Lily;

    invoke-virtual {p3, v3}, Lily;->a(Ljava/lang/String;)Lkli;

    move-result-object p3

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p3, v2}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    if-nez p3, :cond_e

    sget-object p1, Ldsn;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string p2, "Active array size unexpectedly missing."

    const/16 p3, 0x469

    invoke-static {p1, p2, p3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_e
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p3, v2

    mul-float p3, p3, v6

    iget-object v2, p0, Ldsn;->o:Lgkr;

    invoke-virtual {v2}, Lgkr;->g()F

    move-result v2

    div-float/2addr v2, p3

    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput p3, p0, Ldsn;->k:F

    invoke-interface {p1, p2}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object p1

    if-nez p1, :cond_f

    :try_start_0
    sget-object p2, Ldsn;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 p3, 0x468

    invoke-interface {p2, p3}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string p3, "inputImage unexpectedly null"

    invoke-interface {p2, p3}, Lnah;->o(Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-interface {p1}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :try_start_1
    new-instance p3, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p3, p2}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    iget-object v3, p0, Ldsn;->h:Llbd;

    invoke-static {v3, p3}, Llcd;->b(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Llcd;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    iget-object v4, p0, Ldsn;->h:Llbd;

    invoke-static {v4, p3}, Lldc;->j(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lldc;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v6, p0, Ldsn;->g:Lldf;

    invoke-virtual {v6, v3, v1}, Lldf;->e(Llcd;Lldc;)V

    iget-object v1, p0, Ldsn;->f:Lldh;

    iget v6, v1, Lldh;->c:I

    rem-int/lit8 v6, v6, 0x3

    const/4 v7, 0x0

    if-nez v6, :cond_10

    goto :goto_4

    :cond_10
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Lmoz;->e(Z)V

    new-instance v5, Llpu;

    const/4 v6, 0x4

    const/4 v8, 0x0

    invoke-direct {v5, v6, v1, v8}, Llpu;-><init>(ILldh;Llck;)V

    iget-object v1, p0, Ldsn;->m:Lldc;

    invoke-virtual {v5, v1}, Llpu;->c(Lldc;)Llby;

    move-result-object v1

    const-string v5, "position"

    invoke-virtual {v1, v5, v7}, Llby;->a(Ljava/lang/String;I)V

    const-string v5, "zoomFactor"

    invoke-virtual {v1, v5, v2}, Llby;->d(Ljava/lang/String;F)V

    const-string v2, "imgTex"

    invoke-virtual {v1, v2, v0}, Llby;->c(Ljava/lang/String;Llde;)V

    invoke-virtual {v1, v4}, Llby;->k(Lldc;)V

    iget-object v0, p0, Ldsn;->h:Llbd;

    invoke-static {v0}, Lktf;->u(Llbd;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v4}, Llbk;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v3}, Llbk;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-virtual {p3}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    invoke-interface {p1}, Lkpb;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_9
    invoke-virtual {v4}, Llbk;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    :try_start_a
    invoke-static {v0, v1}, Ldst;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_b
    invoke-virtual {v3}, Llbk;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v1

    :try_start_c
    invoke-static {v0, v1}, Ldst;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_d
    invoke-virtual {p3}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p3

    :try_start_e
    invoke-static {v0, p3}, Ldst;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    move-exception p3

    if-eqz p2, :cond_11

    :try_start_f
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception p2

    :try_start_10
    invoke-static {p3, p2}, Ldst;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_11
    :goto_8
    throw p3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :catchall_8
    move-exception p2

    if-eqz p1, :cond_12

    :try_start_11
    invoke-interface {p1}, Lkpb;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_9

    :catchall_9
    move-exception p1

    invoke-static {p2, p1}, Ldst;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_12
    :goto_9
    throw p2

    :cond_13
    :goto_a
    return-void

    :cond_14
    :goto_b
    return-void
.end method

.method public final synthetic n(Llcd;Lldc;)I
    .locals 0

    invoke-static {}, Lkba;->v()I

    move-result p1

    return p1
.end method
