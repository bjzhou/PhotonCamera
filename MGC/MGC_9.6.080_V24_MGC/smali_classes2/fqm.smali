.class public final Lfqm;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Landroid/graphics/Paint;

.field public static final b:Landroid/graphics/Paint;

.field public static final c:Ljava/util/concurrent/locks/Lock;

.field private static final d:Landroid/graphics/Paint;

.field private static final e:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    goto/32 :goto_2c

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    const-string v22, "XT1045"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3
    const-string v28, "XT1077"

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    :goto_6
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_7
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

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

    :goto_8
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_33

    nop

    nop

    :goto_b
    const-string v18, "XT939G"

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v24, "XT1064"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x7

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v11, "XT1028"

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_11
    const-string v15, "XT1033"

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/32 :goto_d

    nop

    nop

    :goto_13
    const-string v19, "XT1039"

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

    :goto_14
    const-string v21, "XT1042"

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

    :goto_15
    const-string v26, "XT1069"

    nop

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

    :goto_16
    const-string v13, "XT1032"

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_19
    const-string v27, "XT1072"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1a
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1b
    const-string v9, "XT1098"

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1d
    const-string v10, "XT1031"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v4, "XT1093"

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_2d

    nop

    nop

    :goto_20
    const-string v14, "XT1008"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_21
    const-string v29, "XT1078"

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

    nop

    :goto_22
    const-string v16, "XT1035"

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_23
    sput-object v0, Lfqm;->e:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_3e

    nop

    nop

    :goto_26
    goto/32 :goto_6

    nop

    :goto_27
    const-string v3, "XT1092"

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

    :goto_28
    const-string v2, "XT1085"

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_29
    const-string v20, "XT1040"

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2a
    sput-object v0, Lfqm;->c:Ljava/util/concurrent/locks/Lock;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2b
    sput-object v0, Lfqm;->d:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2c
    const v0, 0xc

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2d
    sput-object v0, Lfqm;->a:Landroid/graphics/Paint;

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

    :goto_2e
    const-string v6, "XT1095"

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

    :goto_2f
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_31
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const-string v7, "XT1096"

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sput-object v0, Lfqm;->b:Landroid/graphics/Paint;

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

    :goto_34
    new-instance v0, Landroid/graphics/Paint;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-string v17, "XT1034"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    filled-new-array/range {v2 .. v30}, [Ljava/lang/String;

    move-result-object v2

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

    :goto_38
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string v8, "XT1097"

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const-string v5, "XT1094"

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v25, Lcom/google/android/apps/camera/keepalive/Rkn/deLMIrA;->WfXSPAGNqwQ:Ljava/lang/String;

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

    :goto_3c
    new-instance v0, Landroid/graphics/Paint;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3d
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance v0, Lfql;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const-string v30, "XT1079"

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v0, :cond_1

    nop

    goto/32 :goto_25

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/16 v25, 0x0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_42
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_43
    const-string v12, "XT937C"

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

    :goto_44
    invoke-direct {v0}, Lfql;-><init>()V

    :goto_45
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const-string v23, "XT1063"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public static b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static c(Lfmf;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    int-to-float p3, p3

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1
    int-to-float p3, p3

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

    :goto_2
    mul-float/2addr v0, p2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p0, p3}, Lfqm;->d(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    :goto_7
    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    mul-float/2addr p3, p2

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

    :goto_9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    :goto_b
    goto/32 :goto_23

    nop

    nop

    :goto_c
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1c

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p1

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    div-float/2addr p3, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance p3, Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

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

    :goto_19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    if-eq v1, p3, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    if-eq v0, p2, :cond_2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1e
    invoke-static {p1}, Lfqm;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p0, p3, v0, v1}, Lfmf;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    div-float/2addr p2, v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_22
    float-to-int p3, p3

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_25
    int-to-float v0, v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    invoke-static {p1, p0}, Lfqm;->f(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_27
    if-ne v0, p3, :cond_3

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_3
    :goto_28
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0xf

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

    :goto_2a
    invoke-virtual {p3, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2b
    int-to-float p3, p3

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

    :goto_2c
    if-eq p3, v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_4
    :goto_2d
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2e
    mul-float/2addr v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_30
    mul-float/2addr p3, p2

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_31
    float-to-int v0, v0

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

    :goto_32
    int-to-float p2, p2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_33
    int-to-float v1, v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public static d(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    sget-object p1, Lfqm;->c:Ljava/util/concurrent/locks/Lock;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x8

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    const v0, 0x12

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

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v1, Landroid/graphics/Canvas;

    nop

    nop

    nop

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object p1, Lfqm;->d:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0, p2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-static {v1}, Lfqm;->e(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_d
    sget-object v0, Lfqm;->c:Ljava/util/concurrent/locks/Lock;

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

    :goto_e
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public static e(Landroid/graphics/Canvas;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static f(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p0

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

    :goto_1
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static g(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :pswitch_0
    goto/32 :goto_1

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
