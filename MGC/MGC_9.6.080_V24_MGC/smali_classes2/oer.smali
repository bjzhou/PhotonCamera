.class public final Loer;
.super Lodj;
.source "PG"


# instance fields
.field protected a:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Z

.field protected e:I

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lodm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lodj;-><init>(Lodm;)V

    goto/32 :goto_1

    nop

    nop

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
.end method


# virtual methods
.method protected final a()V
    .locals 6

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_54

    nop

    :goto_1
    const-string v1, "com.google.android.gms.analytics.globalConfigResource"

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_2
    goto/16 :goto_5d

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3
    iput v1, p0, Loer;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_4
    new-instance v2, Lnar;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "XML config - dry run"

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_6
    move v2, v4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5e

    nop

    nop

    :goto_8
    iput-object v1, p0, Loer;->a:Ljava/lang/String;

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_9
    if-nez v5, :cond_1

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

    :cond_1
    goto/32 :goto_58

    nop

    nop

    :goto_a
    goto/16 :goto_62

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v5, "XML config - dispatch period (sec)"

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    iget v1, v0, Loee;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_f
    iput-boolean v4, p0, Loer;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    if-gtz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_15
    goto/16 :goto_62

    nop

    :goto_16
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-gez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_62

    nop

    nop

    :goto_19
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v5, v1}, Lodi;->r(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    :goto_1c
    const-string v0, "Couldn\'t get ApplicationInfo to load global config"

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

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

    :goto_1e
    if-nez v1, :cond_6

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, v5, v1}, Lodi;->m(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_20
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Lodi;->b:Lodm;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-gez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_7
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0xa

    nop

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

    :goto_24
    const-string v1, "PackageManager doesn\'t know about the app package"

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v1}, Lodi;->q(Ljava/lang/String;)V

    goto/32 :goto_36

    nop

    nop

    :goto_26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_27
    if-nez v5, :cond_8

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

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

    :goto_29
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2a
    move v1, v4

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2b
    invoke-static {v0, v2, v3}, Lolx;->aC(ILnar;Lodi;)Loee;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v4, 0x1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2d
    if-ne v0, v3, :cond_a

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_2e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v2, "XML config - app version"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-string v1, "Loading global XML config values"

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v1, v0, Loee;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-string v5, "info"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_36
    iget-object v1, v0, Loee;->a:Ljava/lang/String;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_37
    const/4 v2, 0x0

    nop

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

    :goto_38
    invoke-virtual {p0, v1, v0}, Lodi;->u(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_39
    const-string v5, "verbose"

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :cond_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3b
    iget v0, v0, Loee;->e:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_3d
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3e
    const/4 v1, 0x3

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

    :goto_3f
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_40
    iget-object v1, v0, Loee;->b:Ljava/lang/String;

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

    nop

    nop

    :goto_41
    invoke-direct {v3, v1}, Lodi;-><init>(Lodm;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Lodi;->d()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    const/16 v2, 0x80

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    nop

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_45
    const-string v5, "error"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    :goto_47
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_48
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_49
    invoke-direct {v2, v1}, Lnar;-><init>(Lodm;)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_4b
    iput-object v1, p0, Loer;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v1, :cond_c

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

    :cond_c
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v0, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0, v2, v1}, Lodi;->m(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_51
    goto/32 :goto_33

    nop

    nop

    :goto_52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_53
    if-ne v4, v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_4e

    nop

    nop

    :goto_55
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_56
    new-instance v3, Lodi;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0, v0}, Lodi;->t(Ljava/lang/String;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v1, 0x2

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

    :goto_59
    sget-object v5, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->BPwHZQTArVZ:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5a
    const-string v2, "XML config - app name"

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_5b
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_5c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5e
    iput-boolean v2, p0, Loer;->g:Z

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5f
    iput-boolean v4, p0, Loer;->d:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_60
    const-string v5, "XML config - log level"

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_61
    move v1, v3

    nop

    nop

    :goto_62
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p0, v2, v1}, Lodi;->m(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_64
    goto/32 :goto_40

    nop

    nop

    :goto_65
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_66
    if-nez v5, :cond_f

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_f
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_67
    move v1, v2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p0, v0, v1}, Lodi;->m(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_6a
    goto/32 :goto_4d

    nop

    nop

    nop

    nop
.end method
