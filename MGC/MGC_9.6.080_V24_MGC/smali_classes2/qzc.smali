.class public final Lqzc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "com.google."

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1
    sput-object v0, Lqzc;->c:[Ljava/lang/String;

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

    :goto_2
    const v0, 0x1d

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    const-string v2, "ranchu"

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

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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
    const-string v5, "com.waze"

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_9

    nop

    :goto_7
    goto/32 :goto_1b

    nop

    nop

    :goto_8
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_27

    nop

    nop

    :goto_a
    const-string v4, "com.waymo."

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

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_e
    const-string v1, "goldfish"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    filled-new-array {v1, v1, v0}, [Ljava/lang/String;

    move-result-object v0

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

    :goto_12
    sput-object v0, Lqzc;->d:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_13
    const-string v6, "com.waze."

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_14
    sput-object v0, Lqzc;->b:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, ""

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    const v1, 0x8

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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

    :goto_1b
    move-object v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_1e
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v2, "media"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v3, "com.nest."

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_b

    nop

    nop

    :goto_24
    const-string v2, "com.chrome."

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v0, "com.google.android.apps.docs.storage.legacy"

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

    :goto_26
    const-string v0, "com.android."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_27
    const-string v0, "androidx.test.services.storage.runfiles"

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lqzc;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lqzb;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

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

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    sget-object v0, Lqzb;->a:Lqzb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lqzb;)Landroid/content/res/AssetFileDescriptor;
    .locals 18

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_0
    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_3
    const/4 v7, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_4
    const-string v3, "Validation failed."

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

    nop

    nop

    :goto_5
    if-nez v7, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_cb

    nop

    :goto_7
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/io/FileNotFoundException;

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_9
    if-eqz v5, :cond_2

    nop

    goto/32 :goto_2d

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_a
    invoke-static {v0}, Lqzc;->g(Ljava/lang/Object;)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v2, v1}, Lqzc;->e(Landroid/content/res/AssetFileDescriptor;Ljava/io/FileNotFoundException;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v7, Lqzd;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_e
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_f
    new-instance v13, Lqvg;

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_3
    goto/32 :goto_f9

    nop

    nop

    :goto_11
    if-nez v5, :cond_4

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v5, :cond_5

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_13
    if-nez v7, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_14
    const/16 v6, 0xeca

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move v5, v10

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_17
    if-ne v5, v6, :cond_7

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v12, v6, v10}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v7, 0x2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v8, 0x3

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v7, 0x3

    nop

    nop

    :goto_1d
    goto/32 :goto_b2

    nop

    nop

    :goto_1e
    const v1, 0x9

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_1f
    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_f4

    nop

    nop

    :goto_21
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v5, "r"

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-object v0

    nop

    nop

    :goto_26
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v15, v15, Lsbh;->c:I

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_ab

    nop

    nop

    :goto_29
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v6, "content"

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object v0, Lqzc;->d:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    throw v0

    nop

    :goto_2d
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v5, "w"

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v12, :cond_8

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_9

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_9f

    nop

    :goto_33
    const-string v5, "rw"

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_34
    sget-object v0, Lqzb;->a:Lqzb;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v1, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v2, v0}, Lqzc;->e(Landroid/content/res/AssetFileDescriptor;Ljava/io/FileNotFoundException;)V

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_37
    move v5, v9

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_39
    iget-object v8, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3a
    iget-boolean v0, v12, Landroid/content/pm/ProviderInfo;->exported:Z

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3b
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3c
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v4, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_3f
    move v5, v11

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    aget-object v5, v0, v3

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move-object/from16 v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_43
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-string v5, "rwt"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_45
    iget-object v5, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

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

    :goto_46
    goto :goto_40

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-eqz v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :cond_a
    :goto_49
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_4a
    throw v1

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4b
    move v5, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    sget-object v14, Lqzb;->a:Lqzb;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_4d
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    add-int/lit8 v10, v10, 0x1

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_50
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_51
    if-eq v5, v6, :cond_b

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_52
    const v6, 0x1bacf

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move v5, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

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

    :goto_55
    if-lt v3, v8, :cond_c

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_38

    nop

    nop

    :goto_57
    goto/32 :goto_e2

    nop

    nop

    :goto_58
    const/16 v6, 0xedd

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_59
    const/16 v6, 0x77

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_5a
    move v8, v7

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_5b
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez v6, :cond_d

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :cond_d
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    move-object/from16 v7, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5f
    if-nez v5, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_e
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_60
    iget-boolean v0, v3, Lqzb;->b:Z

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_2d

    nop

    nop

    :goto_62
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_63
    new-instance v1, Ljava/io/FileNotFoundException;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_38

    nop

    :goto_65
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_66
    if-eq v5, v12, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :cond_f
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_68
    aget-object v5, v0, v3

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_69
    iget-boolean v8, v3, Lqzb;->b:Z

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_6a
    if-nez v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_6b
    if-eqz v12, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    :cond_11
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-ne v5, v6, :cond_12

    nop

    nop

    goto/32 :goto_76

    nop

    :cond_12
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    aget-object v3, v0, v10

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_6e
    if-ne v7, v11, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v4, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_73
    invoke-virtual {v0, v1, v3, v7, v5}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    move/from16 v17, v8

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v14, v3, Lqzb;->d:Lryb;

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_78
    sget-object v0, Lqzc;->b:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-eqz v3, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    :cond_14
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v4, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

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

    :goto_7b
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_7d
    const-string v6, "file"

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_7e
    goto/16 :goto_38

    nop

    nop

    :goto_7f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_80
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_81
    const/16 v6, 0x2e

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_82
    const/4 v13, 0x4

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_83
    if-nez v7, :cond_15

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :cond_15
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_84
    if-nez v0, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_3a

    nop

    nop

    :goto_85
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const/4 v7, 0x3

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_87
    if-eqz v3, :cond_17

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_88
    move v5, v8

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_89
    const v0, 0x1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    throw v0

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    if-nez v5, :cond_18

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_18
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    add-int/2addr v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v1, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_91
    if-ne v5, v7, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    goto/16 :goto_28

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-direct {v13, v1, v12}, Lqvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_95
    if-ne v5, v13, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_97
    const/16 v6, 0xe45

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_98
    if-eqz v0, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :cond_1b
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_99
    if-lt v3, v7, :cond_1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1c
    goto/32 :goto_68

    nop

    nop

    :goto_9a
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    if-ne v7, v11, :cond_1d

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    array-length v3, v0

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_9d
    add-int/2addr v13, v11

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_9e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_9f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v7, v0, v13, v8}, Lqzd;->a(Landroid/content/Context;Lqvg;Z)I

    move-result v7

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    if-ne v5, v6, :cond_1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_1e
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    move v5, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_a4
    add-int/2addr v5, v9

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    const-string v6, "android.resource"

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    goto/16 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    if-lt v10, v15, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_43

    nop

    nop

    :goto_ac
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    :goto_ad
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    if-ne v5, v6, :cond_20

    nop

    goto/32 :goto_7f

    nop

    :cond_20
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_af
    if-gez v13, :cond_21

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :cond_21
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iget-boolean v3, v3, Lqzb;->b:Z

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_b1
    const/4 v3, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    add-int/2addr v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    move/from16 v7, v17

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_b6
    const/16 v6, 0x72

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    :goto_b8
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    const/4 v9, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_ba
    const-string v1, "Unsupported scheme"

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    if-lt v10, v3, :cond_22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_bc
    const/4 v11, 0x1

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    const/4 v8, 0x2

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    if-nez v6, :cond_23

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_23
    goto/32 :goto_6f

    nop

    nop

    :goto_c0
    goto/16 :goto_1b

    nop

    nop

    :goto_c1
    goto/32 :goto_78

    nop

    nop

    :goto_c2
    invoke-virtual {v6, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_c3
    array-length v3, v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_c4
    move-object/from16 v0, p0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_c5
    const/4 v3, 0x0

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_c6
    if-nez v5, :cond_24

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_24
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_c8
    if-nez v5, :cond_25

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_c9
    check-cast v15, Lsbh;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_ca
    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    throw v0

    nop

    :goto_cd
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    if-ne v5, v6, :cond_26

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_cf
    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_d0
    if-eqz v5, :cond_27

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_d1
    const-string v1, "Can\'t open content uri."

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_d2
    goto :goto_cd

    nop

    :goto_d3
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    goto/16 :goto_ad

    nop

    nop

    nop

    nop

    :goto_d6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d7
    const/16 v13, 0x40

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    if-ne v5, v8, :cond_28

    nop

    goto/32 :goto_cd

    nop

    :cond_28
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    const-string v5, "wt"

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_da
    iget-object v5, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_db
    move-object/from16 v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_dc
    iget-boolean v0, v3, Lqzb;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_dd
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_de
    if-ne v5, v6, :cond_29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    :cond_29
    goto/32 :goto_58

    nop

    nop

    :goto_df
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e0
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    const-string v5, "wa"

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    const/4 v12, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_e7
    invoke-static {v2}, Lqzc;->g(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    nop

    nop

    nop

    nop

    new-instance v5, Ljava/io/File;

    nop

    nop

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v1}, Lqzc;->d(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    const-string v4, "/proc/"

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    nop

    nop

    nop

    if-nez v4, :cond_36

    nop

    nop

    nop

    const-string v4, "/data/misc/"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    nop

    if-nez v4, :cond_36

    nop

    sget-object v4, Lqzb;->a:Lqzb;

    nop

    nop

    nop

    iget-boolean v4, v3, Lqzb;->c:Z

    nop

    nop

    nop

    nop

    if-nez v4, :cond_36

    nop

    nop

    iget-object v4, v3, Lqzb;->e:Lryb;

    nop

    nop

    move-object v5, v4

    nop

    nop

    check-cast v5, Lsbh;

    nop

    nop

    nop

    nop

    iget v5, v5, Lsbh;->c:I

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    :goto_e8
    if-ge v6, v5, :cond_2c

    nop

    nop

    nop

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    check-cast v10, Lqyx;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v12, v3, Lqzb;->b:Z

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Lqyx;->a()I

    move-result v10

    nop

    add-int/lit8 v12, v10, -0x1

    nop

    nop

    nop

    if-eqz v10, :cond_2b

    nop

    nop

    nop

    add-int/lit8 v6, v6, 0x1

    nop

    nop

    if-eqz v12, :cond_2a

    nop

    nop

    nop

    nop

    if-eq v12, v11, :cond_2d

    nop

    nop

    goto :goto_e8

    nop

    nop

    nop

    nop

    :cond_2a
    move v7, v11

    nop

    goto :goto_e9

    nop

    nop

    :cond_2b
    const/4 v0, 0x0

    nop

    nop

    throw v0

    nop

    nop

    nop

    :cond_2c
    move v7, v8

    nop

    nop

    nop

    nop

    :cond_2d
    :goto_e9
    add-int/2addr v7, v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_35

    nop

    nop

    nop

    nop

    nop

    if-eq v7, v11, :cond_36

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_2e

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lqzc;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_2f

    nop

    nop

    nop

    nop

    :goto_ea
    move v10, v11

    nop

    nop

    goto/16 :goto_ed

    nop

    nop

    nop

    nop

    :cond_2e
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    nop

    nop

    nop

    invoke-static {v4}, Lqzc;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_2f

    nop

    goto :goto_ea

    nop

    nop

    nop

    nop

    nop

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_30

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v4

    nop

    nop

    if-eqz v4, :cond_30

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lqzc;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_30

    nop

    goto :goto_ea

    nop

    nop

    :cond_30
    new-instance v4, Lmaq;

    nop

    nop

    nop

    nop

    const/16 v5, 0x12

    nop

    nop

    nop

    nop

    invoke-direct {v4, v0, v5}, Lmaq;-><init>(Ljava/lang/Object;I)V

    invoke-static {v4}, Lqzc;->f(Ljava/util/concurrent/Callable;)[Ljava/io/File;

    move-result-object v4

    nop

    nop

    nop

    nop

    array-length v5, v4

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    :goto_eb
    if-ge v6, v5, :cond_32

    nop

    aget-object v7, v4, v6

    nop

    nop

    if-eqz v7, :cond_31

    nop

    nop

    nop

    nop

    invoke-static {v7}, Lqzc;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_31

    nop

    nop

    nop

    goto/16 :goto_ea

    nop

    nop

    nop

    nop

    :cond_31
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_eb

    nop

    nop

    nop

    :cond_32
    new-instance v4, Lmaq;

    nop

    const/16 v5, 0x13

    nop

    nop

    invoke-direct {v4, v0, v5}, Lmaq;-><init>(Ljava/lang/Object;I)V

    invoke-static {v4}, Lqzc;->f(Ljava/util/concurrent/Callable;)[Ljava/io/File;

    move-result-object v0

    nop

    array-length v4, v0

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    :goto_ec
    if-ge v5, v4, :cond_34

    nop

    aget-object v6, v0, v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_33

    nop

    invoke-static {v6}, Lqzc;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_33

    nop

    nop

    nop

    nop

    goto/16 :goto_ea

    nop

    nop

    :cond_33
    add-int/lit8 v5, v5, 0x1

    nop

    goto :goto_ec

    nop

    :cond_34
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    :goto_ed
    iget-boolean v0, v3, Lqzb;->b:Z

    nop

    nop

    if-ne v10, v0, :cond_36

    nop

    :cond_35
    return-object v2

    nop

    :cond_36
    new-instance v0, Ljava/io/FileNotFoundException;

    nop

    const-string v3, "Can\'t open file: "

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_1
    move-exception v0

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-virtual {v12, v6, v10}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v12

    nop

    :goto_f0
    goto/32 :goto_31

    nop

    nop

    :goto_f1
    move v5, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_f2
    goto/16 :goto_2d

    nop

    nop

    nop

    :goto_f3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    move v7, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_f5
    move v5, v7

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_f6
    if-nez v5, :cond_37

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_37
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_f7
    if-ne v5, v11, :cond_38

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    :cond_38
    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_f8
    new-instance v0, Ljava/io/FileNotFoundException;

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_f9
    sget-object v0, Lqzc;->c:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    move-object v15, v14

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop
.end method

.method private static c(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

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

    :goto_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "/"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_f
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

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

    :goto_10
    const v0, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method private static d(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    const-string v2, "Can\'t open file: "

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Ljava/io/IOException;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Ljava/io/FileNotFoundException;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_5
    const v1, 0x3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    :goto_7
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_9
    cmp-long p0, v3, v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    :goto_b
    new-instance p1, Ljava/io/FileNotFoundException;

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

    :goto_c
    invoke-static {v1}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-wide v0, v0, Landroid/system/StructStat;->st_ino:J

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

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_11
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p1}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_1f

    nop

    nop

    :goto_12
    throw p1

    nop

    :goto_13
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p1, Ljava/io/IOException;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

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

    :goto_1a
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1b
    iget-wide v3, p0, Landroid/system/StructStat;->st_dev:J

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

    nop

    nop

    :goto_1c
    throw p1

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1e
    iget-wide v5, v0, Landroid/system/StructStat;->st_dev:J

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, v0, Landroid/system/StructStat;->st_mode:I

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

    nop

    nop

    :goto_20
    cmp-long v1, v3, v5

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_21
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    :goto_22
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_23
    throw p1

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_25
    iget-wide v3, p0, Landroid/system/StructStat;->st_ino:J

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_26
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method private static e(Landroid/content/res/AssetFileDescriptor;Ljava/io/FileNotFoundException;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/FileNotFoundException;->addSuppressed(Ljava/lang/Throwable;)V

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

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method private static f(Ljava/util/concurrent/Callable;)[Ljava/io/File;
    .locals 1

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    nop

    check-cast p0, [Ljava/io/File;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    :catch_0
    move-exception p0

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
    new-instance v0, Ljava/lang/RuntimeException;

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

    :goto_2
    throw p0

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :catch_1
    move-exception p0

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
.end method

.method private static g(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "Content resolver returned null value."

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
    throw p0

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Ljava/io/FileNotFoundException;

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

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
