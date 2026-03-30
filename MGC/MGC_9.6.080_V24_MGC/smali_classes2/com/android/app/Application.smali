.class public Lcom/android/app/Application;
.super Landroid/app/Application;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    :goto_2
    const v1, 0xf

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const v0, 0x0

    nop

    nop

    :try_start_0
    const/4 v4, 0x0

    nop

    new-array v3, v4, [Ljava/lang/Class;

    nop

    nop

    new-array v4, v4, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const-string v1, "QoDSk47R2Z3Q1E4Sjs_Nwf7NPj8DjN7JhtDT"

    nop

    nop

    nop

    invoke-static {v1}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const-string v2, "RQ=="

    nop

    invoke-static {v2}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Qw=="

    nop

    nop

    invoke-static {v2}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_b
    goto :goto_c

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    :goto_c
    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    goto/32 :goto_15

    nop

    nop

    :goto_0
    const v1, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    :goto_3
    return-object v1

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v2

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v2

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

    :goto_9
    const/4 v0, 0x1

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw v1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

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

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v2, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    nop

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_12
    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    const-class v2, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x11

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
.end method

.method public static ad(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 p1, v1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_5
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Ljava/util/Map;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    const v1, 0x10

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    sget-object v0, Lcom/android/app/Application;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    check-cast p0, Ljava/lang/String;

    nop

    nop

    :try_start_0
    invoke-static {p0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, [B

    nop

    nop

    const-string v0, "ENyJ"

    nop

    nop

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    int-to-byte v0, v0

    nop

    nop

    nop

    nop

    nop

    aput-byte v0, v1, p0

    nop

    add-int/lit8 p0, p0, 0x1

    nop

    nop

    const-string v0, "ENuH"

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    int-to-byte v0, v0

    nop

    aput-byte v0, v1, p0

    nop

    add-int/lit8 p0, p0, 0x1

    nop

    nop

    const-string v0, "ENuK"

    nop

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    int-to-byte v0, v0

    nop

    nop

    nop

    nop

    nop

    aput-byte v0, v1, p0

    nop

    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    const-string v0, "F9s="

    nop

    nop

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    int-to-byte v0, v0

    nop

    nop

    nop

    nop

    nop

    aput-byte v0, v1, p0

    nop

    nop

    nop

    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    nop

    nop

    const-string v0, "E9uL"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    int-to-byte v0, v0

    nop

    nop

    nop

    nop

    aput-byte v0, v1, p0

    nop

    nop

    nop

    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    nop

    nop

    const-string v0, "F9s="

    nop

    nop

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    int-to-byte v0, v0

    nop

    nop

    aput-byte v0, v1, p0

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    nop

    nop

    const-string v0, "E9yP"

    nop

    nop

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    int-to-byte v0, v0

    nop

    nop

    nop

    nop

    aput-byte v0, v1, p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop
.end method

.method private static aj(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1
    throw v4

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v6, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_4
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :cond_1
    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_3

    nop

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    nop

    nop

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    nop

    cmp-long v10, v6, v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_1

    nop

    nop

    nop

    nop

    nop

    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v7, Ljava/io/FileOutputStream;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_10

    nop

    nop

    :goto_7
    const v1, 0x5

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_11

    nop

    nop

    nop

    :cond_4
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, ""

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

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

    :goto_f
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    const v8, 0x19000

    nop

    nop

    :try_start_5
    new-array v8, v8, [B

    nop

    nop

    nop

    nop

    const/4 v12, 0x1

    nop

    nop

    :goto_11
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    nop

    move v10, v9

    nop

    nop

    nop

    if-eqz v12, :cond_5

    nop

    nop

    nop

    const/16 v11, 0x7f

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    aput-byte v11, v8, v4

    nop

    nop

    nop

    nop

    const/16 v11, 0x45

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    aput-byte v11, v8, v4

    nop

    const/16 v11, 0x4c

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    aput-byte v11, v8, v4

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    move v12, v11

    nop

    nop

    :cond_5
    const/4 v11, -0x1

    nop

    nop

    nop

    if-eq v9, v11, :cond_4

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v8

    nop

    nop

    nop

    :try_start_6
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_13
    throw v7

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v4

    nop

    nop

    nop

    nop

    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_15

    nop

    nop

    nop

    :catchall_2
    move-exception v9

    nop

    nop

    nop

    nop

    :try_start_8
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15
    throw v8

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v7

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x11

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    nop

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

    :goto_18
    return-object v4

    nop

    nop

    nop

    :catchall_4
    move-exception v8

    nop

    nop

    nop

    nop

    nop

    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v6, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_6
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1b
    if-eqz v3, :cond_7

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

    :cond_7
    :try_start_b
    new-instance v3, Ljava/util/zip/ZipFile;

    nop

    nop

    nop

    invoke-direct {v3, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    :try_start_c
    const-string v4, "assets/MsTqPhkAtdw8yAZh"

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    nop

    if-nez v5, :cond_2

    nop

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    nop

    nop

    nop

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entry not found: "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p0}, Lcom/android/app/Application;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1d
    const-string v0, ""

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v2, Ljava/io/File;

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
    return-object v0

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2b

    nop

    nop

    :goto_21
    const-string v4, "codec_vvc.lck"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_22
    goto/32 :goto_c

    nop

    nop

    :goto_23
    const-string v2, "Get apk path failed"

    nop

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

    :goto_24
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_17

    nop

    nop

    :goto_25
    goto :goto_26

    nop

    :catchall_5
    move-exception v5

    nop

    :try_start_e
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26
    throw v4

    nop

    nop
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :catch_0
    move-exception v3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p0}, Lcom/android/app/Application;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_29
    new-instance v4, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v1, Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_b

    nop
.end method

.method private static b()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    goto/32 :goto_27

    nop

    nop

    :goto_0
    move-object/from16 v6, v19

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

    nop

    :goto_1
    goto/16 :goto_26

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

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

    :goto_3
    move-object v14, v0

    nop

    nop

    nop

    nop

    :try_start_0
    new-array v0, v9, [B

    nop

    nop

    const/4 v15, 0x1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    nop

    nop

    nop

    move/from16 v17, v9

    nop

    nop

    if-eq v9, v8, :cond_5

    nop

    nop

    nop

    nop

    if-eqz v15, :cond_0

    nop

    nop

    const/16 v9, 0x7f

    nop

    nop

    nop

    nop

    aput-byte v9, v0, v2

    nop

    const/16 v9, 0x45

    nop

    nop

    nop

    nop

    nop

    aput-byte v9, v0, v7

    nop

    const/16 v9, 0x4c

    nop

    nop

    nop

    nop

    nop

    aput-byte v9, v0, v6

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    move v15, v9

    nop

    nop

    nop

    nop

    :cond_0
    move/from16 v9, v17

    nop

    nop

    invoke-virtual {v14, v0, v2, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_5
    move-object v14, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_7
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    new-instance v0, Ljava/util/zip/ZipFile;

    nop

    invoke-direct {v0, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/io/File;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    invoke-static {v5}, Lcom/android/app/Application;->k(Ljava/io/File;)J

    move-result-wide v13

    nop

    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v15

    nop

    nop

    nop

    nop

    cmp-long v0, v13, v15

    nop

    nop

    nop

    if-eqz v0, :cond_c

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v10, v12}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_11
    move-object v5, v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_13
    const/4 v8, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    move-object v2, v0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_15
    move-object v13, v0

    nop

    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    nop

    nop

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v10, "QoDb2IyR0YzU"

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v6}, Lcom/android/app/Application;->dj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_67

    nop

    nop

    :cond_2
    goto/32 :goto_71

    nop

    nop

    :goto_19
    move-object v6, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a
    throw v2

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

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

    :goto_1b
    move-object v6, v0

    nop

    nop

    nop

    nop

    :try_start_5
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw v2

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-ge v0, v3, :cond_3

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :cond_3
    :try_start_6
    const-string v0, "QIHbz4DW2cHezVoSrs_Ng9beLycDgNE="

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    const-string v3, "RorL7Z3Q3orMzmRdgto="

    nop

    nop

    nop

    invoke-static {v3}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    new-array v4, v2, [Ljava/lang/Class;

    nop

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    new-array v4, v2, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/String;

    nop
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_1e
    const v9, 0x19000

    nop

    nop

    :try_start_7
    new-instance v0, Ljava/util/zip/ZipFile;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_60

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v12, :cond_4

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_8
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_23
    throw v2

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object v6, v0

    nop

    nop

    nop

    :try_start_9
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26
    throw v2

    nop

    nop

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object v6, v0

    nop

    :try_start_a
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_29
    throw v2

    nop

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2a
    invoke-static {v6}, Lcom/android/app/Application;->cj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_4

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v0, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_2f
    move-object/from16 v19, v1

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_30
    goto/16 :goto_75

    nop

    :catchall_6
    move-exception v0

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_39

    nop

    :goto_32
    move-object v6, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_b
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_33
    throw v2

    nop

    nop

    nop

    nop

    nop
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/16 v3, 0x1c

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

    :goto_36
    invoke-static {v3, v4, v5, v6}, Lcom/android/app/Application;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v6, 0x2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_6
    goto/32 :goto_38

    nop

    :goto_3c
    invoke-static {v6}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3d
    if-eqz v12, :cond_7

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_7
    :try_start_c
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3e
    move-object v12, v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3f
    invoke-static {v6}, Lcom/android/app/Application;->aj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v13, :cond_8

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_8
    :try_start_d
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_41
    move-object v2, v0

    nop

    nop

    :try_start_e
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_42
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_33

    nop

    nop

    :catchall_7
    move-exception v0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v13, :cond_9

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :cond_9
    :try_start_f
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    nop

    :catchall_8
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_46
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_47
    invoke-static {v1}, Lcom/android/app/Application;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

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

    :goto_48
    move-object v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_49
    move-object v2, v0

    nop

    :try_start_10
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_1a

    nop

    nop

    :catchall_9
    move-exception v0

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

    :goto_4b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_4c
    move-object v2, v0

    nop

    nop

    nop

    :try_start_11
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto/32 :goto_21

    nop

    nop

    :goto_4d
    const/4 v7, 0x1

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

    :goto_4e
    const/4 v8, -0x1

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

    :goto_4f
    invoke-static {v1}, Lcom/android/app/Application;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/4 v7, 0x1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_51
    move/from16 v9, v17

    nop

    nop

    nop

    nop

    nop

    :try_start_12
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_52
    const-string v6, "QoDb2Izg1YrJ3gRQjNQ="

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto :goto_55

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    new-instance v2, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_57
    move-object v12, v0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const-string v2, "WYfQ0oTb0o3dxA=="

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_59
    return-void

    nop

    nop

    nop

    nop

    :goto_5a
    :try_start_13
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    invoke-static {v9}, Lcom/android/app/Application;->k(Ljava/io/File;)J

    move-result-wide v13

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v17

    nop

    nop

    nop

    nop

    cmp-long v0, v13, v17

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_f

    nop

    nop

    nop

    :cond_a
    invoke-virtual {v10, v12}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    nop

    nop

    nop
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5b
    const v9, 0x19000

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_5c
    move-object v1, v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    move-object v9, v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-nez v13, :cond_b

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :cond_b
    :try_start_14
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    :cond_c
    :goto_5f
    :try_start_15
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/32 :goto_62

    nop

    nop

    :goto_60
    move-object v10, v0

    nop

    :try_start_16
    const-string v0, "QJzM2JvMkr7N7GBetuuK14jsCiFdrNA="

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    move-object v11, v0

    nop

    invoke-virtual {v10, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const-string v19, ""

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :catchall_a
    move-exception v0

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_63
    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_5d

    nop

    nop

    :goto_64
    move-object v4, v0

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

    :goto_65
    invoke-static {v6}, Lcom/android/app/Application;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

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

    :goto_66
    const v0, 0x19000

    nop

    nop

    :try_start_17
    new-array v0, v0, [B

    nop

    nop

    nop

    nop

    nop

    const/4 v15, 0x1

    nop

    nop

    :goto_67
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    nop

    nop

    nop

    move/from16 v17, v6

    nop

    nop

    nop

    if-eq v6, v8, :cond_2

    nop

    nop

    if-eqz v15, :cond_d

    nop

    const/16 v6, 0x50

    nop

    nop

    nop

    aput-byte v6, v0, v2

    nop

    const/16 v6, 0x4b

    nop

    nop

    nop

    nop

    aput-byte v6, v0, v7

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x3

    nop

    const/16 v16, 0x2

    nop

    nop

    aput-byte v6, v0, v16

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    move v15, v6

    nop

    goto :goto_68

    nop

    nop

    nop

    nop

    nop

    :cond_d
    const/16 v16, 0x2

    nop

    nop

    :goto_68
    move/from16 v6, v17

    nop

    nop

    nop

    invoke-virtual {v14, v0, v2, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    goto/32 :goto_3a

    nop

    nop

    :goto_69
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :catchall_b
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_6a
    return-void

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-nez v13, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :cond_e
    :try_start_18
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :cond_f
    :goto_6e
    :try_start_19
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_0

    goto/32 :goto_45

    nop

    nop

    :goto_6f
    invoke-static {v0, v1, v2}, Lcom/android/app/Application;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_70
    invoke-static {v1}, Lcom/android/app/Application;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_71
    move/from16 v6, v17

    nop

    nop

    nop

    :try_start_1a
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    move-object v13, v0

    nop

    nop

    :try_start_1b
    new-instance v0, Ljava/io/FileOutputStream;

    nop

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_73
    move-object v2, v0

    nop

    :try_start_1c
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    goto/32 :goto_43

    nop

    nop

    :goto_74
    move-object v6, v0

    nop

    nop

    nop

    nop

    :try_start_1d
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_75
    throw v2

    nop

    nop

    nop

    nop
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    :catchall_c
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_76
    invoke-static {v10}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_77
    if-eqz v3, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    move-object v10, v0

    nop

    nop

    nop

    nop

    :try_start_1e
    const-string v0, "QJzM2JvMkqfpxUJJ2Mn6iu31BSYo3Y8="

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    move-object v11, v0

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    nop

    nop
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-static {v2}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static ba(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v7, v4}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-virtual {v3, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_7
    aput-object p0, v2, v5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aput-object v4, v3, v5

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v4, "amF2YS5sYW5nLlN0cmluZw"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v7, v3}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v7

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-array v3, v2, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_30

    nop

    nop

    :goto_e
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v7

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

    :goto_f
    const-string v3, "amF2YS51dGlsLkJhc2U2NA"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    new-array v2, v2, [Ljava/lang/Object;

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
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v1, [B

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

    :goto_14
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v7

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_19
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1a
    new-instance v4, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1b
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    new-instance v4, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1d
    new-array v4, v5, [Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v6, Ljava/lang/String;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v2, 0x1

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

    :goto_21
    invoke-virtual {v3, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_23
    invoke-virtual {v7, v6}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

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

    :goto_26
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v7, v4}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v7

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_28
    const/4 v6, 0x0

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

    :goto_29
    const-string v1, "amF2YS51dGlsLkJhc2U2NCREZWNvZGVy"

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v3, Ljava/lang/String;

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

    :goto_2b
    new-array v4, v5, [Ljava/lang/Object;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2d
    invoke-virtual {v7, v1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v7

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v4, "ZGVjb2Rl"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_30
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_31
    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_32
    const-string v6, "Z2V0RGVjb2Rlcg"

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

    :goto_33
    new-instance v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_34
    return-object v0

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static bd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_f

    nop

    nop

    :goto_0
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p1

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object/from16 p1, v1

    nop

    nop

    nop

    nop

    :catchall_0
    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    check-cast v0, Ljava/util/Map;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v2, Ljava/lang/String;

    nop

    nop

    :try_start_0
    invoke-static {v2}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v1, p1

    nop

    nop

    check-cast v1, [B

    nop

    nop

    const-string v0, "E96N"

    nop

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    int-to-byte v0, v0

    nop

    nop

    nop

    nop

    nop

    aput-byte v0, v1, v2

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    const-string v0, "E9-O"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    int-to-byte v0, v0

    nop

    aput-byte v0, v1, v2

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    const-string v0, "ENuO"

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    int-to-byte v0, v0

    nop

    aput-byte v0, v1, v2

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    const-string v0, "ENaH"

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    int-to-byte v0, v0

    nop

    nop

    nop

    nop

    nop

    aput-byte v0, v1, v2

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    const-string v0, "FNg="

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    int-to-byte v0, v0

    nop

    aput-byte v0, v1, v2

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    const-string v0, "EN-H"

    nop

    nop

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    int-to-byte v0, v0

    nop

    nop

    nop

    nop

    aput-byte v0, v1, v2

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    const-string v0, "E9qM"

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    int-to-byte v0, v0

    nop

    nop

    aput-byte v0, v1, v2

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v0, Lcom/android/app/Application;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method private static bj(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lcom/android/app/Application;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_3
    const-string v2, "Get apk path failed"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    return-object v4

    nop

    nop

    :catchall_0
    move-exception v8

    nop

    nop

    :try_start_0
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lcom/android/app/Application;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    nop

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

    :goto_6
    if-nez v6, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v3, :cond_2

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

    :cond_2
    :try_start_2
    new-instance v3, Ljava/util/zip/ZipFile;

    nop

    nop

    invoke-direct {v3, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v4, "assets/PrS4CXUe9qpVqvJx"

    nop

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    nop

    if-nez v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entry not found: "

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_25

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_c

    nop

    nop

    :catchall_1
    move-exception v8

    nop

    :try_start_5
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v7

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v4

    nop

    nop

    nop

    :try_start_6
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_4

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    nop

    nop

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    nop

    cmp-long v10, v6, v8

    nop

    nop

    if-eqz v10, :cond_6

    nop

    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    new-instance v7, Ljava/io/FileOutputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_10
    goto :goto_11

    nop

    :catchall_3
    move-exception v5

    nop

    nop

    nop

    :try_start_9
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_11
    throw v4

    nop

    nop

    nop

    nop

    nop
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2a

    nop

    nop

    :goto_14
    new-instance v4, Ljava/lang/RuntimeException;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_15
    if-nez v6, :cond_5

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

    :cond_5
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_16
    :try_start_b
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    nop

    :cond_6
    :goto_17
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v8, 0x19000

    nop

    nop

    :try_start_c
    new-array v8, v8, [B

    nop

    nop

    const/4 v12, 0x1

    nop

    :goto_19
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    nop

    nop

    nop

    move v10, v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_7

    nop

    nop

    nop

    nop

    nop

    const/16 v11, 0x7f

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    aput-byte v11, v8, v4

    nop

    nop

    nop

    nop

    nop

    const/16 v11, 0x45

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    aput-byte v11, v8, v4

    nop

    nop

    const/16 v11, 0x4c

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    aput-byte v11, v8, v4

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    move v12, v11

    nop

    :cond_7
    const/4 v11, -0x1

    nop

    nop

    nop

    nop

    if-eq v9, v11, :cond_9

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v4, "codec_avc.lck"

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

    :goto_1c
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_9

    nop

    nop

    :goto_1e
    const-string v0, ""

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :cond_9
    :try_start_d
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_21

    nop

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception v9

    nop

    nop

    nop

    :try_start_e
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw v8

    nop

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v7

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_24
    throw v4

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1d

    nop

    nop

    :goto_26
    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_28
    const-string v0, ""

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2a
    new-instance v1, Ljava/io/File;

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

    :goto_2b
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v2, Ljava/io/File;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static c(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    goto/32 :goto_21

    nop

    nop

    :goto_0
    new-instance v1, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1
    invoke-static {v3}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

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

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

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

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    :goto_5
    invoke-static {v3}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

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

    :goto_6
    const-string v3, "Doze3ofa"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    const-string v3, "DoveyY6QyJzazwU="

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v1, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v3}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

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

    :goto_f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

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

    :goto_11
    return-object v1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    const-string v3, "Doze3ofa"

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    nop

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

    :goto_17
    invoke-static {v3}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_18
    const-string v1, "\\d+"

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

    nop

    :goto_19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1b
    const v1, 0x1b

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

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object v1

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_21
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_23
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    :goto_24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_27
    const-string v3, "DoveyY6Q2Y7L3AU="

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_28
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2b
    const-string v3, "/"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    :goto_2d
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop
.end method

.method public static ca(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "amF2YS51dGlsLkJhc2U2NA=="

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    new-array v2, v4, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_2b

    nop

    :goto_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Lcom/android/app/Application;->ba(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x16

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

    :goto_8
    check-cast v2, Ljava/lang/String;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_9
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-array v3, v4, [Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_e
    const-string v3, "AQ4eSwMPFxcNCBdLAxEDSyMRAwkLAhIRCw4d"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aput-object p0, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

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

    :goto_13
    invoke-static {v2}, Lcom/android/app/Application;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_16
    invoke-static {v1}, Lcom/android/app/Application;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_18
    move-object v3, v0

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

    :goto_19
    const-string v8, "amF2YS5sYW5nLlN0cmluZw=="

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1b
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v3, [B

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_1e
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_20
    const/4 v6, 0x1

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_21
    rem-int v4, v2, v4

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_22
    check-cast v1, Ljava/lang/String;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_23
    const v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_24
    const-string v2, "AQ4eSywOGhYHLBwBBw0AQVI="

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_25
    return-object p0

    nop

    nop

    :goto_26
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v0, [B

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_28
    new-array v7, v6, [Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v2}, Lcom/android/app/Application;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v2, 0x0

    nop

    :goto_2b
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v2, Ljava/lang/String;

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

    :goto_2d
    aput-byte v3, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_2e
    const-string v3, "ZGVjb2Rl"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_32
    const v2, 0x0

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

    :goto_33
    invoke-static {v8}, Lcom/android/app/Application;->ba(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_34
    const-string v2, "Z2V0VXJsRGVjb2Rlcg=="

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_36
    invoke-virtual {v0, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_37
    new-array v2, v6, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_39
    const-string v2, "Bg=="

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    aget-byte v3, v0, v2

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    return-object v2

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_58

    nop

    nop

    :goto_3d
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

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

    :goto_3e
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3f
    aput-object v8, v7, v4

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

    :goto_40
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    :goto_41
    invoke-static {v3}, Lcom/android/app/Application;->ba(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_42
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_43
    aget-byte v4, v1, v4

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_44
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_45
    invoke-static {v3}, Lcom/android/app/Application;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_46
    int-to-byte v3, v3

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_d

    nop

    nop

    :goto_48
    if-lt v2, v3, :cond_2

    nop

    goto/32 :goto_26

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v1, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

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

    :goto_4a
    invoke-static {v0}, Lcom/android/app/Application;->ba(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    :goto_4b
    const-string v1, "Aw=="

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4c
    array-length v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_4d
    new-array v5, v4, [Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_4e
    new-array v3, v4, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v2}, Lcom/android/app/Application;->ba(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_50
    array-length v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_51
    invoke-static {v2}, Lcom/android/app/Application;->ba(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_53
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_54
    const v0, 0x15

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

    :goto_55
    const/4 v3, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_57
    xor-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_58
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_59
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5a
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method private static cj(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    :goto_1
    const-string v2, "Get apk path failed"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    return-object v4

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v8

    nop

    nop

    :try_start_0
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_4

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

    nop

    :catchall_1
    move-exception v9

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v8

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :catchall_2
    move-exception v7

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

    :goto_6
    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_0
    :try_start_2
    new-instance v3, Ljava/util/zip/ZipFile;

    nop

    invoke-direct {v3, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v4, "assets/7umdgbGwHwBdwPJ5"

    nop

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_5

    nop

    nop

    nop

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    nop

    nop

    nop

    nop

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entry not found: "

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    nop

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/32 :goto_15

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_a

    nop

    nop

    :catchall_3
    move-exception v8

    nop

    :try_start_5
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v7

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v4

    nop

    :try_start_6
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    const-string v0, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    const-string v4, "codec_aac.lck"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_d
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    const v8, 0x19000

    nop

    nop

    nop

    :try_start_7
    new-array v8, v8, [B

    nop

    const/4 v12, 0x1

    nop

    :goto_10
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    nop

    move v10, v9

    nop

    nop

    if-eqz v12, :cond_2

    nop

    nop

    nop

    nop

    const/16 v11, 0x7f

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    aput-byte v11, v8, v4

    nop

    nop

    nop

    const/16 v11, 0x45

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    aput-byte v11, v8, v4

    nop

    nop

    const/16 v11, 0x4c

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    aput-byte v11, v8, v4

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    move v12, v11

    nop

    nop

    nop

    nop

    :cond_2
    const/4 v11, -0x1

    nop

    nop

    nop

    if-eq v9, v11, :cond_9

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_12
    const v1, 0x4

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    return-object v0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    const-string v0, ""

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_18

    nop

    :catchall_5
    move-exception v5

    nop

    nop

    nop

    nop

    :try_start_8
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw v4

    nop

    nop

    nop
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_19
    new-instance v4, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    new-instance v1, Ljava/io/File;

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

    :goto_1b
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_1f
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

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    :goto_20
    if-nez v6, :cond_4

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_4
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_22
    return-object v0

    nop

    nop

    nop

    nop

    :cond_5
    :try_start_a
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    nop

    if-eqz v6, :cond_6

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    nop

    cmp-long v10, v6, v8

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_8

    nop

    nop

    nop

    :cond_6
    invoke-virtual {v3, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    new-instance v7, Ljava/io/FileOutputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p0}, Lcom/android/app/Application;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_24
    invoke-static {p0}, Lcom/android/app/Application;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v6, :cond_7

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

    :cond_7
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_26
    :try_start_d
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    nop

    :cond_8
    :goto_27
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_10

    nop

    nop

    :cond_9
    :try_start_e
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_29
    throw v4

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v2, Ljava/io/File;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

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
.end method

.method private static d()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x8

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1
    const-string v6, "bY7R2Z3Q1IuQ0lkTv97PjNrRdQ=="

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroid/content/pm/Signature;

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

    :goto_5
    invoke-static {v6}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

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
    const-string v7, "bY7R2Z3Q1IuQ3FpM"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-array v3, v3, [Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    aput-object v6, v3, v2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_c
    throw v3

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v7}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_f
    aput-object v7, v3, v6

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

    :goto_10
    const-string v1, "MIIEQzCCAyugAwIBAgIJAMLgh0ZkSjCNMA0GCSqGSIb3DQEBBAUAMHQxCzAJBgNVBAYTAlVTMRMw\nEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtHb29n\nbGUgSW5jLjEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDAeFw0wODA4MjEyMzEz\nMzRaFw0zNjAxMDcyMzEzMzRaMHQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYw\nFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtHb29nbGUgSW5jLjEQMA4GA1UECxMHQW5k\ncm9pZDEQMA4GA1UEAxMHQW5kcm9pZDCCASAwDQYJKoZIhvcNAQEBBQADggENADCCAQgCggEBAKtW\nLgDYO6IIrgqWbxJOKdoR8qtW0I9Y4sypEwPpt1TTcvZApxsdyxMJZ2JORland2qSGT2y5b+3JKke\ndxiLDmpHpDsz2WCbdxgxRczfey5YZnTJ4VZbH0xqWVW/8lGmPav5xVwnIiJS6HXk+BVKZF+JcWjA\nsb/GEuq/eFdpuzSqeYTcfi6idkyugwfYwXFU1+5fZKUaRKYCwkkFQVfcAs1fXA5V+++FGfvjJ/Cx\nURaSxaBvGdGDhfXE28LWuT9ozCl5xw4Yq5OGazvV24mZVSoOO0yZ31j7kYvtwYK6NeADwbSxDdJE\nqO4k//0zOHKrUiGYXtqw/A0LFFtqoZKFjnkCAQOjgdkwgdYwHQYDVR0OBBYEFMd9jMIhF1Ylmn/T\ngt9r45jk14alMIGmBgNVHSMEgZ4wgZuAFMd9jMIhF1Ylmn/Tgt9r45jk14aloXikdjB0MQswCQYD\nVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEUMBIG\nA1UEChMLR29vZ2xlIEluYy4xEDAOBgNVBAsTB0FuZHJvaWQxEDAOBgNVBAMTB0FuZHJvaWSCCQDC\n4IdGZEowjTAMBgNVHRMEBTADAQH/MA0GCSqGSIb3DQEBBAUAA4IBAQBt0lLO74UwLDYKqs6Tm8/y\nzKkEu116FmH4rkaymUIE0P9KaMftGlMexFlaYjzmB2OxZyl6euNXEsQH8gjwyxCUKRJNexBiGcCE\nyj6z+a1fuHHvkiaai+KL8W1EyNmgjmyy8AW7P+LLlkR+ho5zEHatRbM/YAnqGcFh5iZBqpknHf1S\nKMXFh4dd239FJ1jWYfbMDMy3NS5CTMQ2XFI1MvcyUTdZPErjQfTbQe3aDQsQcafEQPD+nqActifK\nZ0Np0IS9L9kR/wbNvyz6ENwPiTrjV2KRkEjH78ZMcUQXg0L3BYHJ3lc69Vs5Ddf9uUGGMYldX3Wf\nMBEmh/9iFBDAaTCK\n"

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_11
    check-cast v1, Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v5, v1, v0}, Lcom/android/app/Application$1;-><init>(Landroid/os/Parcelable$Creator;Landroid/content/pm/Signature;)V

    :try_start_0
    const-class v6, Landroid/content/pm/PackageInfo;

    nop

    nop

    invoke-static {v6, v3}, Lcom/android/app/Application;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_13
    invoke-static {v7}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

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

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "QIHbz4DW2cHc0kRIitHJwc_QYAMLjNTciNr0bYnQ"

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    invoke-static {v1}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    :goto_1a
    invoke-static {v3}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v3}, Lcom/android/app/Application$2;->addHiddenApiExemptions([Ljava/lang/String;)Z

    :goto_1c
    :try_start_1
    const-class v3, Landroid/content/pm/PackageManager;

    nop

    nop

    nop

    nop

    nop

    const-string v6, "Ur_e3oTe2or200xTrN7eh9o="

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v6}, Lcom/android/app/Application;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    nop

    nop

    nop

    const-string v7, "QoPa3J0="

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    new-array v8, v2, [Ljava/lang/Class;

    nop

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    nop

    new-array v2, v2, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1d
    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v2

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v3, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v5, Lcom/android/app/Application$1;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_23
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_24
    const-string v7, "bY7R2Z3Q1IuQ3kVSm9rTm5DNIw=="

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_25
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_28
    const-string v3, "Yr36_Lvw7w=="

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_29
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

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

    :goto_2a
    if-ge v3, v6, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2b
    aput-object v7, v3, v6

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 v6, 0x1c

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception v2

    nop

    nop

    nop

    goto/32 :goto_20

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

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2f
    goto :goto_30

    nop

    :catchall_1
    move-exception v2

    nop

    nop

    nop

    :goto_30
    :try_start_2
    const-class v2, Landroid/os/Parcel;

    nop

    nop

    nop

    const-string v3, "TKzN2I7L0p3M"

    nop

    nop

    nop

    invoke-static {v3}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Lcom/android/app/Application;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/util/Map;

    nop

    nop

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_31
    goto :goto_32

    nop

    :catchall_2
    move-exception v2

    nop

    :goto_32
    :try_start_3
    const-class v2, Landroid/os/Parcel;

    nop

    nop

    const-string v3, "Ur_e1J3a2azN2EtIgM3O"

    nop

    nop

    invoke-static {v3}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    invoke-static {v2, v3}, Lcom/android/app/Application;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    nop

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0xe

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v4, 0x0

    nop

    goto/32 :goto_27

    nop

    nop
.end method

.method private static dj(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    new-instance v4, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    new-instance v2, Ljava/io/File;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    :goto_6
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_8

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v9

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v8

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catchall_1
    move-exception v7

    nop

    nop

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

    :goto_9
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    const-string v0, ""

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_b
    throw v4

    nop

    nop

    :goto_c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_d
    return-object v0

    nop

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    nop

    nop

    cmp-long v10, v6, v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_5

    nop

    nop

    nop

    nop

    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    nop

    nop

    nop

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_17

    nop

    nop

    :goto_e
    if-eqz v3, :cond_3

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_3
    :try_start_3
    new-instance v3, Ljava/util/zip/ZipFile;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    const-string v4, "assets/UfymoZZEcmf2gOB0"

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    nop

    nop

    if-nez v5, :cond_1

    nop

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    nop

    nop

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entry not found: "

    nop

    nop

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_11

    nop

    nop

    :catchall_2
    move-exception v5

    nop

    nop

    nop

    nop

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_11
    throw v4

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v6, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_4
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_15
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    nop

    :cond_5
    :goto_16
    goto/32 :goto_1e

    nop

    nop

    :goto_17
    const v8, 0x19000

    nop

    nop

    nop

    :try_start_9
    new-array v8, v8, [B

    nop

    nop

    nop

    nop

    const/4 v12, 0x1

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    nop

    nop

    move v10, v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_6

    nop

    nop

    nop

    nop

    nop

    const/16 v11, 0x7f

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    aput-byte v11, v8, v4

    nop

    nop

    const/16 v11, 0x45

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    aput-byte v11, v8, v4

    nop

    nop

    nop

    nop

    nop

    const/16 v11, 0x4c

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    aput-byte v11, v8, v4

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    move v12, v11

    nop

    nop

    :cond_6
    const/4 v11, -0x1

    nop

    nop

    nop

    if-eq v9, v11, :cond_7

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

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

    :goto_1a
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1b
    const-string v0, ""

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1c
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :try_start_a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v2, "Get apk path failed"

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto :goto_22

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v8

    nop

    nop

    nop

    nop

    nop

    :try_start_b
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_22
    throw v7

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v4

    nop

    nop

    nop

    nop

    :try_start_c
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_23
    return-object v0

    nop

    nop

    :goto_24
    goto/32 :goto_4

    nop

    nop

    :goto_25
    return-object v4

    nop

    nop

    :catchall_5
    move-exception v8

    nop

    nop

    nop

    nop

    nop

    :try_start_d
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_26
    invoke-static {p0}, Lcom/android/app/Application;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_28
    invoke-static {p0}, Lcom/android/app/Application;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_29
    if-nez v6, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_8
    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_9
    goto/32 :goto_5

    nop

    :goto_2b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2c
    const-string v4, "codec_aec.lck"

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v1

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    nop

    new-instance v1, Ljava/io/FileReader;

    nop

    const-string v2, "Dp_N0oyQzorT2wVRjs_O"

    nop

    nop

    nop

    invoke-static {v2}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .local v1, "v1":Ljava/io/FileReader;
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    const-string v1, "\\s+"

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    array-length v3, v1

    nop

    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    nop

    nop

    aget-object v3, v1, v3

    nop

    nop

    nop

    nop

    invoke-static {p0, v3}, Lcom/android/app/Application;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x17

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

    :goto_a
    if-nez v4, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    nop

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v3

    nop

    nop

    :goto_b
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_d

    nop

    nop

    :catchall_1
    move-exception v2

    nop

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v1

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_f
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1d

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
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    nop

    :goto_1
    invoke-static {v7}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_3
    aget-object v4, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    const-string v4, "UYTYk47P1g=="

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_59

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    :goto_6
    aget-object v1, v0, v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7
    aget-object v1, v0, v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v8, 0x4

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_a
    const-string v7, "RY7L3A=="

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    :cond_1
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_d
    if-nez v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_e
    if-nez v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    nop

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

    :goto_11
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    invoke-static {v6}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_14
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_48

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_17
    aget-object v1, v0, v1

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

    nop

    :goto_18
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_19
    invoke-static {v6}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

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

    :goto_1a
    goto/32 :goto_36

    nop

    :goto_1b
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1c
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_68

    nop

    nop

    :goto_1e
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    :cond_5
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v4, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_6
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v9}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    :cond_7
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_22
    if-nez v4, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v1, "D47P1g=="

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

    :goto_24
    if-eq v3, v11, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v4, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-string v6, "TIHL"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    aget-object v1, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_28
    const-string v4, "QJza3g=="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v9}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2a
    add-int/lit8 v1, v3, -0x2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2b
    aget-object v1, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2c
    aget-object v1, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_2d
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v4}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_2f
    if-nez v1, :cond_b

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :cond_b
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_31
    const-string v4, "RJfP3IHb"

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v4, 0x6

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

    nop

    :goto_33
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_35
    return v2

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_54

    nop

    nop

    :goto_37
    return v1

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_3

    nop

    nop

    :goto_39
    aget-object v4, v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v5}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    nop

    :goto_3d
    add-int/lit8 v1, v3, -0x1

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

    :goto_3e
    const-string v0, "/"

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_40
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_41
    const-string v5, "Q47M2MHezYQ="

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_42
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_43
    if-lez v0, :cond_c

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1a

    nop

    :goto_44
    aget-object v1, v0, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

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

    :goto_47
    if-nez v1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_62

    nop

    nop

    :goto_48
    aget-object v4, v0, v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

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

    :goto_4a
    add-int/lit8 v4, v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v11, 0x3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v4}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4e
    if-eqz v1, :cond_e

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_e
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v1, :cond_f

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_69

    nop

    nop

    :goto_50
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-ne v3, v8, :cond_10

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

    :cond_10
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    aget-object v1, v0, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_53
    aget-object v4, v0, v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_1b

    nop

    nop

    :goto_55
    aget-object v1, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_58
    return v2

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5b
    add-int/lit8 v1, v3, -0x2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    aget-object v4, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {v7}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const v1, 0x4

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

    :goto_61
    aget-object v4, v0, v2

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    aget-object v1, v0, v8

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_63
    const/4 v10, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {v5}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_65
    invoke-static {v9}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const-string v9, "QJ_P"

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_67
    invoke-static {v4}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

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

    :goto_68
    if-eq v3, v4, :cond_11

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    :cond_11
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_69
    const/4 v1, 0x2

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

    :goto_6a
    array-length v3, v0

    nop

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

    :goto_6b
    invoke-static {v1}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6c
    if-eq v3, v10, :cond_12

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    return v1

    nop

    :goto_6e
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public static g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v6

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    aput-object v3, v2, v4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_5
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6
    new-instance v1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_b
    new-array v2, v5, [Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "WTI5dExrNXZhWE5sVFc5a1pXeHpKREE"

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

    :goto_e
    new-instance v0, Ljava/lang/String;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_f
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v6, v1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v6

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v3, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v6, v3}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    const-string v3, "YW1GMllTNXNZVzVuTGxOMGNtbHVadw"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, "WVdR"

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_f

    nop

    nop

    :goto_18
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_19
    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v6, v1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v6

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

    :goto_1b
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

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

    :goto_1c
    new-array v2, v5, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v6, v3}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v6

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_21
    new-instance v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v6

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

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

    :goto_24
    const v0, 0x10

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_25
    invoke-virtual {v6, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_26
    return-object v0

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_28
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v6

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_29
    aput-object p0, v2, v4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_0

    nop

    nop

    :goto_2d
    new-instance v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2e
    const/4 v5, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2f
    invoke-virtual {v6, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v6

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_30
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v6

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
.end method

.method private static native h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static ia(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    check-cast p0, Landroid/content/Context;

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    nop

    nop

    if-eqz v0, :cond_0

    nop

    const-string v1, "S9ruyKL9-p_L-WBYiu3HjA=="

    nop

    invoke-static {v1}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    new-instance v1, Ljava/io/ObjectInputStream;

    nop

    nop

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    sput-object v2, Lcom/android/app/Application;->a:Ljava/lang/Object;

    nop

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    const v1, 0xb

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

    :goto_6
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

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    const v0, 0xa

    nop

    nop

    goto/32 :goto_5

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

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop
.end method

.method public static ib(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lcom/android/app/Application;->ic(Ljava/lang/Object;)V

    :catchall_0
    :cond_0
    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    const-string v1, "Zbnw86aM5Y3X1xhMo-nYvw=="

    nop

    nop

    invoke-static {v1}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    nop

    if-eqz v0, :cond_0

    nop

    new-instance v1, Ljava/io/ObjectInputStream;

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    nop

    sput-object v2, Lcom/android/app/Application;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1a

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_b
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop
.end method

.method public static ic(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

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

    :goto_3
    goto/32 :goto_4

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p0, Landroid/content/Context;

    nop

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    const-string v1, "conG5djo9qrWjm923IjonA=="

    nop

    invoke-static {v1}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    nop

    nop

    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/io/ObjectInputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    sput-object v2, Lcom/android/app/Application;->c:Ljava/lang/Object;

    nop

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop
.end method

.method private static native j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static k(Ljava/io/File;)J
    .locals 7

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    nop

    nop

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-wide v2

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    const v0, 0x1f

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

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    return-wide v5

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v2

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v2, 0x2000

    nop

    nop

    nop

    :try_start_2
    new-array v2, v2, [B

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    nop

    nop

    nop

    move v4, v3

    nop

    nop

    nop

    const/4 v5, -0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v3, v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/32 :goto_b

    nop

    nop

    :goto_e
    goto :goto_f

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v3

    nop

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v2

    nop
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1a

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    new-instance v0, Ljava/util/zip/CRC32;

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
.end method
