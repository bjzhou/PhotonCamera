.class public final Lfwt;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lnne;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lfwt;->a:Lnne;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lnne;->b:Lnne;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/Intent;)F
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x6

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
    const-string v0, "override_screen_brightness"

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

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

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

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public static b(Landroid/content/Intent;)I
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lcom/google/android/apps/camera/keepalive/Rkn/deLMIrA;->kiuoUnNOyyuAdM:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const-string v0, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    :goto_a
    return v0

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-gt p0, v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

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

    :goto_f
    return p0

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_2

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    if-lt p0, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

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

    :goto_16
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_17
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0xb

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_e

    nop

    nop
.end method

.method public static c(Landroid/content/Intent;)Lkvu;
    .locals 3

    goto/32 :goto_15

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

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_6
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    if-nez v2, :cond_2

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    sget-object v0, Lfwu;->c:Lryh;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    const-string v1, "com.google.assistant.extra.CAMERA_FLASH_MODE"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v0, Lkvu;->b:Lkvu;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Lkvu;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v1, Lfwu;->c:Lryh;

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

    :goto_10
    invoke-virtual {v1, p0}, Lryh;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    const v1, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    const v0, 0x3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, p0}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public static d(Landroid/content/Intent;)Lnne;
    .locals 3

    goto/32 :goto_36

    nop

    nop

    :goto_0
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v1, Lcom/a;->c:Ljava/lang/Object;

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

    :goto_3
    const v1, 0x2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, p0}, Lfwt;->s(Lnne;Landroid/content/Intent;)Lnne;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lnne;->c:Lnne;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_26

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    if-eqz v2, :cond_1

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

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_d
    if-eqz v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_21

    nop

    nop

    :goto_f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v2, "android.media.action.VIDEO_CAPTURE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_13
    sget-object v0, Lfwt;->a:Lnne;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

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

    :goto_16
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    :goto_19
    check-cast v1, Lnne;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Lnne;->i:Lnne;

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

    :goto_1b
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1c
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sput-object v0, Lcom/a;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v1, Lcom/a;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_20
    goto/16 :goto_35

    nop

    :goto_21
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_6

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    :goto_23
    return-object v1

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_35

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p0}, Lfwt;->n(Landroid/content/Intent;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto :goto_30

    nop

    nop

    :goto_2b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_7
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2e
    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2f
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_31
    const-string v2, "android.media.action.VIDEO_CAMERA"

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_32
    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget-object v0, Lnne;->h:Lnne;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v0, p0}, Lfwt;->s(Lnne;Landroid/content/Intent;)Lnne;

    move-result-object v0

    nop

    :goto_35
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_36
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public static e(Landroid/content/Intent;)Lrss;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    goto :goto_c

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Landroid/net/Uri;

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

    :goto_3
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

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

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "output"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    invoke-static {p0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    const/4 p0, 0x0

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

    :goto_e
    sget-object p0, Lrsa;->a:Lrsa;

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
.end method

.method public static f(Landroid/content/Intent;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    const-string v0, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x6

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/32 :goto_4

    nop

    nop
.end method

.method public static g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    instance-of v0, p2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/32 :goto_9

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    instance-of v0, p2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    check-cast p2, Ljava/lang/Integer;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    throw p0

    nop

    nop

    :goto_13
    instance-of v0, p2, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    const-string p1, "Not found corresponding type."

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

    :goto_15
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p2, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method public static h(Landroid/content/Intent;)Z
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "android.intent.extra.FRONT_CAMERA"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    const-string v0, "com.google.assistant.extra.USE_FRONT_CAMERA"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    :goto_9
    const-string v0, "android.intent.extra.USE_FRONT_CAMERA"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public static i(Landroid/content/Intent;)Z
    .locals 3

    goto/32 :goto_f

    nop

    nop

    :goto_0
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    const/4 v0, -0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    return v2

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    if-ne p0, v2, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "power_double_tap"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_e
    const-string v1, "com.android.systemui.camera_launch_source"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    const v0, 0x1e

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

    :goto_10
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_14
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

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
.end method

.method public static j(Landroid/content/Intent;)Z
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_18

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    goto :goto_5

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    const-string v0, "android.intent.extra.FRONT_CAMERA"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_a
    const-string v0, "com.google.assistant.extra.USE_FRONT_CAMERA"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
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

    :goto_d
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

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

    :goto_e
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    :goto_10
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    const-string v0, "android.intent.extra.USE_FRONT_CAMERA"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    return p0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public static k(Landroid/content/Intent;)Z
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    const v0, 0x19

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x20

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

    :goto_5
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

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

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

    :goto_a
    const-string v0, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public static l(Landroid/content/Intent;)Z
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x8

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    const-string v1, "launch_from_remote_control"

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    return v0

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    :goto_7
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_5
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

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

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public static n(Landroid/content/Intent;)Z
    .locals 3

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return v1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_c
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    const-string v0, "com.google.assistant.extra.OPEN_IN_VIDEO_MODE"

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    const v0, 0x19

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static o(Landroid/content/Intent;)Z
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    :goto_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "android.intent.extra.STILL_IMAGE_MODE"

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

    :goto_4
    const v1, 0xd

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    goto/16 :goto_16

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v3, "WIDE_ANGLE"

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

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

    :goto_a
    return v0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_16

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    :goto_f
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x6

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

    :goto_11
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_12
    const-string v1, "com.google.assistant.extra.CAMERA_MODE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_19

    nop

    nop

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
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
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

    nop

    :goto_18
    add-int v0, v0, v1

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

    :goto_19
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1b
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1c
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method public static p(Lfdn;)Z
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x16

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lfdn;->h()Landroid/content/Intent;

    move-result-object p0

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

    :goto_4
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_15

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return v0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    :goto_16
    return v0

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1d

    nop

    :goto_1a
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    :goto_1b
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_3

    nop

    nop
.end method

.method public static q(Lfdn;)Z
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lfwt;->k(Landroid/content/Intent;)Z

    move-result p0

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

    :goto_3
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    const-string v1, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

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

    :goto_8
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return v0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x14

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v1}, Lfwt;->m(Ljava/lang/String;)Z

    move-result v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    return p0

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

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

    :goto_1a
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lfdn;->h()Landroid/content/Intent;

    move-result-object p0

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

    nop

    :goto_1c
    const/4 p0, 0x1

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

    :goto_1d
    const-string v1, "android.intent.extra.TIMER_DURATION_SECONDS"

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
.end method

.method public static r(Lfdn;)Z
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x16

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_3
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    :goto_5
    return v0

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_1e

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    :goto_a
    invoke-static {p0}, Lfwt;->n(Landroid/content/Intent;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    const-string v2, "android.media.action.VIDEO_CAMERA"

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_e
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lfdn;->h()Landroid/content/Intent;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0}, Lfwt;->k(Landroid/content/Intent;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x1b

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_1b

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz p0, :cond_5

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1a
    return v2

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1d
    move v0, v2

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return v0

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_19

    nop

    nop

    nop
.end method

.method private static s(Lnne;Landroid/content/Intent;)Lnne;
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "cmVpbml0X21vZGVfaWQ="

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lnne;

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_a
    const-string v1, "cmVpbml0X21vZGVfaWQ="

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

    :goto_b
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    :goto_f
    invoke-static {v0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

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

    :goto_10
    sget-object v0, Lfwu;->a:Lryh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_13
    invoke-static {}, Lnne;->values()[Lnne;

    move-result-object v0

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

    nop

    :goto_14
    sget-object v0, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->iiSuiB:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    sget-object p0, Lfwu;->a:Lryh;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1, v2}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_18
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2a

    nop

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    nop

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

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v2, ""

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

    :goto_20
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, p1}, Lryh;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    :goto_23
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_24
    const-string v0, "android.intent.extra.STILL_IMAGE_MODE"

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

    :goto_25
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_26
    new-instance v1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    aget-object v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_28
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-object v0

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2c
    new-instance v0, Ljava/lang/String;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2e
    check-cast p0, Lnne;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, p1}, Lryh;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v0, Lfwu;->b:Lryh;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0, p1}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_32
    invoke-virtual {v2, v1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_34
    const-string v1, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_35
    sget-object p0, Lfwu;->b:Lryh;

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_36
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method
