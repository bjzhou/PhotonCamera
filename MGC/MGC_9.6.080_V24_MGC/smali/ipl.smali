.class public Lipl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lipv;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lpnu;

.field private final e:Lpnu;

.field private final f:Lkdq;

.field private final g:Lhoh;

.field private final h:Lipo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

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

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lipl;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const-string v0, "ipl"

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Lnoy;Ljava/util/Map;Lkdq;Lipo;Lhoh;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    :goto_0
    if-nez p3, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p3}, Lphh;->d()Lpnx;

    move-result-object p3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p3, p3, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3
    sget-object p4, Llhv;->b:Llhv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    iget-object p3, p0, Lipl;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2}, Lnoy;->b(Ljava/lang/String;)Lpnu;

    move-result-object p1

    nop

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

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    iget-object p2, p2, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    iput-object p4, p0, Lipl;->h:Lipo;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_a
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    iput-object p3, p0, Lipl;->d:Lpnu;

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    :goto_e
    iget-object p2, p0, Lipl;->c:Ljava/lang/String;

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

    :goto_f
    if-nez p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    check-cast p3, Lphh;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_11
    iput-object p1, p0, Lipl;->e:Lpnu;

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    :goto_13
    if-nez p3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    iput-object p3, p0, Lipl;->b:Ljava/lang/String;

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

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

    :goto_17
    iput-object p3, p0, Lipl;->f:Lkdq;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    iput-object p5, p0, Lipl;->g:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p2, Lphh;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p2, p0, Lipl;->c:Ljava/lang/String;

    nop

    :goto_1d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, p3}, Lnoy;->b(Ljava/lang/String;)Lpnu;

    move-result-object p3

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

    :goto_1f
    invoke-interface {p2}, Lphh;->d()Lpnx;

    move-result-object p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    sget-object p3, Llhv;->d:Llhv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method

.method private static final b(Landroid/graphics/Rect;)Lcom/google/googlex/gcam/PixelRect;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xe

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PixelRect;->j(I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    nop

    :goto_8
    new-instance v0, Lcom/google/googlex/gcam/PixelRect;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    goto/32 :goto_f

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

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

    :goto_d
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

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_f
    iget v1, p0, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    iget v1, p0, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PixelRect;->k(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, p0}, Lcom/google/googlex/gcam/PixelRect;->l(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v1, p0, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpge;)Lrss;
    .locals 28

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface/range {p1 .. p1}, Lpge;->d()Lpro;

    move-result-object v2

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_1
    invoke-interface {v2}, Lpro;->h()Ljava/util/Map;

    move-result-object v2

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

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

    :goto_4
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_5
    new-instance v9, Lgct;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v0, v4}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v7, v0, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_67

    nop

    nop

    :goto_9
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

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

    :goto_b
    sget-object v0, Lipl;->a:Lsdb;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_10
    invoke-interface {v2}, Lprk;->b()Ljava/lang/String;

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v1}, Lcom/a;->zb(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v7}, Lcom/google/googlex/gcam/FaceInfoVector;-><init>()V

    goto/32 :goto_57

    nop

    nop

    :goto_13
    invoke-direct {v1, v2, v5, v7, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v8, v9}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_16
    int-to-float v0, v0

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

    :goto_17
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-wide v0, v7, Lcom/google/googlex/gcam/FaceInfoVector;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_19
    check-cast v2, Lprk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v1, "Empty secondary metadata, skipping."

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_1b
    iget v5, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_1c
    div-float/2addr v0, v4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface/range {p1 .. p1}, Lpge;->d()Lpro;

    move-result-object v1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    div-int/lit8 v25, v8, 0x5a

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v7, Lcom/google/googlex/gcam/FaceInfoVector;

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

    :goto_20
    const/16 v26, 0x0

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v27

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_22
    check-cast v8, Ljava/lang/Float;

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

    :goto_23
    invoke-interface {v1, v8}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_24
    invoke-interface {v1}, Lprk;->b()Ljava/lang/String;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v4}, Lipl;->b(Landroid/graphics/Rect;)Lcom/google/googlex/gcam/PixelRect;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_26
    return-object v0

    nop

    nop

    :goto_27
    goto/32 :goto_29

    nop

    nop

    :goto_28
    invoke-virtual {v6}, Lcom/google/googlex/gcam/PixelRect;->a()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_2a
    invoke-static {v9}, Lpuq;->bm(Lpnu;)D

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2b
    const/16 v10, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_2c
    invoke-interface {v1, v8}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v9, v1, v10}, Lgct;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_89

    nop

    nop

    :goto_2e
    check-cast v1, Lprk;

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

    :goto_2f
    const/16 v10, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_30
    new-instance v0, Landroid/graphics/Rect;

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

    :goto_31
    invoke-interface {v4}, Lpnu;->i()Landroid/graphics/Rect;

    move-result-object v4

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_32
    move/from16 v16, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v2}, Lipo;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v6}, Lcom/google/googlex/gcam/PixelRect;->b()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_35
    move-wide/from16 v17, v0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_36
    const-string v1, "ZGV2aWNlX2tleQ=="

    nop

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

    :goto_37
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_38
    invoke-virtual {v1, v8}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v8, v0, Lipl;->f:Lkdq;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v6}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v1}, Lpro;->h()Ljava/util/Map;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3c
    iget-object v2, v0, Lipl;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v2, Lcom/google/googlex/gcam/HalAfMetadata;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_40
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v3, v0, Lipl;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v3}, Lipl;->b(Landroid/graphics/Rect;)Lcom/google/googlex/gcam/PixelRect;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_43
    double-to-float v12, v8

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_44
    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_45
    check-cast v8, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_46
    sget-object v1, Lhml;->a:Ljava/lang/String;

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {v9, v2, v10}, Lijv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v15

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-wide v0, v2, Lcom/google/googlex/gcam/HalAfMetadata;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v0, Lscz;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4c
    iget v2, v0, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_4d
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_14

    nop

    nop

    :goto_4f
    double-to-float v8, v8

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_50
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_51
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v8, v9}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_53
    sget-object v1, Lhml;->z:Lhmn;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_54
    iget-object v8, v8, Lkdq;->i:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_55
    iget-object v8, v8, Lkdq;->g:Lj$/util/Optional;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v8, v0, Lipl;->d:Lpnu;

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_58
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_59
    div-float/2addr v7, v8

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5a
    const/16 v1, 0x711

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v4, v0, Lipl;->e:Lpnu;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_5c
    div-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v6}, Lcom/google/googlex/gcam/PixelRect;->g(Lcom/google/googlex/gcam/PixelRect;)J

    move-result-wide v23

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

    :goto_5e
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_60
    new-instance v9, Lijv;

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_61
    div-float/2addr v5, v6

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_62
    invoke-static {v3}, Lcom/google/googlex/gcam/PixelRect;->g(Lcom/google/googlex/gcam/PixelRect;)J

    move-result-wide v9

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_63
    int-to-float v5, v5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_64
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v6}, Lcom/google/googlex/gcam/PixelRect;->c()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_5e

    nop

    nop

    :goto_69
    invoke-interface {v3}, Lpnu;->i()Landroid/graphics/Rect;

    move-result-object v3

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

    :goto_6a
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v6}, Lcom/google/googlex/gcam/PixelRect;->d()I

    move-result v5

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    int-to-float v8, v8

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-interface {v2, v8}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_70
    int-to-float v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_71
    iget-object v8, v0, Lipl;->f:Lkdq;

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_72
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

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

    nop

    :goto_73
    new-instance v9, Lgct;

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_74
    invoke-static {v8, v1, v7}, Ltbt;->s(Lpnu;Lprk;Lcom/google/googlex/gcam/FaceInfoVector;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_75
    check-cast v8, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_76
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_77
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_78
    iget-object v2, v0, Lipl;->h:Lipo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_79
    invoke-static {v5}, Lcom/google/googlex/gcam/PixelRect;->g(Lcom/google/googlex/gcam/PixelRect;)J

    move-result-wide v13

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7a
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    move-wide/from16 v19, v0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-direct {v9, v1, v10}, Lgct;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_52

    nop

    nop

    :goto_7e
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v8, v0, Lipl;->e:Lpnu;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    const/16 v10, 0xd

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_81
    new-instance v1, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_82
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_4e

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_83
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :cond_1
    goto/32 :goto_6b

    nop

    :goto_84
    move-object/from16 v22, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_85
    iget-object v0, v0, Lipl;->g:Lhoh;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_86
    iget-object v3, v0, Lipl;->d:Lpnu;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v9, v0, Lipl;->d:Lpnu;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v8, v9}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    new-instance v6, Lcom/google/googlex/gcam/PixelRect;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_8b
    invoke-static/range {v9 .. v27}, Lcom/google/android/apps/camera/hdrplus/fusion/deblur/jni/NativeDeblurFusion;->nativeRetrieveReferenceFlowRoi(JFFJFFJJZLjava/lang/String;JIZZ)Z

    goto/32 :goto_30

    nop

    nop

    :goto_8c
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_8d
    invoke-static {v8}, Lpuq;->bm(Lpnu;)D

    move-result-wide v8

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop
.end method
