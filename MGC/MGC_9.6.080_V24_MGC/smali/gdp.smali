.class public final Lgdp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgcy;


# static fields
.field public static final a:[F

.field public static final b:F


# instance fields
.field public final c:Lqjv;

.field public final d:[F

.field public final e:[F

.field public final f:[F

.field public final g:[F

.field public final h:Lqjs;

.field public final i:Liof;

.field private final j:Loyd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lgdp;->a:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    :goto_4
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    double-to-float v0, v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_11

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    goto/32 :goto_3

    nop

    :goto_b
    new-array v0, v0, [F

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_1

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    sput v0, Lgdp;->b:F

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    const v0, 0xb

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x40000000    # 2.0f
        0x3fc00000    # 1.5f
    .end array-data

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    div-double/2addr v2, v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x9

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public constructor <init>(Lqht;Lgdg;Loyd;)V
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    check-cast p1, Liof;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_2
    invoke-virtual {p2, p1}, Lgdg;->a(Lqht;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lgdp;->c:Lqjv;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lgdp;->g:[F

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

    :goto_5
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_9
    new-array v0, v0, [F

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p1, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    iput-object v1, p0, Lgdp;->d:[F

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    invoke-static {p1, p2, p3}, Lqjv;->h(Lqht;Landroid/graphics/Bitmap;I)Lqjv;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Ljava/lang/AssertionError;

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

    nop

    nop

    :goto_e
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lgdp;->i:Liof;

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

    :goto_10
    iput-object p2, p0, Lgdp;->h:Lqjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lgdp;->f:[F

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_14
    new-array v0, v0, [F

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const p2, 0x7f13007a

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const p3, 0x8370

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    const-string p2, "trigrid.png"

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p3, p1, Liof;->a:Ljava/lang/Object;

    nop

    nop

    check-cast p3, Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {p3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    nop

    nop

    nop

    nop

    invoke-virtual {p3, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    nop

    nop

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, p2, p3}, Liof;->F(II)Lqjs;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

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

    :goto_1c
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1e
    const p3, 0x7f130079

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

    nop

    :goto_1f
    iput-object v0, p0, Lgdp;->e:[F

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

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

    :goto_21
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

    :goto_22
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_23
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_24
    new-array v1, v0, [F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_25
    iput-object p3, p0, Lgdp;->j:Loyd;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lcom/google/ar/core/Frame;Ltas;[FLqiu;Lqjs;)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p2, Lj$/util/Optional;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v1, Lgct;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Lj$/util/Comparator$-CC;->reverseOrder()Ljava/util/Comparator;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    invoke-static {p2}, Lsjf;->n(Ljava/lang/Iterable;)Lj$/util/stream/Stream;

    move-result-object p1

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

    nop

    :goto_6
    iget-object p2, p0, Lgdp;->j:Loyd;

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

    :goto_7
    new-instance p2, Lgdm;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, v0}, Lgdm;-><init>(I)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_9
    invoke-direct {p2, p0, p3, p4, p5}, Lgdn;-><init>(Lgdp;[FLqiu;Lqjs;)V

    goto/32 :goto_b

    nop

    nop

    :goto_a
    const/4 v2, 0x3

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

    :goto_b
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    const/16 v1, 0xa

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Lsjf;->o()Lj$/util/stream/Stream;

    move-result-object p1

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

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_f
    invoke-interface {p2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, v1}, Lgbe;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p2, v1}, Lgdm;-><init>(I)V

    goto/32 :goto_16

    nop

    nop

    :goto_12
    invoke-direct {p2, p1, v0, v1}, Lsiy;-><init>(Lj$/util/stream/Stream;Ljava/util/function/Function;Ljava/util/function/Function;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz p2, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, p2}, Lsjf;->i(Ljava/util/function/Predicate;)Lsjf;

    move-result-object p1

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

    :goto_17
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    check-cast p2, Lcom/google/ar/core/Session;

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

    :goto_1b
    new-instance p1, Lgdm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, p2}, Lsjf;->l(Ljava/util/Comparator;)Lsjf;

    move-result-object p1

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

    :goto_1f
    new-instance p2, Lgdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_20
    invoke-virtual {p2, v0}, Lsjf;->h(Ljava/util/function/BiPredicate;)Lsjf;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_21
    new-instance p2, Lsiy;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_22
    invoke-direct {v1, p1, v2}, Lgct;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-class v0, Lcom/google/ar/core/Plane;

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

    :goto_24
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v0, Lsiv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_29
    invoke-virtual {p2, v0}, Lcom/google/ar/core/Session;->getAllTrackables(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object p2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v0, p1, v1}, Lsiv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_20

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v0, Lgbe;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2d
    invoke-virtual {p2, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method
