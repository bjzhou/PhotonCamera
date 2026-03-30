.class public Liyt;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string v0, "iyt"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    sput-object v0, Liyt;->a:Lsdb;

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

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

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

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p2, "Source bitmap is null or has been recycled"

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "Cannot rotate bitmap by %d degrees"

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xf

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_6
    const/16 v1, 0xb4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_a
    check-cast p1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eq v0, v1, :cond_1

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_1
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v1, 0x5a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_11
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    if-eq v0, v1, :cond_2

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    :goto_14
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3c

    nop

    :goto_15
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    :goto_17
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_18
    invoke-static {p1, v1, v0}, Lcom/google/android/apps/camera/jni/libyuv/LibyuvJni;->nativeRotateBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_19
    rem-int/lit16 v0, p2, 0x168

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1a
    const/16 v0, 0x7e7

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_8

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    const/16 v2, 0x7e6

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/lit16 v0, v0, 0x168

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

    :goto_1f
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_20
    sget-object v0, Liyt;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_21
    const/4 p0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

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

    :goto_24
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    rem-int/lit16 v0, v0, 0x168

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2a
    const/16 v1, 0x10e

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0x9

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object p1, Liyt;->a:Lsdb;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2e
    if-ne v0, v1, :cond_5

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

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    :goto_2f
    invoke-interface {p1, p2}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_32
    return-object v1

    nop

    :goto_33
    goto/32 :goto_2c

    nop

    nop

    :goto_34
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v0, v2, p2, p1}, Lscz;->w(Ljava/lang/String;II)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_37
    check-cast p1, Lscz;

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

    nop

    :goto_38
    sget-object v2, Lcom/google/android/apps/camera/ui/eduimageview/JrT/cUhjhcVVea;->nApJ:Ljava/lang/String;

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

    :goto_39
    invoke-interface {p1, v0, p2}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_16

    nop

    nop

    :goto_3a
    if-ltz p1, :cond_7

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_27

    nop

    :goto_3d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    return-object p0

    nop

    :goto_3f
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_41
    goto/16 :goto_17

    nop

    :goto_42
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const/16 p2, 0x7e5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_44
    check-cast v0, Lscz;

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

    :goto_45
    sget-object p1, Liyt;->a:Lsdb;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop
.end method
