.class public final synthetic Lcpy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcpy;

.field public static final synthetic b:Lcpy;

.field public static final synthetic c:Lcpy;

.field public static final synthetic d:Lcpy;

.field public static final synthetic e:Lcpy;

.field public static final synthetic f:Lcpy;

.field public static final synthetic g:Lcpy;

.field public static final synthetic h:Lcpy;

.field public static final synthetic i:Lcpy;

.field public static final synthetic j:Lcpy;

.field public static final synthetic k:Lcpy;

.field public static final synthetic l:Lcpy;

.field public static final synthetic m:Lcpy;

.field public static final synthetic n:Lcpy;

.field public static final synthetic o:Lcpy;

.field public static final synthetic p:Lcpy;

.field public static final synthetic q:Lcpy;

.field public static final synthetic r:Lcpy;

.field public static final synthetic s:Lcpy;

.field public static final synthetic t:Lcpy;

.field public static final synthetic u:Lcpy;


# instance fields
.field private final synthetic v:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcpy;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->u:Lcpy;

    new-instance v0, Lcpy;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->t:Lcpy;

    new-instance v0, Lcpy;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->s:Lcpy;

    new-instance v0, Lcpy;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->r:Lcpy;

    new-instance v0, Lcpy;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->q:Lcpy;

    new-instance v0, Lcpy;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->p:Lcpy;

    new-instance v0, Lcpy;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->o:Lcpy;

    new-instance v0, Lcpy;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->n:Lcpy;

    new-instance v0, Lcpy;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->m:Lcpy;

    new-instance v0, Lcpy;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->l:Lcpy;

    new-instance v0, Lcpy;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->k:Lcpy;

    new-instance v0, Lcpy;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->j:Lcpy;

    new-instance v0, Lcpy;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->i:Lcpy;

    new-instance v0, Lcpy;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->h:Lcpy;

    new-instance v0, Lcpy;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->g:Lcpy;

    new-instance v0, Lcpy;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->f:Lcpy;

    new-instance v0, Lcpy;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->e:Lcpy;

    new-instance v0, Lcpy;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->d:Lcpy;

    new-instance v0, Lcpy;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->c:Lcpy;

    new-instance v0, Lcpy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->b:Lcpy;

    new-instance v0, Lcpy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcpy;-><init>(I)V

    sput-object v0, Lcpy;->a:Lcpy;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcpy;->v:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lcpy;->v:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_12
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_13
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcpy;->v:I

    const-string v1, "present"

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    packed-switch v0, :pswitch_data_0

    check-cast p1, [B

    goto/16 :goto_7

    :pswitch_0
    check-cast p1, Landroid/hardware/camera2/CaptureResult$Key;

    return-object v1

    :pswitch_1
    check-cast p1, Landroid/hardware/camera2/CaptureResult$Key;

    return-object v1

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-static {}, Ldhp;->values()[Ldhp;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ldhp;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    move-object v5, v7

    :goto_0
    return-object v5

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-static {}, Ldhp;->values()[Ldhp;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    :pswitch_5
    check-cast p1, Ldxy;

    iget-wide v0, p1, Ldxy;->a:J

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p1, Lkor;

    iget-object v0, p1, Lkor;->a:Lkoj;

    iget v1, v0, Lkoj;->a:I

    new-instance v3, Landroid/graphics/RectF;

    iget-object v0, v0, Lkoj;->c:Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v1, v3}, Lcom/google/android/apps/camera/faceobfuscation/api/FaceToObfuscate;->c(ILandroid/graphics/RectF;)Ldsh;

    move-result-object v0

    iget-object v1, p1, Lkor;->a:Lkoj;

    iget v1, v1, Lkoj;->b:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ldsh;->c(F)V

    invoke-virtual {p1, v6}, Lkor;->a(B)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, v0, Ldsh;->c:Landroid/graphics/PointF;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lkor;->a(B)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, v0, Ldsh;->d:Landroid/graphics/PointF;

    iget p1, p1, Lkor;->d:F

    invoke-virtual {v0, p1}, Ldsh;->b(F)V

    invoke-virtual {v0}, Ldsh;->a()Lcom/google/android/apps/camera/faceobfuscation/api/FaceToObfuscate;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Landroid/hardware/camera2/params/Face;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/faceobfuscation/api/FaceToObfuscate;->c(ILandroid/graphics/RectF;)Ldsh;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ldsh;->c(F)V

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    :goto_1
    iput-object v1, v0, Ldsh;->c:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    :goto_2
    iput-object v3, v0, Ldsh;->d:Landroid/graphics/PointF;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v0, p1}, Ldsh;->b(F)V

    invoke-virtual {v0}, Ldsh;->a()Lcom/google/android/apps/camera/faceobfuscation/api/FaceToObfuscate;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Lchd;

    invoke-interface {p1}, Lchd;->b()Lche;

    move-result-object p1

    invoke-interface {p1}, Lche;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_9
    check-cast p1, Lchd;

    invoke-interface {p1}, Lchd;->b()Lche;

    move-result-object v0

    invoke-interface {v0}, Lche;->g()Lj$/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lchd;->b()Lche;

    move-result-object p1

    invoke-interface {p1}, Lche;->g()Lj$/time/Instant;

    move-result-object p1

    sget-object v0, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p1, v0}, Lj$/time/Instant;->truncatedTo(Lj$/time/temporal/TemporalUnit;)Lj$/time/Instant;

    move-result-object p1

    goto :goto_3

    :cond_2
    invoke-interface {p1}, Lchd;->b()Lche;

    move-result-object p1

    invoke-interface {p1}, Lche;->h()Lj$/time/Instant;

    move-result-object p1

    :goto_3
    return-object p1

    :pswitch_a
    check-cast p1, Lj$/util/Optional;

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lika;

    return-object p1

    :pswitch_b
    check-cast p1, Ljava/lang/String;

    sget-object v0, Ldhg;->a:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lika;->values()[Lika;

    move-result-object v0

    array-length v1, v0

    :goto_4
    if-ge v4, v1, :cond_4

    aget-object v2, v0, v4

    iget v5, v2, Lika;->u:I

    if-ne v5, p1, :cond_3

    move-object v3, v2

    goto :goto_5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-static {v3}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    :goto_6
    return-object p1

    :pswitch_c
    check-cast p1, Lgrz;

    iget-object p1, p1, Lgrz;->a:Landroid/graphics/Rect;

    return-object p1

    :pswitch_d
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    :pswitch_e
    check-cast p1, Lklv;

    invoke-static {p1}, Lddf;->l(Lklv;)Lddd;

    move-result-object p1

    return-object p1

    :pswitch_f
    check-cast p1, Lgyr;

    invoke-static {p1}, Lczz;->p(Lgyr;)Lgej;

    move-result-object p1

    return-object p1

    :pswitch_10
    check-cast p1, Lcsu;

    iget-object p1, p1, Lcsu;->a:Lctd;

    return-object p1

    :pswitch_11
    check-cast p1, Lioo;

    invoke-interface {p1}, Lioo;->a()Liop;

    move-result-object p1

    return-object p1

    :pswitch_12
    check-cast p1, Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgyw;

    return-object p1

    :pswitch_13
    check-cast p1, Lklm;

    invoke-static {p1}, Lkbo;->b(Lklm;)Lkbo;

    move-result-object p1

    return-object p1

    :pswitch_14
    check-cast p1, Ljwu;

    invoke-static {p1}, Lgyw;->b(Ljwu;)Lmqp;

    move-result-object p1

    return-object p1

    :goto_7
    :try_start_1
    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v0

    sget-object v1, Lmpq;->b:Lmpq;

    array-length v2, p1

    invoke-static {v1, p1, v4, v2, v0}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lmpq;

    iget-boolean p1, p1, Lmpq;->a:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_5

    move-object v5, v7

    goto :goto_8

    :catch_1
    move-exception p1

    sget-object v0, Left;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Error Parsing RESULT_AF_MULTI_DEPTH_FACE_DEBLUR."

    const/16 v2, 0x598

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :cond_5
    :goto_8
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lcpy;->v:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_12
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_13
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
