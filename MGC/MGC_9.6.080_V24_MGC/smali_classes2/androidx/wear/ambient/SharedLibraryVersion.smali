.class public final Landroidx/wear/ambient/SharedLibraryVersion;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

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

.method public static final a(Lepu;)[B
    .locals 18

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    nop

    nop

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_2a

    nop

    nop

    :goto_2
    move-object v2, v0

    nop

    nop

    :try_start_1
    invoke-static {v3, v1}, Lrkm;->s(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    nop

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

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

    nop

    :goto_3
    const-string v9, "Unsupported value type "

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    goto/32 :goto_28

    nop

    nop

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_9

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

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_2
    const-string v0, "Data cannot occupy more than 10240 bytes when serialized"

    nop

    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

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

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    const v0, 0x20

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

    :goto_e
    sget-object v1, Lepv;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    new-array v0, v1, [B

    nop

    :goto_11
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_12
    if-nez v8, :cond_2

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

    :cond_2
    :try_start_3
    check-cast v5, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    nop

    nop

    sget v10, Luct;->a:I

    nop

    new-instance v10, Lucb;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v10, v8}, Lucb;-><init>(Ljava/lang/Class;)V

    const-class v8, [Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    new-instance v11, Lucb;

    nop

    nop

    nop

    invoke-direct {v11, v8}, Lucb;-><init>(Ljava/lang/Class;)V

    invoke-static {v10, v11}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    nop

    nop

    const/16 v11, 0xd

    nop

    nop

    nop

    nop

    nop

    const/16 v12, 0xc

    nop

    nop

    nop

    nop

    nop

    const/16 v13, 0xb

    nop

    const/16 v14, 0xa

    nop

    nop

    nop

    nop

    nop

    const/16 v15, 0x9

    nop

    const/16 v4, 0x8

    nop

    nop

    if-eqz v8, :cond_3

    nop

    nop

    nop

    nop

    nop

    move v1, v4

    nop

    nop

    nop

    nop

    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :cond_3
    const-class v8, [Ljava/lang/Byte;

    nop

    nop

    nop

    new-instance v1, Lucb;

    nop

    invoke-direct {v1, v8}, Lucb;-><init>(Ljava/lang/Class;)V

    invoke-static {v10, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    move v1, v15

    nop

    nop

    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_4
    const-class v1, [Ljava/lang/Integer;

    nop

    nop

    new-instance v8, Lucb;

    nop

    nop

    nop

    invoke-direct {v8, v1}, Lucb;-><init>(Ljava/lang/Class;)V

    invoke-static {v10, v8}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    move v1, v14

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :cond_5
    const-class v1, [Ljava/lang/Long;

    nop

    nop

    nop

    nop

    new-instance v8, Lucb;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8, v1}, Lucb;-><init>(Ljava/lang/Class;)V

    invoke-static {v10, v8}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    move v1, v13

    nop

    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_6
    const-class v1, [Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    new-instance v8, Lucb;

    nop

    invoke-direct {v8, v1}, Lucb;-><init>(Ljava/lang/Class;)V

    invoke-static {v10, v8}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    move v1, v12

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    :cond_7
    const-class v1, [Ljava/lang/Double;

    nop

    nop

    nop

    new-instance v8, Lucb;

    nop

    nop

    nop

    nop

    invoke-direct {v8, v1}, Lucb;-><init>(Ljava/lang/Class;)V

    invoke-static {v10, v8}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    if-eqz v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    move v1, v11

    nop

    goto :goto_13

    nop

    :cond_8
    const-class v1, [Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    new-instance v8, Lucb;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8, v1}, Lucb;-><init>(Ljava/lang/Class;)V

    invoke-static {v10, v8}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_1e

    nop

    nop

    const/16 v1, 0xe

    nop

    nop

    :goto_13
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    array-length v8, v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v9, 0x0

    nop

    nop

    :goto_14
    if-ge v9, v8, :cond_1d

    nop

    nop

    aget-object v10, v5, v9

    nop

    if-ne v1, v4, :cond_b

    nop

    nop

    nop

    nop

    nop

    instance-of v4, v10, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_9

    nop

    nop

    nop

    check-cast v10, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    :cond_9
    move-object v10, v6

    nop

    nop

    nop

    :goto_15
    if-eqz v10, :cond_a

    nop

    nop

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    goto :goto_16

    nop

    :cond_a
    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto/16 :goto_22

    nop

    nop

    :cond_b
    if-ne v1, v15, :cond_e

    nop

    nop

    nop

    nop

    instance-of v4, v10, Ljava/lang/Byte;

    nop

    nop

    if-eqz v4, :cond_c

    nop

    check-cast v10, Ljava/lang/Byte;

    nop

    nop

    nop

    nop

    nop

    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_c
    move-object v10, v6

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v10, :cond_d

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    nop

    goto :goto_18

    nop

    :cond_d
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_e
    if-ne v1, v14, :cond_11

    nop

    instance-of v4, v10, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_f

    nop

    nop

    check-cast v10, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_f
    move-object v10, v6

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v10, :cond_10

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    goto :goto_1a

    nop

    nop

    nop

    nop

    :cond_10
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_22

    nop

    nop

    :cond_11
    if-ne v1, v13, :cond_14

    nop

    nop

    nop

    nop

    instance-of v4, v10, Ljava/lang/Long;

    nop

    if-eqz v4, :cond_12

    nop

    nop

    nop

    nop

    nop

    check-cast v10, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto :goto_1b

    nop

    :cond_12
    move-object v10, v6

    nop

    nop

    nop

    :goto_1b
    if-eqz v10, :cond_13

    nop

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    nop

    nop

    goto :goto_1c

    nop

    :cond_13
    const-wide/16 v16, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-wide/from16 v13, v16

    nop

    nop

    nop

    invoke-virtual {v3, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_14
    if-ne v1, v12, :cond_17

    nop

    instance-of v13, v10, Ljava/lang/Float;

    nop

    nop

    if-eqz v13, :cond_15

    nop

    nop

    nop

    check-cast v10, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto :goto_1d

    nop

    :cond_15
    move-object v10, v6

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v10, :cond_16

    nop

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    nop

    nop

    nop

    goto :goto_1e

    nop

    nop

    nop

    :cond_16
    const/4 v10, 0x0

    nop

    nop

    :goto_1e
    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_22

    nop

    nop

    nop

    nop

    :cond_17
    if-ne v1, v11, :cond_1a

    nop

    nop

    nop

    nop

    nop

    instance-of v13, v10, Ljava/lang/Double;

    nop

    nop

    if-eqz v13, :cond_18

    nop

    nop

    nop

    nop

    check-cast v10, Ljava/lang/Double;

    nop

    nop

    nop

    goto :goto_1f

    nop

    :cond_18
    move-object v10, v6

    nop

    :goto_1f
    if-eqz v10, :cond_19

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    nop

    goto :goto_20

    nop

    nop

    :cond_19
    const-wide/16 v13, 0x0

    nop

    nop

    :goto_20
    invoke-virtual {v3, v13, v14}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_22

    nop

    nop

    nop

    nop

    :cond_1a
    instance-of v13, v10, Ljava/lang/String;

    nop

    nop

    nop

    nop

    if-eqz v13, :cond_1b

    nop

    nop

    nop

    nop

    nop

    check-cast v10, Ljava/lang/String;

    nop

    nop

    nop

    goto :goto_21

    nop

    nop

    nop

    :cond_1b
    move-object v10, v6

    nop

    :goto_21
    const-string v13, "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d"

    nop

    nop

    nop

    if-nez v10, :cond_1c

    nop

    move-object v10, v13

    nop

    nop

    :cond_1c
    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_22
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    const/16 v4, 0x8

    nop

    nop

    nop

    const/16 v13, 0xb

    nop

    nop

    nop

    nop

    nop

    const/16 v14, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :cond_1d
    :goto_23
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v1, 0x0

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    new-instance v2, Lucb;

    nop

    nop

    invoke-direct {v2, v1}, Lucb;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2}, Ludp;->b()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v9, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    sget v2, Luct;->a:I

    nop

    nop

    new-instance v2, Lucb;

    nop

    nop

    nop

    invoke-direct {v2, v1}, Lucb;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2}, Ludp;->c()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :cond_1f
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->size()I

    move-result v0

    nop

    nop

    nop

    const/16 v1, 0x2800

    nop

    nop

    nop

    if-gt v0, v1, :cond_1

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v3, v6}, Lrkm;->s(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object v1, v0

    nop

    nop

    :try_start_5
    throw v1

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

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

    :goto_26
    const-string v2, "Error in Data#toByteArray: "

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_27
    return-object v0

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2a
    const/4 v1, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2b
    const/16 v4, -0x5411

    nop

    nop

    nop

    nop

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x1

    nop

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v5, v0, Lepu;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    nop

    nop

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, v0, Lepu;->b:Ljava/util/Map;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    if-eqz v5, :cond_1f

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Ljava/util/Map$Entry;

    nop

    nop

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Ljava/lang/String;

    nop

    nop

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    if-nez v5, :cond_20

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_20
    instance-of v8, v5, Ljava/lang/Boolean;

    nop

    nop

    if-eqz v8, :cond_21

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v5, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    nop

    nop

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto/16 :goto_23

    nop

    nop

    :cond_21
    instance-of v8, v5, Ljava/lang/Byte;

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_22

    nop

    nop

    nop

    const/4 v6, 0x2

    nop

    nop

    nop

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v5, Ljava/lang/Number;

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    move-result v5

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto/16 :goto_23

    nop

    nop

    nop

    nop

    :cond_22
    instance-of v8, v5, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_23

    nop

    nop

    nop

    const/4 v6, 0x3

    nop

    nop

    nop

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v5, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    nop

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_23

    nop

    :cond_23
    instance-of v8, v5, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_24

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v5, Ljava/lang/Number;

    nop

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    nop

    nop

    invoke-virtual {v3, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto/16 :goto_23

    nop

    nop

    :cond_24
    instance-of v8, v5, Ljava/lang/Float;

    nop

    if-eqz v8, :cond_25

    nop

    nop

    const/4 v6, 0x5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v5, Ljava/lang/Number;

    nop

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    nop

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto/16 :goto_23

    nop

    nop

    :cond_25
    instance-of v8, v5, Ljava/lang/Double;

    nop

    if-eqz v8, :cond_26

    nop

    nop

    nop

    nop

    const/4 v6, 0x6

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v5, Ljava/lang/Number;

    nop

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    nop

    invoke-virtual {v3, v5, v6}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_26
    instance-of v8, v5, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_27

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x7

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto/16 :goto_23

    nop

    nop

    nop

    nop

    :cond_27
    instance-of v8, v5, [Ljava/lang/Object;

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final b(Ljava/util/Map;)Lepu;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lepu;-><init>(Ljava/util/Map;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    new-instance v0, Lepu;

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
    return-object v0

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Landroidx/wear/ambient/SharedLibraryVersion;->a(Lepu;)[B

    goto/32 :goto_2

    nop

    nop
.end method

.method public static final c(Ljava/util/Map;Ljava/util/Map;)V
    .locals 7

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-class v3, [Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_1
    sget-object v3, Lepv;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_2
    invoke-direct {v4, v3}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v4, v3}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    if-eqz v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v4, Lucb;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_ba

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_8
    const-class v5, [I

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_9
    invoke-direct {v3, v5}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_58

    nop

    nop

    :goto_a
    invoke-static {v2, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    invoke-direct {v4, v3}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_c
    new-instance v3, Lucb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

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

    :goto_e
    new-instance v4, Lucb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_f
    check-cast v0, [F

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_10
    array-length v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_11
    invoke-static {v2, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_15
    invoke-static {v2, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    if-eqz v3, :cond_1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v2, Lucb;

    nop

    nop

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

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_2
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v3, :cond_3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v3, v4}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v4, v3}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_11

    nop

    nop

    :goto_1e
    aget-wide v5, v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_1f
    invoke-static {v2, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

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

    :goto_20
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    invoke-direct {v3, v5}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v4, v4, 0x1

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

    :goto_24
    const-class v3, [Ljava/lang/Float;

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v2, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v3, v5}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_28
    if-lt v4, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_92

    nop

    nop

    :goto_29
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v3, Lepv;->a:Ljava/lang/String;

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_2f
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_30
    throw p0

    nop

    :goto_31
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const-class v3, [Ljava/lang/Long;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_33
    const-class v3, [Ljava/lang/Double;

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_34
    if-lez v0, :cond_7

    nop

    goto/32 :goto_b2

    nop

    :cond_7
    goto/32 :goto_b1

    nop

    :goto_35
    new-array v3, v2, [Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v3, :cond_8

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v2, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_39
    new-instance v4, Lucb;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v4, v3}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_a

    nop

    nop

    :goto_3b
    array-length v2, v0

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_3c
    const v0, 0x3

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v4, Lucb;

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_d8

    nop

    nop

    :goto_40
    aput-object v5, v3, v4

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_44
    sget-object v3, Lepv;->a:Ljava/lang/String;

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_45
    invoke-direct {v4, v3}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_46
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_48
    new-instance v4, Lucb;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_49
    new-instance v3, Lucb;

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

    nop

    :goto_4a
    if-lt v4, v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const-class v3, [Ljava/lang/Byte;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_4c
    invoke-static {v2, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_4d
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_4e
    if-nez v3, :cond_a

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_50
    check-cast v0, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_51
    move-object v0, v3

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_52
    if-nez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    :cond_b
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_53
    new-array v3, v2, [Ljava/lang/Integer;

    nop

    nop

    :goto_54
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-eqz v3, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_c
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_56
    aput-object v5, v3, v4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_57
    if-lt v4, v2, :cond_d

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_d
    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_58
    invoke-static {v2, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_59
    invoke-direct {v4, v3}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-lt v4, v2, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5c
    new-instance v4, Lucb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5d
    aget v5, v0, v4

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_b4

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_61
    new-array v3, v2, [Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_68

    nop

    nop

    :goto_63
    add-int/lit8 v4, v4, 0x1

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

    :goto_64
    const-class v4, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    aput-object v5, v3, v4

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_66
    array-length v2, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-eqz v3, :cond_f

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-lt v4, v2, :cond_10

    nop

    goto/32 :goto_7

    nop

    :cond_10
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-direct {v4, v3}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_6b
    if-eqz v0, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_11
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-static {v2, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

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

    nop

    nop

    :goto_6d
    invoke-static {v2, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez v3, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_50

    nop

    nop

    :goto_6f
    new-instance v4, Lucb;

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    const-class v5, [B

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_71
    goto/16 :goto_54

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    check-cast v0, [Z

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

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

    :goto_75
    new-instance v4, Lucb;

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_76
    check-cast v0, [D

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    rem-int v0, v0, v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_78
    const-class v5, [D

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_79
    sget-object v3, Lepv;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_7a
    check-cast v0, [I

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_7c
    new-instance v4, Lucb;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    const-class v3, [Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_c9

    nop

    nop

    :goto_7f
    new-instance v4, Lucb;

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_80
    if-eqz v3, :cond_13

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v2, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_82
    const-class v5, [J

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

    :goto_83
    if-eqz v3, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_84
    aput-object v5, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_85
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_86
    const-class v5, [F

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_87
    invoke-static {v2, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_88
    invoke-static {v2, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_89
    if-eqz v3, :cond_15

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_8a
    add-int v0, v0, v1

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    if-nez v3, :cond_16

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :cond_16
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_8c
    new-array v3, v2, [Ljava/lang/Byte;

    nop

    nop

    :goto_8d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    check-cast v1, Ljava/lang/String;

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

    nop

    :goto_8f
    invoke-static {v2, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_90
    aget v5, v0, v4

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

    :goto_91
    invoke-direct {v3, v4}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_6c

    nop

    nop

    :goto_92
    aget-byte v5, v0, v4

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_93
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_95
    invoke-direct {v4, v3}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_96
    new-instance v3, Lucb;

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_97
    goto/16 :goto_cc

    nop

    :goto_98
    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_99
    aget-wide v5, v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_9a
    new-instance v3, Lucb;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_9b
    new-instance v3, Lucb;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_9d
    if-eqz v3, :cond_17

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    new-instance v3, Lucb;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-static {v2, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_a0
    invoke-direct {v4, v3}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    const-string v0, " has invalid type "

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_a3
    check-cast v0, [J

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

    :goto_a4
    if-nez v3, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    const-string v0, "Key "

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    array-length v2, v0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_a8
    invoke-static {v2, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_a9
    aput-object v5, v3, v4

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_aa
    new-instance v3, Lucb;

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_ab
    if-eqz v3, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_24

    nop

    nop

    :goto_ac
    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-direct {v3, v5}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_a8

    nop

    nop

    :goto_ae
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    array-length v2, v0

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_b0
    const-class v3, [Ljava/lang/String;

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

    nop

    :goto_b1
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    new-array v3, v2, [Ljava/lang/Double;

    nop

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_4a

    nop

    nop

    :goto_b5
    if-nez v3, :cond_1a

    nop

    goto/32 :goto_c4

    nop

    nop

    :cond_1a
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_b6
    sget-object v3, Lepv;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-static {v2, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b9
    new-array v3, v2, [Ljava/lang/Boolean;

    nop

    nop

    :goto_ba
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    array-length v2, v0

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-static {v2, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    if-eqz v3, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-static {v2, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_c0
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    new-instance v4, Lucb;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_c2
    const-class v4, [Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_c3
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :goto_c4
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-direct {v4, v3}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c6
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    aget-boolean v5, v0, v4

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    new-instance v4, Lucb;

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

    :goto_c9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_ca
    invoke-direct {v2, v3}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_cc
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-direct {v4, v3}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    return-void

    nop

    nop

    :goto_d1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_d2
    aput-object v5, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_d3
    invoke-direct {v4, v3}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-direct {v3, v5}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    sget-object v3, Lepv;->a:Ljava/lang/String;

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_d6
    new-instance v4, Lucb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d7
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    sget v2, Luct;->a:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    if-lt v4, v2, :cond_1c

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1c
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_da
    goto/16 :goto_8d

    nop

    nop

    nop

    nop

    :goto_db
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    goto/32 :goto_4

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x3

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
    const v1, 0x10

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

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

    :goto_7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "-"

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

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    const-string v0, "_"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x16

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const-string v0, "-"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    const-string v1, "_"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

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

    :goto_e
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static f(I)Ljava/lang/String;
    .locals 2

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "SET_ONE_SHOT_PREVIEW_CALLBACK"

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

    nop

    :goto_1
    const-string p0, "OPEN_CAMERA"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_6
    const-string p0, "SET_ZOOM_CHANGE_LISTENER"

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_20

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_c
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_45

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    :pswitch_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string p0, "CAPTURE_PHOTO"

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string p0, "ADD_CALLBACK_BUFFER"

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

    :goto_10
    if-ne p0, v0, :cond_1

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

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    :pswitch_2
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string p0, "START_PREVIEW_ASYNC"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    const-string p0, "SET_PREVIEW_TEXTURE_ASYNC"

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_14
    invoke-static {p0, v0, v1}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    :pswitch_4
    goto/32 :goto_6

    nop

    nop

    :goto_17
    const-string p0, "SET_PREVIEW_CALLBACK_WITH_BUFFER"

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

    :goto_18
    const-string p0, "RELEASE"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_13
        :pswitch_9
        :pswitch_c
        :pswitch_8
        :pswitch_5
        :pswitch_a
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_12
        :pswitch_3
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12d
        :pswitch_b
        :pswitch_7
        :pswitch_d
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1cd
        :pswitch_6
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne p0, v0, :cond_2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1d
    if-ne p0, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_3
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string p0, "SET_DISPLAY_ORIENTATION"

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

    nop

    :goto_1f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_21
    const/16 v0, 0x1f6

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

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_23
    return-object p0

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_24
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string p0, "SET_PREVIEW_DISPLAY_ASYNC"

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

    nop

    :goto_26
    const-string p0, "UNLOCK"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_27
    const-string p0, "REFRESH_PARAMETERS"

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_29
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2a
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string p0, "SET_AUTO_FOCUS_MOVE_CALLBACK"

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

    :goto_2d
    const-string v0, "UNKNOWN("

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2e
    const-string p0, "APPLY_SETTINGS"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2f
    const-string p0, "ENABLE_SHUTTER_SOUND"

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_30
    return-object p0

    nop

    :pswitch_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string p0, "AUTO_FOCUS"

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_32
    return-object p0

    nop

    :pswitch_9
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_33
    return-object p0

    nop

    nop

    :pswitch_a
    goto/32 :goto_5d

    nop

    nop

    :goto_34
    const-string p0, "GET_PARAMETERS"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_35
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-string p0, "SET_PARAMETERS"

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/16 v0, 0x259

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_38
    if-ne p0, v0, :cond_4

    nop

    goto/32 :goto_5a

    nop

    nop

    :cond_4
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

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

    :goto_3c
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3e
    return-object p0

    nop

    :pswitch_d
    goto/32 :goto_2c

    nop

    nop

    :goto_3f
    return-object p0

    nop

    :pswitch_e
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_40
    if-ne p0, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-ne p0, v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :cond_6
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const-string p0, "STOP_PREVIEW"

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_43
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_44
    const-string p0, "START_FACE_DETECTION"

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_46
    return-object p0

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_47
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_48
    const-string p0, "RECONNECT"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    return-object p0

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-ne p0, v0, :cond_7

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

    :cond_7
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4c
    const-string v1, ")"

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4d
    const v1, 0x3

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1f

    nop

    :goto_4f
    return-object p0

    nop

    nop

    :pswitch_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/4 v0, 0x5

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_51
    const/16 v0, 0x1f5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_52
    return-object p0

    nop

    nop

    :pswitch_12
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_53
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const-string p0, "CANCEL_AUTO_FOCUS"

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

    :goto_56
    const-string p0, "SET_FACE_DETECTION_LISTENER"

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_57
    const-string p0, "STOP_FACE_DETECTION"

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_58
    sget-object p0, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->WEOuncYwm:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_59
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_e

    nop

    nop

    :goto_5b
    const-string p0, "CANCEL_AUTO_FOCUS_FINISH"

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5c
    return-object p0

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const-string p0, "SET_PREVIEW_CALLBACK"

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
.end method

.method public static g(FII)I
    .locals 7

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    or-int/2addr p0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1
    shr-int/lit8 v5, p2, 0x8

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2
    div-float/2addr v3, v6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    and-int/lit16 v0, v0, 0xff

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_6
    shl-int/lit8 p0, p0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_7
    and-int/lit16 v3, v3, 0xff

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

    :goto_8
    mul-float/2addr p2, v6

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    div-float/2addr v0, v6

    nop

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

    nop

    :goto_d
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_e
    mul-float/2addr p1, v6

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_f
    div-float/2addr v4, v6

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_10
    invoke-static {v2}, Landroidx/wear/ambient/SharedLibraryVersion;->r(F)F

    move-result p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_13
    mul-float/2addr p0, v6

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

    :goto_14
    and-int/lit16 v4, v5, 0xff

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1}, Landroidx/wear/ambient/SharedLibraryVersion;->q(F)F

    move-result p1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    div-float/2addr p1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    shr-int/lit8 v1, p1, 0x10

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_18
    shl-int/lit8 p2, p2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1a
    and-int/lit16 p1, p1, 0xff

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

    :goto_1b
    invoke-static {v4}, Landroidx/wear/ambient/SharedLibraryVersion;->q(F)F

    move-result v4

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

    :goto_1c
    return p1

    nop

    nop

    :goto_1d
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1e
    mul-float/2addr v0, v6

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1f
    add-float/2addr p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_20
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_21
    invoke-static {v2}, Landroidx/wear/ambient/SharedLibraryVersion;->q(F)F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_22
    sub-float/2addr v4, v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_23
    div-float/2addr v2, v6

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_24
    sub-float/2addr p2, p1

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_25
    shr-int/lit8 v4, p2, 0x10

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_26
    and-int/lit16 p2, p2, 0xff

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_27
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_28
    shr-int/lit8 v2, p1, 0x8

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sub-float/2addr v4, v2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2a
    mul-float/2addr p0, p2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2b
    mul-float/2addr v4, p0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eq p1, p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    :goto_2d
    div-float/2addr p2, v6

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2e
    mul-float/2addr v4, p0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2f
    mul-float/2addr v3, p0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v4}, Landroidx/wear/ambient/SharedLibraryVersion;->q(F)F

    move-result v4

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v1}, Landroidx/wear/ambient/SharedLibraryVersion;->r(F)F

    move-result p0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_32
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {p2}, Landroidx/wear/ambient/SharedLibraryVersion;->q(F)F

    move-result p2

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

    :goto_34
    or-int/2addr p0, v0

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

    :goto_35
    invoke-static {v1}, Landroidx/wear/ambient/SharedLibraryVersion;->q(F)F

    move-result v1

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_37
    add-float/2addr v0, v3

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

    :goto_38
    int-to-float v4, v4

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

    :goto_39
    add-float/2addr v1, v4

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

    :goto_3a
    add-float/2addr v2, v4

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_3c
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3d
    and-int/lit16 v4, v4, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_3e
    sub-float/2addr v3, v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

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

    :goto_40
    shr-int/lit8 v0, p1, 0x18

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_41
    or-int/2addr p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_42
    const v1, 0x6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_43
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_44
    int-to-float p2, p2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    shr-int/lit8 v3, p2, 0x18

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_46
    div-float/2addr v1, v6

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_47
    and-int/lit16 v2, v2, 0xff

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_48
    and-int/lit16 v1, v1, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_49
    div-float/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4a
    invoke-static {p1}, Landroidx/wear/ambient/SharedLibraryVersion;->r(F)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4b
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4c
    const/high16 v6, 0x437f0000    # 255.0f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4e
    shl-int/lit8 v0, v0, 0x18

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
.end method

.method public static h(Lfew;Lezb;)Lfbz;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1b

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

    :goto_1
    new-instance v0, Lfbz;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-static {p0, p1, v1}, Landroidx/wear/ambient/SharedLibraryVersion;->o(Lfew;Lezb;Lfet;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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
    const v0, 0x8

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

    :goto_6
    invoke-direct {v0, p0}, Lfbz;-><init>(Ljava/util/List;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v1, Lfdx;->b:Lfdx;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    goto/32 :goto_1

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
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public static i(Lfew;Lezb;)Lfca;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, v0}, Landroidx/wear/ambient/SharedLibraryVersion;->j(Lfew;Lezb;Z)Lfca;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public static j(Lfew;Lezb;Z)Lfca;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lfca;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x8

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

    :goto_3
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_6
    invoke-static {}, Lffi;->a()F

    move-result p2

    nop

    nop

    nop

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

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    const v0, 0x1d

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

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    :goto_d
    return-object v0

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v1, Lfdx;->a:Lfdx;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, p0}, Lfca;-><init>(Ljava/util/List;)V

    goto/32 :goto_d

    nop

    nop

    :goto_13
    invoke-static {p0, p2, p1, v1}, Landroidx/wear/ambient/SharedLibraryVersion;->p(Lfew;FLezb;Lfet;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public static k(Lfew;Lezb;I)Lfcb;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, v1}, Landroidx/wear/ambient/SharedLibraryVersion;->o(Lfew;Lezb;Lfet;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1c

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    :goto_5
    invoke-direct {v0, p0}, Lfcb;-><init>(Ljava/util/List;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_7
    invoke-direct {v1, p2}, Lfea;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_8
    new-instance v1, Lfea;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    :goto_e
    new-instance v0, Lfcb;

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
.end method

.method public static l(Lfew;Lezb;)Lfcc;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    sget-object v1, Lfdx;->c:Lfdx;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1b

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_6
    invoke-static {p0, p1, v1}, Landroidx/wear/ambient/SharedLibraryVersion;->o(Lfew;Lezb;Lfet;)Ljava/util/List;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

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
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    new-instance v0, Lfcc;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    invoke-direct {v0, p0}, Lfcc;-><init>(Ljava/util/List;)V

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public static m(Lfew;Lezb;)Lfce;
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    sget-object v2, Lfdx;->e:Lfdx;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
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

    nop

    nop

    :goto_b
    new-instance v0, Lfce;

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
    const/4 v3, 0x1

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

    :goto_d
    invoke-static {p0, p1, v1, v2, v3}, Lfef;->a(Lfew;Lezb;FLfet;Z)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    invoke-static {}, Lffi;->a()F

    move-result v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, p0}, Lfce;-><init>(Ljava/util/List;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static n(Lfew;Lezb;)Lfcg;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v1, p1, v2}, Landroidx/wear/ambient/SharedLibraryVersion;->p(Lfew;FLezb;Lfet;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v2, Lfen;->a:Lfen;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Lfcg;-><init>(Ljava/util/List;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lfcg;

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    const v0, 0x2

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    :goto_d
    invoke-static {}, Lffi;->a()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    const v1, 0x20

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public static o(Lfew;Lezb;Lfet;)Ljava/util/List;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    const v1, 0x1d

    nop

    goto/32 :goto_0

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

    goto/32 :goto_5

    nop

    nop

    :goto_8
    const v0, 0x1c

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

    :goto_9
    return-object p0

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    const/high16 v0, 0x3f800000    # 1.0f

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

    :goto_c
    invoke-static {p0, p1, v0, p2, v1}, Lfef;->a(Lfew;Lezb;FLfet;Z)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public static p(Lfew;FLezb;Lfet;)Ljava/util/List;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p2, p1, p3, v0}, Lfef;->a(Lfew;Lezb;FLfet;Z)Ljava/util/List;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method private static q(F)F
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_10

    nop

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

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_2
    cmpg-float v0, p0, v0

    nop

    nop

    goto/32 :goto_17

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
    rem-int v0, v0, v1

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
    const v0, 0x3d6147ae    # 0.055f

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    div-float/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    const v0, 0x3d25aee6    # 0.04045f

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

    :goto_8
    const v0, 0x3f870a3d    # 1.055f

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    float-to-double v0, p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xf

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

    :goto_c
    const-wide v2, 0x4003333340000000L    # 2.4000000953674316

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

    :goto_d
    const v0, 0x414eb852    # 12.92f

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    div-float/2addr p0, v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-float/2addr p0, v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    double-to-float p0, v0

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method private static r(F)F
    .locals 4

    goto/32 :goto_1

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const v0, 0x13

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    mul-double/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x414eb852    # 12.92f

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

    :goto_8
    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    const-wide v2, -0x4053d70a40000000L    # -0.054999999701976776

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

    :goto_d
    double-to-float p0, v0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    const v1, 0x11

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    const-wide v2, 0x3ff0e147a0000000L    # 1.0549999475479126

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    cmpg-float v0, p0, v0

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

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_14
    mul-float/2addr p0, v0

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

    :goto_15
    const-wide v2, 0x3fdaaaaaa0000000L    # 0.4166666567325592

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    add-double/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    float-to-double v0, p0

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

    :goto_18
    const v0, 0x3b4d2e1c    # 0.0031308f

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public static verifySharedLibraryPresent()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x15

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
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    sget-boolean v0, Landroidx/wear/ambient/SharedLibraryVersion$PresenceHolder;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    const-string v1, "Could not find wearable shared library classes. Please add <uses-library android:name=\"com.google.android.wearable\" android:required=\"false\" /> to the application manifest"

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    :goto_9
    const v0, 0x1f

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

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop
.end method

.method public static version()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    sget v0, Landroidx/wear/ambient/SharedLibraryVersion$VersionHolder;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {}, Landroidx/wear/ambient/SharedLibraryVersion;->verifySharedLibraryPresent()V

    goto/32 :goto_1

    nop

    nop
.end method
