.class public final Ltek;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    :goto_1
    goto/32 :goto_1a

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    const/4 v4, 0x6

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    :goto_5
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    :try_start_0
    const-string v3, "[._]"

    nop

    const/4 v4, 0x3

    nop

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    nop

    nop

    aget-object v4, v3, v1

    nop

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    if-ne v4, v5, :cond_1

    nop

    nop

    array-length v4, v3

    nop

    nop

    nop

    nop

    nop

    if-le v4, v5, :cond_2

    nop

    nop

    nop

    nop

    aget-object v3, v3, v5

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_f

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

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    move v4, v5

    nop

    goto/32 :goto_16

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
    move v4, v2

    nop

    nop

    :goto_a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    move v4, v2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_9

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x1f

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

    :goto_13
    if-eq v4, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    nop

    if-ge v1, v4, :cond_4

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    nop

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    nop

    if-eqz v5, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    nop

    goto :goto_14

    nop

    nop

    nop

    nop

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    sput v4, Ltek;->a:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_e

    nop

    nop

    :catch_1
    goto/32 :goto_d

    nop

    nop

    :goto_17
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

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

    :goto_19
    if-eq v4, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v0, "java.version"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1b
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop
.end method

.method public static a()Z
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    if-ge v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const/16 v1, 0x9

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
    goto/32 :goto_6

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

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

    goto/32 :goto_10

    nop

    nop

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

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget v0, Ltek;->a:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop
.end method
