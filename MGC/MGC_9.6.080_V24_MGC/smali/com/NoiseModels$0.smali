.class public final Lcom/NoiseModels$0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    sput-object v1, Lcom/NoiseModels$0;->a:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 1
        0x21t
        0x97t
        0xaat
        0xcet
        0x2at
        0x3ct
        0xe0t
        0xe0t
        0x4et
        0x53t
        0x6at
        0xaft
        0xf7t
        0x3t
        0x8et
        0xe8t
        0xcet
        0x63t
        0x59t
        0xa7t
    .end array-data
.end method

.method public static aa(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    array-length v1, p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, [B

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    sub-int/2addr v1, v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    const/4 v0, 0x0

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

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gtz v1, :cond_0

    nop

    goto/32 :goto_12

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

    nop

    :goto_9
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x14

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

    :goto_b
    array-length p0, p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    :goto_d
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Ljava/io/InputStream;

    nop

    nop

    goto/32 :goto_5

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

    goto/32 :goto_15

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

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

    :goto_11
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    throw p1

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

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

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    if-eq v0, p0, :cond_2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object p1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    :goto_19
    const v1, 0x8

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public static ab(Ljava/lang/Object;)Z
    .locals 15

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    instance-of v0, p0, Ldalvik/system/BaseDexClassLoader;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    invoke-static {v8}, Lcom/NoiseModels$0;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_5

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    :goto_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v9}, Lcom/NoiseModels$0;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

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

    :goto_7
    check-cast v14, [B

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

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_14

    nop

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

    :goto_a
    invoke-direct {v10, v14}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_2c

    nop

    nop

    :goto_b
    const-string v9, "AQ4eSywOGhYHLBwBBw0AQVI="

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    goto/32 :goto_35

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v10, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v11

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v9, Ljava/lang/String;

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

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x17

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

    :goto_13
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/NoiseModels$0;->ac()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    check-cast v11, [Ljava/lang/Object;

    nop

    const v12, 0x2

    nop

    nop

    nop

    nop

    nop

    aget-object v14, v11, v12

    nop

    nop

    nop

    nop

    add-int/lit8 v12, v12, -0x1

    nop

    nop

    nop

    nop

    nop

    aget-object v13, v11, v12

    nop

    nop

    nop

    add-int/lit8 v12, v12, -0x1

    nop

    nop

    nop

    aget-object v12, v11, v12

    nop

    nop

    const-class v0, Ldalvik/system/BaseDexClassLoader;

    nop

    nop

    nop

    const-string v1, "EgAHDS4IABE="

    nop

    nop

    invoke-static {v1}, Lcom/NoiseModels$0;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    check-cast v1, Ljava/lang/String;

    nop

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    const-string v4, "BgQLIA4EHgAMFQA="

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lcom/NoiseModels$0;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, [Ljava/lang/Object;

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    nop

    array-length v5, v4

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    :goto_14
    if-ge v6, v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    aget-object v7, v4, v6

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    nop

    nop

    nop

    nop

    const-string v9, "EgAHDQ=="

    nop

    nop

    nop

    nop

    invoke-static {v9}, Lcom/NoiseModels$0;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    check-cast v9, Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    nop

    nop

    nop

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    check-cast v9, Ljava/io/File;

    nop

    nop

    nop

    if-eqz v9, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v10

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v11, v13}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return v12

    nop

    :catch_1
    move-exception v10

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_17
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v10, v13}, Ljava/security/MessageDigest;->update([B)V

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Ljava/lang/ClassLoader;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1d
    if-nez v11, :cond_4

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

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v13, [B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_22
    const/4 v0, 0x0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v12, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

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

    :goto_25
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_26
    new-instance v11, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v9, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v8, Ljava/lang/String;

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

    :goto_29
    invoke-virtual {v8, v9, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v12, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

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

    :goto_2b
    invoke-virtual {v10, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2d
    check-cast v13, [B

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

    :goto_2e
    new-instance v11, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v10, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_5
    :try_start_1
    new-instance v10, Ljava/util/zip/ZipFile;

    nop

    invoke-direct {v10, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_30
    invoke-static {v11}, Lcom/NoiseModels$0;->af(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v9, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_32
    const-string v8, "Aw=="

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_33
    new-instance v10, Ljava/lang/String;

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

    :goto_34
    return v0

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ac()Ljava/lang/Object;
    .locals 10

    goto/32 :goto_1e

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_30

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x6

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_7
    aput-byte v8, v3, v7

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_8
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
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

    nop

    nop

    nop

    :goto_a
    aget-byte v8, v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    aput-object v2, v0, v4

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

    :goto_c
    array-length v9, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_e
    if-lt v6, v9, :cond_0

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    :goto_f
    aput-byte v8, v1, v5

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_10
    const/16 v1, 0x14

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_11
    new-array v3, v3, [B

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    aput-object v1, v0, v4

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_25

    nop

    :goto_14
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x3

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_16
    aget-byte v8, v0, v4

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

    :goto_17
    const/16 v3, 0x4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    :goto_19
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_1c
    new-array v0, v0, [B

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    const/16 v2, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1e
    const v0, 0x15

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v4, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_21
    new-array v2, v2, [B

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aput-object v3, v0, v4

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-array v1, v1, [B

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_24
    return-object v0

    nop

    nop

    nop

    nop

    :array_0
    .array-data 1
        0x21t
        0x4dt
        -0x69t
        0x45t
        -0x56t
        0x54t
        -0x32t
        0x41t
        0x2at
        0x2dt
        0x3ct
        0x49t
        -0x20t
        0x4et
        -0x20t
        0x46t
        0x4et
        0x2ft
        0x53t
        0x42t
        0x6at
        0x53t
        -0x51t
        0x47t
        -0x9t
        0x2et
        0x3t
        0x52t
        -0x72t
        0x53t
        -0x18t
        0x41t
        -0x32t
        0x53t
        0x63t
        0x48t
        0x59t
        0x41t
        -0x59t
        0x31t
    .end array-data

    :goto_25
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v0, 0x28

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lt v4, v8, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_29
    aput-byte v8, v2, v6

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int/lit8 v4, v4, 0x1

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

    :goto_2b
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2c
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2d
    array-length v8, v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v5, v5, 0x1

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

    :goto_2f
    const/4 v7, 0x0

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_2d

    nop

    nop

    nop
.end method

.method public static ad(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, [B

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3
    aget-byte v4, v1, v4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    aget-byte v3, v0, v2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    const/4 v4, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    const-string v8, "amF2YS5sYW5nLlN0cmluZw=="

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_8
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3d

    nop

    nop

    :goto_a
    array-length v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_b
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_c
    new-array v5, v4, [Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    check-cast v8, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

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

    :goto_f
    goto/32 :goto_30

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    :goto_11
    const-string v2, "Z2V0VXJsRGVjb2Rlcg=="

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    invoke-static {v0}, Lcom/NoiseModels$0;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v1}, Lcom/NoiseModels$0;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_14
    const-string v0, "amF2YS51dGlsLkJhc2U2NA=="

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    if-lt v2, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2}, Lcom/NoiseModels$0;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_19
    const v0, 0xa

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

    :goto_1a
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

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
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_1c
    invoke-static {v0}, Lcom/NoiseModels$0;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1e
    xor-int/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1f
    aput-byte v3, v0, v2

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

    :goto_20
    check-cast v3, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_21
    int-to-byte v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_22
    aput-object p0, v2, v4

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

    :goto_23
    new-array v3, v4, [Ljava/lang/Class;

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

    :goto_24
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v3, "ZGVjb2Rl"

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_26
    check-cast v2, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_28
    aput-object v8, v7, v4

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_29
    new-array v7, v6, [Ljava/lang/Class;

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

    :goto_2a
    array-length v3, v3

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

    nop

    :goto_2b
    goto/32 :goto_10

    nop

    nop

    :goto_2c
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2e
    invoke-static {v3}, Lcom/NoiseModels$0;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-array v3, v4, [Ljava/lang/Object;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_33
    const-string v1, "YmFzZQ"

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

    nop

    :goto_34
    invoke-virtual {v0, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_36
    check-cast v1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_38
    invoke-static {v2}, Lcom/NoiseModels$0;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3b
    new-array v2, v4, [Ljava/lang/Object;

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

    :goto_3c
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3d
    new-instance v2, Ljava/lang/String;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    rem-int v4, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3f
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_40
    add-int v0, v0, v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast v3, [B

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_42
    new-array v2, v6, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_43
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v8}, Lcom/NoiseModels$0;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_46
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop
.end method

.method public static ae(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

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

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

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

    :goto_5
    new-instance p0, Ljava/lang/String;

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

.method public static af(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

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
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    :try_start_0
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    new-array v1, v0, [Ljava/lang/Object;

    nop

    nop

    nop

    const-string v2, "W1FD"

    nop

    nop

    invoke-static {v2}, Lcom/NoiseModels$0;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    aput-object v2, v1, v3

    nop

    nop

    nop

    const-string v2, "CAAFBEwNEgsFTzoLFgQUABA="

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lcom/NoiseModels$0;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    const-string v4, "EgABFgcoHRE="

    nop

    nop

    invoke-static {v4}, Lcom/NoiseModels$0;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    new-array v0, v0, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    const-string v5, "CAAFBEwNEgsFTyAREAgdAg=="

    nop

    nop

    invoke-static {v5}, Lcom/NoiseModels$0;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    aput-object v5, v0, v3

    nop

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const v2, 0x0

    nop

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Integer;

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    new-array v0, v0, [B

    nop

    nop

    invoke-static {p0, v0}, Lcom/NoiseModels$0;->aa(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

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

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop
.end method
