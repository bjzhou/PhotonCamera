.class public Llur;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_8

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
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

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    sput-object v0, Llur;->a:Lsdb;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Lsdb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aput-object v0, v1, v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    const-string v0, "lur"

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v3, 0x3c7

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    if-eqz p0, :cond_0

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

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_5
    goto/16 :goto_1b

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    const v0, 0x10

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x1

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

    :goto_a
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_b
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

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

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    :goto_12
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_15
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, "secure_camera"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_18
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return v0

    nop

    :goto_1b
    goto/32 :goto_9

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method
