.class public final Ljfr;
.super Lmec;
.source "PG"


# static fields
.field public static final synthetic c:I

.field private static final d:I

.field private static final e:I


# instance fields
.field public final a:Lkba;

.field public b:Ljava/lang/Float;

.field private final f:Landroid/content/res/Resources;

.field private final g:Lrtm;

.field private final h:Lpdf;

.field private i:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_3

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

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1c

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    float-to-int v0, v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    const/high16 v0, 0x40c00000    # 6.0f

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    const/high16 v0, 0x41a00000    # 20.0f

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

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_d
    const/high16 v1, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    sput v0, Ljfr;->d:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

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

    :goto_10
    sput v0, Ljfr;->e:I

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

    :goto_11
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lkba;Lrtm;Loyd;Ljava/util/concurrent/ScheduledExecutorService;Lfwv;Lpdf;Lfdo;)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    :goto_0
    invoke-virtual {p6}, Lfwv;->i()Lows;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    new-instance p2, Ljeo;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Ljfr;->a:Lkba;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ljfr;->b:Ljava/lang/Float;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-interface {p4, p2, p5}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

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

    :goto_5
    const/high16 p1, 0x3f800000    # 1.0f

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

    :goto_6
    invoke-virtual {p1, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Ljfr;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "motion_blur_smarts_chip"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    const/4 p3, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    iput-object p1, p0, Ljfr;->i:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p2, p0, p3}, Ljeo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    :goto_f
    iput-object p3, p0, Ljfr;->g:Lrtm;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, p5, p8, v0}, Lmec;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lfdo;Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    iput-object p7, p0, Ljfr;->h:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method


# virtual methods
.method protected final a()Lmeb;
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v2, 0x7f1403c1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    iput-object v0, v1, Lmej;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lmeb;->a()Lonz;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p0, v1, Lmej;->g:Ljava/lang/Runnable;

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

    nop

    :goto_4
    iget-object v0, p0, Ljfr;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v2, v3}, Lmej;->f(J)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p0, Lgbg;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_21

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    const v1, 0xd

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_b
    sget p0, Ljfr;->d:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    const v2, 0x7f0802cd

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    const v0, 0x4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v0, 0x13

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    iput-object v0, v1, Lmej;->b:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_12
    invoke-static {}, Lmek;->a()Lmej;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, p0}, Lonz;->g(I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_14
    const/16 p0, 0x19

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

    :goto_15
    rem-int v0, v0, v1

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

    :goto_16
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

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

    nop

    :goto_17
    invoke-direct {p0, v0}, Lgbg;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    const/16 v2, 0xf

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1}, Lmej;->a()Lmek;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Ljfr;->f:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0, p0, v2}, Ljcl;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Ljcl;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lonz;->e()Lmeb;

    move-result-object p0

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

    :goto_1f
    invoke-virtual {v0, p0}, Lonz;->f(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    :goto_21
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_22
    iput-object v0, v1, Lmej;->c:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_23
    iput-object p0, v0, Lonz;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_25
    const-wide/16 v2, 0x1388

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
.end method

.method protected final b(Lpro;)Z
    .locals 12

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x3e19999a    # 0.15f

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ljfr;->h:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_4
    sget v1, Ljfr;->e:I

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_5
    const/high16 v5, -0x40000000    # -2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_6
    move-object v10, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_8
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    const-wide/32 v10, 0x4c4b40

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

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aget v0, v0, v4

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/high16 v1, 0x41200000    # 10.0f

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

    :goto_10
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_11
    iget-object v1, p0, Ljfr;->g:Lrtm;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aget-object v3, v0, v1

    nop

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

    :goto_13
    const/high16 p0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_15
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/high16 v1, 0x3e000000    # 0.125f

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lt v1, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_19
    array-length v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v4, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1b
    const/high16 p0, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_1c
    move-object v5, v1

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

    nop

    :goto_1d
    const v1, -0x43333333    # -0.025f

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

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1f
    const/high16 p1, 0x42a00000    # 80.0f

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

    :goto_20
    cmpg-float p0, p0, v1

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_21
    const/16 v3, 0x8

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_22
    invoke-interface {v1}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v1

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

    :goto_23
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_24
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_25
    if-gtz p0, :cond_4

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_4
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_26
    if-lez v3, :cond_5

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v3}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v3

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_29
    invoke-interface {v1}, Lrtm;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_2a
    const/high16 v0, 0x40400000    # 3.0f

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

    :goto_2b
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    :goto_2c
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p0, Ljfr;->h:Lpdf;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface/range {v5 .. v10}, Lppd;->b(JJLppc;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {}, Lcom/a;->lsb_b()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {p1}, Ljfq;-><init>()V

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_34
    invoke-static {}, Lcom/a;->lsb_a()F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Ljfq;->b()Lrss;

    move-result-object p0

    nop

    :goto_36
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {p1, v4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 p0, 0x1

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v5, Lppd;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3c
    goto :goto_36

    nop

    nop

    :goto_3d
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3e
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_3f
    throw p1

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_41
    mul-long/2addr v6, v10

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

    :goto_42
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-instance p1, Ljfq;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_44
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_45
    move v1, v2

    nop

    :goto_46
    goto/32 :goto_19

    nop

    nop

    :goto_47
    check-cast v0, [F

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-gez v1, :cond_8

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_9
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_4a
    mul-float/2addr v3, p0

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

    :goto_4b
    const-string v1, "gyro"

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-ltz p0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    :cond_a
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4d
    aget v1, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez p1, :cond_b

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_b
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-interface {p1, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_46

    nop

    nop

    :goto_51
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_52
    check-cast p0, Ljava/lang/Float;

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

    :goto_53
    div-float/2addr p1, v1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_54
    aget v3, v0, v3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_56
    int-to-long v6, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_58
    add-float/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_59
    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5a
    invoke-interface {p1, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_43

    nop

    nop

    :goto_5b
    iput-object v0, p0, Ljfr;->i:Ljava/lang/Float;

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    cmpg-float v1, v1, v5

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_5d
    div-float/2addr v3, p1

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_5e
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_5f
    mul-float/2addr p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p0}, Lrss;->h()Z

    move-result p1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_61
    sub-float/2addr p0, p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const v1, 0x40866666    # 4.2f

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_64
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_65
    cmpg-float v5, v3, v4

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_66
    if-gez v5, :cond_c

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    add-float/2addr p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/16 :goto_e

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v1, p0, Ljfr;->i:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    return p0

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_37

    nop

    nop

    :goto_6c
    sget-object v0, Lnym;->a:Landroid/hardware/camera2/CaptureResult$Key;

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

    :goto_6d
    div-float/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6e
    const v0, 0x19

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

    :goto_6f
    div-float/2addr v3, v0

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

    :goto_70
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ljfr;->b:Ljava/lang/Float;

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_71
    const/high16 p1, 0x447a0000    # 1000.0f

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_6b

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_74
    if-nez v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_75
    sget-object v0, Lnym;->a:Landroid/hardware/camera2/CaptureResult$Key;

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

    :goto_76
    cmpl-float v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_77
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    mul-float/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

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

    nop

    :goto_7b
    cmpl-float p0, v3, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_7c
    sub-long v6, v8, v6

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_7d
    iget-object v1, p0, Ljfr;->g:Lrtm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7e
    invoke-static {}, Lcom/a;->lsb()F

    move-result v1

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
.end method
