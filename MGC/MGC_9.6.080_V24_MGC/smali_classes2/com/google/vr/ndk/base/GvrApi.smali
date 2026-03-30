.class public Lcom/google/vr/ndk/base/GvrApi;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    nop

    nop

    nop

    :try_start_0
    invoke-static {}, Ltsd;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const v1, 0x19

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    throw v1

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "robolectric"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_8

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static native nativeGetUserPrefs(J)J
.end method

.method private static native nativeIsFeatureSupported(JI)Z
.end method

.method public static native nativeUserPrefsIsFeatureEnabled(JI)Z
.end method

.method private static requestFeatures(Landroid/content/Context;J[I[ILandroid/app/PendingIntent;)V
    .locals 8

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

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

    :goto_1
    const-string p1, "pending_intent"

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p3

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

    :goto_3
    invoke-static {p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetUserPrefs(J)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_4
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :goto_5
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_6
    new-array p3, p3, [Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p3, Ljava/util/ArrayList;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_8
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_9
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_c
    const-string v2, "com.google.intent.action.vr.REQUEST_FEATURE"

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_d
    aget-object v3, p4, v4

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_e
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_32

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    :goto_11
    const v0, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_2c

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18
    array-length v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_1a
    const-string p2, "optional_features"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Ltsg;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1e
    iget-object v3, v3, Ltsf;->d:Ljava/lang/String;

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

    :goto_1f
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0, v1, v2}, Ltsg;-><init>(J)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2a

    nop

    :goto_22
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_23
    if-lt v4, v2, :cond_0

    nop

    nop

    goto/32 :goto_10

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

    :goto_24
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :goto_25
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v3}, Ltsg;->a(Ltsf;)Z

    move-result v5

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_27
    iget v5, v3, Ltsf;->c:I

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_28
    if-lt v5, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    :goto_2a
    goto/32 :goto_1b

    nop

    nop

    :goto_2b
    move v5, v4

    nop

    nop

    :goto_2c
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p3}, Ltsf;->a([I)[Ltsf;

    move-result-object p3

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

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v2, "required_features"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    array-length v2, p4

    nop

    :goto_32
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_33
    aget-object v6, p3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_34
    new-array p1, p1, [Ljava/lang/String;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_35
    iget-object v6, v6, Ltsf;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_36
    if-eqz v7, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_37
    check-cast p3, [Ljava/lang/String;

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

    :goto_38
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz v5, :cond_3

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    :goto_3a
    if-eqz p3, :cond_4

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p4}, Ltsf;->a([I)[Ltsf;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v5, v5, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3d
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    :goto_3e
    invoke-static {p1, p2, v5}, Lcom/google/vr/ndk/base/GvrApi;->nativeIsFeatureSupported(JI)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_3f
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_41
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    new-instance v1, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_43
    invoke-static {p1, p2, v7}, Lcom/google/vr/ndk/base/GvrApi;->nativeIsFeatureSupported(JI)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_44
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_45
    check-cast p1, [Ljava/lang/String;

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

    :goto_46
    add-int v0, v0, v1

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

    :goto_47
    const/high16 v2, 0x10000000

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

    :goto_48
    sget-object v2, Ltrx;->a:Landroid/content/ComponentName;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget v7, v6, Ltsf;->c:I

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_4a
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_4c
    if-nez v7, :cond_6

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4d

    nop

    nop

    :goto_4d
    invoke-virtual {v0, v6}, Ltsg;->a(Ltsf;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez v5, :cond_7

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-eqz p1, :cond_8

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

    :cond_8
    goto/32 :goto_1d

    nop

    nop

    :goto_50
    invoke-virtual {v1, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_51
    if-nez p1, :cond_9

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public getNativeGvrContext()J
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method
