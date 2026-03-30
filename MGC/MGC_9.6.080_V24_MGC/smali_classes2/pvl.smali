.class public final Lpvl;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final h:Lpvs;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Landroid/content/pm/PackageManager;

.field public final e:Ljava/util/List;

.field public f:Lpvs;

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

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

    :goto_1
    sget-object v0, Lpvs;->a:Lpvs;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    const-string v3, ""

    nop

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

    :goto_4
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_5
    iput v3, v1, Lpvs;->f:I

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

    :goto_6
    const-string v0, "com.google.android.googlequicksearchbox.GsaPublicContentProvider"

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v2, Lpvs;

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

    :goto_8
    iput v3, v2, Lpvs;->b:I

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

    :goto_9
    iput v4, v2, Lpvs;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    :goto_c
    move-object v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_39

    nop

    :goto_e
    or-int/lit8 v3, v3, 0x2

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

    :goto_f
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_32

    nop

    :cond_2
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_10
    iget v3, v2, Lpvs;->b:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sput-object v1, Lpvl;->a:Ljava/lang/String;

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

    :goto_12
    sput-object v0, Lpvl;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    const/4 v3, -0x1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_15
    const v1, 0x5

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_17
    move-object v2, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v4, v2, Lpvs;->b:I

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_19
    move-object v2, v1

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_1a
    iget-object v1, v0, Ltkb;->b:Ltkg;

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

    :goto_1b
    check-cast v2, Lpvs;

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

    :goto_1c
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v3, v2, Lpvs;->c:Ljava/lang/String;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1e
    iput v2, v1, Lpvs;->b:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1f
    iget v3, v2, Lpvs;->b:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_22
    or-int/lit8 v2, v2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_23
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

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

    :goto_24
    check-cast v1, Lpvs;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput v3, v2, Lpvs;->e:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_26
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_27
    or-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v2, "content://%s/publicvalue/lens_oem_availability"

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

    :goto_29
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2a
    iput v3, v2, Lpvs;->b:I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2b
    iput-object v3, v2, Lpvs;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2c
    check-cast v0, Lpvs;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v1, :cond_3

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

    :cond_3
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_30
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_32
    goto/32 :goto_40

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_34
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget v2, v1, Lpvs;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_36
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v1, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->OkwSFAAo:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_38
    sput-object v0, Lpvl;->h:Lpvs;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_21

    nop

    :goto_3a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_42
    const-string v3, "1.2.1"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_43
    check-cast v2, Lpvs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_44
    or-int/lit8 v4, v4, 0x4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_45
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_47
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lpvl;->c:Landroid/content/Context;

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

    nop

    :goto_4
    const v0, 0x20

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

    :goto_5
    iput-object v1, p0, Lpvl;->f:Lpvs;

    nop

    nop

    nop

    :try_start_0
    const-string v2, "com.google.android.googlequicksearchbox"

    nop

    nop

    invoke-virtual {v0, v2, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ltkb;

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ltkb;->r(Ltkg;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    nop

    iget-object v1, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_0
    iget-object v1, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v1, Lpvs;

    nop

    nop

    nop

    sget-object v3, Lpvs;->a:Lpvs;

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v1, Lpvs;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    nop

    iput v3, v1, Lpvs;->b:I

    nop

    nop

    iput-object v0, v1, Lpvs;->d:Ljava/lang/String;

    nop

    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lpvs;

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lpvl;->f:Lpvs;

    nop

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p0}, Lpvk;-><init>(Lpvl;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    sget-object v1, Lpvl;->h:Lpvs;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    invoke-virtual {v0, p0}, Lpvk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lpvk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_d
    goto/32 :goto_b

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-array p0, p1, [Ljava/lang/Void;

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

    :goto_11
    const-string v1, "Unable to find agsa package: com.google.android.googlequicksearchbox"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

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

    :goto_13
    goto/32 :goto_f

    nop

    :goto_14
    iput-object v0, p0, Lpvl;->d:Landroid/content/pm/PackageManager;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x1c

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

    nop

    :goto_17
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_19
    iput-boolean p1, p0, Lpvl;->g:Z

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

    :goto_1a
    const-string v0, "LensSdkParamsReader"

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

    :goto_1b
    iput-object v1, p0, Lpvl;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p1, 0x0

    nop

    goto/32 :goto_19

    nop

    nop
.end method


# virtual methods
.method public final a(Lpvj;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpvl;->f:Lpvs;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1, p0}, Lpvj;->a(Lpvs;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lpvl;->e:Ljava/util/List;

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

    :goto_5
    iget-boolean v0, p0, Lpvl;->g:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    return-void

    nop
.end method
