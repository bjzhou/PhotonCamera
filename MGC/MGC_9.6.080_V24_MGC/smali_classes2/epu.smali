.class public final Lepu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lepu;


# instance fields
.field public final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    sput-object v0, Lepu;->a:Lepu;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-static {v0}, Landroidx/wear/ambient/SharedLibraryVersion;->b(Ljava/util/Map;)Lepu;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lepu;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lepu;->b:Ljava/util/Map;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

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

    :goto_4
    iget-object p1, p1, Lepu;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/HashMap;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lepu;->b:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static final a([B)Lepu;
    .locals 13

    goto/32 :goto_1e

    nop

    nop

    :goto_0
    if-le v1, v2, :cond_0

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
    goto/32 :goto_26

    nop

    nop

    :goto_1
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/IllegalStateException;

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

    nop

    :goto_3
    new-instance p0, Lepu;

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

    :goto_4
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    const/16 v2, 0x2800

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    new-array v3, p0, [B

    nop

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayInputStream;->read([B)I

    const/4 v4, 0x0

    nop

    nop

    nop

    aget-byte v5, v3, v4

    nop

    nop

    nop

    const/16 v6, -0x54

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    if-ne v5, v6, :cond_1

    nop

    aget-byte v3, v3, v7

    nop

    const/16 v5, -0x13

    nop

    nop

    nop

    nop

    nop

    if-ne v3, v5, :cond_1

    nop

    nop

    nop

    nop

    move v3, v7

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    move v3, v4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->reset()V

    const/4 v5, 0x0

    nop

    nop

    nop

    if-eqz v3, :cond_7

    nop

    nop

    new-instance p0, Ljava/io/ObjectInputStream;

    nop

    nop

    nop

    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    nop

    nop

    nop

    :goto_a
    if-ge v4, v2, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    :goto_d
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_2
    invoke-static {p0, v5}, Lrkm;->s(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, v1}, Lepu;-><init>(Ljava/util/Map;)V

    :goto_10
    goto/32 :goto_18

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    :goto_13
    sget-object p0, Lepu;->a:Lepu;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_14
    new-instance v1, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    sget-object v2, Lepv;->a:Ljava/lang/String;

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

    :goto_16
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    :goto_1c
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x1e

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "Data cannot occupy more than 10240 bytes when serialized"

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

    :goto_20
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    :goto_23
    goto :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object p0, Lcom/google/android/apps/camera/jni/gyro/xfsr/FACWQLkhP;->EGMtpp:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v2, p0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :cond_5
    const-string p0, "Magic number doesn\'t match: "

    nop

    nop

    nop

    invoke-static {v2, p0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    invoke-static {v3, p0}, Lrkm;->s(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_24
    sget-object v2, Lepv;->a:Ljava/lang/String;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

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

    :goto_26
    if-eqz v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_6
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v2

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    throw v2

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v3

    nop

    :try_start_7
    invoke-static {p0, v2}, Lrkm;->s(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    nop

    nop

    nop

    nop

    :cond_7
    new-instance v3, Ljava/io/DataInputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    nop

    nop

    nop

    nop

    nop

    const/16 v6, -0x5411

    nop

    nop

    if-ne v2, v6, :cond_5

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    nop

    nop

    nop

    nop

    if-ne v2, v7, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    nop

    nop

    nop

    move v6, v4

    nop

    nop

    :goto_28
    if-ge v6, v2, :cond_1f

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    nop

    nop

    if-nez v8, :cond_8

    nop

    nop

    nop

    move-object v8, v5

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    :cond_8
    if-ne v8, v7, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    nop

    :cond_9
    if-ne v8, p0, :cond_a

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    nop

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    :cond_a
    const/4 v9, 0x3

    nop

    if-ne v8, v9, :cond_b

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    nop

    nop

    nop

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    nop

    :cond_b
    const/4 v9, 0x4

    nop

    if-ne v8, v9, :cond_c

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    nop

    nop

    nop

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    :cond_c
    const/4 v9, 0x5

    nop

    nop

    nop

    nop

    if-ne v8, v9, :cond_d

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v8

    nop

    nop

    nop

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_d
    const/4 v9, 0x6

    nop

    nop

    nop

    nop

    nop

    if-ne v8, v9, :cond_e

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v8

    nop

    nop

    nop

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    nop

    goto/16 :goto_30

    nop

    nop

    nop

    :cond_e
    const/4 v9, 0x7

    nop

    nop

    nop

    nop

    nop

    if-ne v8, v9, :cond_f

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    :cond_f
    const/16 v9, 0x8

    nop

    nop

    nop

    nop

    if-ne v8, v9, :cond_11

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    nop

    nop

    new-array v9, v8, [Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    move v10, v4

    nop

    :goto_29
    if-ge v10, v8, :cond_10

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v11

    nop

    nop

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    nop

    nop

    nop

    nop

    aput-object v11, v9, v10

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v10, v10, 0x1

    nop

    goto :goto_29

    nop

    nop

    nop

    :cond_10
    move-object v8, v9

    nop

    nop

    check-cast v8, Ljava/io/Serializable;

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_11
    const/16 v9, 0x9

    nop

    nop

    if-ne v8, v9, :cond_13

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    new-array v9, v8, [Ljava/lang/Byte;

    nop

    nop

    move v10, v4

    nop

    :goto_2a
    if-ge v10, v8, :cond_12

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    nop

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    aput-object v11, v9, v10

    nop

    nop

    add-int/lit8 v10, v10, 0x1

    nop

    goto :goto_2a

    nop

    :cond_12
    move-object v8, v9

    nop

    check-cast v8, Ljava/io/Serializable;

    nop

    goto/16 :goto_30

    nop

    nop

    :cond_13
    const/16 v9, 0xa

    nop

    nop

    nop

    nop

    if-ne v8, v9, :cond_15

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    nop

    nop

    new-array v9, v8, [Ljava/lang/Integer;

    nop

    move v10, v4

    nop

    nop

    nop

    nop

    :goto_2b
    if-ge v10, v8, :cond_14

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    nop

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    nop

    nop

    aput-object v11, v9, v10

    nop

    nop

    nop

    add-int/lit8 v10, v10, 0x1

    nop

    goto :goto_2b

    nop

    nop

    :cond_14
    move-object v8, v9

    nop

    nop

    nop

    check-cast v8, Ljava/io/Serializable;

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    :cond_15
    const/16 v9, 0xb

    nop

    nop

    nop

    nop

    nop

    if-ne v8, v9, :cond_17

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    new-array v9, v8, [Ljava/lang/Long;

    nop

    move v10, v4

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-ge v10, v8, :cond_16

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    nop

    nop

    nop

    nop

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    nop

    aput-object v11, v9, v10

    nop

    nop

    add-int/lit8 v10, v10, 0x1

    nop

    goto :goto_2c

    nop

    :cond_16
    move-object v8, v9

    nop

    nop

    nop

    check-cast v8, Ljava/io/Serializable;

    nop

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :cond_17
    const/16 v9, 0xc

    nop

    nop

    if-ne v8, v9, :cond_19

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    nop

    new-array v9, v8, [Ljava/lang/Float;

    nop

    move v10, v4

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-ge v10, v8, :cond_18

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v11

    nop

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    nop

    aput-object v11, v9, v10

    nop

    nop

    nop

    nop

    add-int/lit8 v10, v10, 0x1

    nop

    goto :goto_2d

    nop

    nop

    nop

    nop

    :cond_18
    move-object v8, v9

    nop

    nop

    nop

    check-cast v8, Ljava/io/Serializable;

    nop

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    nop

    :cond_19
    const/16 v9, 0xd

    nop

    nop

    nop

    nop

    nop

    if-ne v8, v9, :cond_1b

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    new-array v9, v8, [Ljava/lang/Double;

    nop

    nop

    nop

    move v10, v4

    nop

    :goto_2e
    if-ge v10, v8, :cond_1a

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v11

    nop

    nop

    nop

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    nop

    nop

    nop

    aput-object v11, v9, v10

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_2e

    nop

    :cond_1a
    move-object v8, v9

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Ljava/io/Serializable;

    nop

    nop

    nop

    goto :goto_30

    nop

    nop

    :cond_1b
    const/16 v9, 0xe

    nop

    nop

    if-ne v8, v9, :cond_1e

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    nop

    new-array v9, v8, [Ljava/lang/String;

    nop

    nop

    move v10, v4

    nop

    nop

    nop

    :goto_2f
    if-ge v10, v8, :cond_1d

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    const-string v12, "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d"

    nop

    nop

    invoke-static {v11, v12}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    nop

    nop

    nop

    if-ne v7, v12, :cond_1c

    nop

    nop

    nop

    nop

    move-object v11, v5

    nop

    :cond_1c
    aput-object v11, v9, v10

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v10, v10, 0x1

    nop

    goto :goto_2f

    nop

    nop

    nop

    nop

    :cond_1d
    move-object v8, v9

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Ljava/io/Serializable;

    nop

    :goto_30
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto/16 :goto_28

    nop

    nop

    nop

    nop

    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Unsupported type "

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8, v2}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_1f
    :try_start_9
    invoke-static {v3, v5}, Lrkm;->s(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_0

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string v0, "Error in Data#fromByteArray: "

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

    :goto_32
    array-length v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_33
    goto/16 :goto_21

    nop

    nop

    :catch_1
    move-exception p0

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
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
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

    nop

    :goto_2
    iget-object p0, p0, Lepu;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    instance-of p1, p0, Ljava/lang/String;

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

    :goto_5
    return-object p0

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
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Ljava/lang/String;

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final c()Ljava/util/Map;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-object p0, p0, Lepu;->b:Ljava/util/Map;

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
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    iget-object p0, p0, Lepu;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, p1, Lepu;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1
    if-eq p0, p1, :cond_0

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

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    if-ne v4, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    :goto_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x9

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

    nop

    nop

    :goto_6
    if-nez v4, :cond_2

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_3f

    nop

    :cond_3
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_9
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v4, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    :goto_b
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v4, p0, Lepu;->b:Ljava/util/Map;

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_d
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    if-eqz v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v2, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_12
    goto :goto_b

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v3, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v5, v3}, Lrkm;->aP([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v2, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    :goto_18
    check-cast p1, Lepu;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_19
    instance-of v5, v4, [Ljava/lang/Object;

    nop

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

    nop

    :goto_1a
    check-cast v5, [Ljava/lang/Object;

    nop

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

    :goto_1b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_1c
    return v0

    nop

    nop

    :goto_1d
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

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

    :goto_20
    goto :goto_2e

    nop

    :goto_21
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_23
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_28

    nop

    :goto_27
    iget-object v5, p1, Lepu;->b:Ljava/util/Map;

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

    nop

    :goto_28
    goto/32 :goto_32

    nop

    :goto_29
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v3, :cond_7

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_7
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2c
    move-object v5, v4

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_31
    return v1

    nop

    :goto_32
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_33
    instance-of v6, v3, [Ljava/lang/Object;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v6, :cond_8

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_8
    goto/32 :goto_14

    nop

    nop

    :goto_35
    return v0

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v2, p0, Lepu;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz v3, :cond_9

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

    :cond_9
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3a
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3b
    if-eqz v3, :cond_a

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

    :cond_a
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_1d

    nop

    :goto_3f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v5, :cond_b

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 4

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    :goto_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    instance-of v3, v2, [Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x20

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

    :goto_9
    check-cast v2, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    xor-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_c
    if-nez v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    goto :goto_5

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return v0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_17
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_18
    invoke-static {v2}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v2

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1a
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

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

    :goto_1b
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    goto/32 :goto_3

    nop

    nop

    :goto_1d
    check-cast v1, Ljava/util/Map$Entry;

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

    :goto_1e
    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1f
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_20
    iget-object p0, p0, Lepu;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    :goto_3
    invoke-static/range {v1 .. v7}, Lrkm;->aK(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILubk;I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lepu;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const v0, 0x3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v6, Lua;->q:Lua;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

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

    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string p0, "}"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    const-string v1, "Data {"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    const v1, 0x12

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    const/16 v7, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_3

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

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
