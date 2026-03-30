.class public final Lsen;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lsen;->a:Ljava/util/Locale;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

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

    :goto_2
    return-void

    nop
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/RuntimeException;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Lsen;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    :try_start_0
    const-string p0, "null"

    nop

    goto/16 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    move-object p0, v0

    nop

    nop

    nop

    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    const-string v0, "toString() returned null"

    nop

    nop

    invoke-static {p0, v0}, Lsen;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    instance-of v0, p0, [I

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    check-cast v0, [I

    nop

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_2

    nop

    :cond_3
    instance-of v0, p0, [J

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    check-cast v0, [J

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    nop

    goto/16 :goto_2

    nop

    :cond_4
    instance-of v0, p0, [B

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    move-object v0, p0

    nop

    nop

    nop

    check-cast v0, [B

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    nop

    goto/16 :goto_2

    nop

    nop

    nop

    :cond_5
    instance-of v0, p0, [C

    nop

    nop

    if-eqz v0, :cond_6

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    check-cast v0, [C

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/16 :goto_2

    nop

    :cond_6
    instance-of v0, p0, [S

    nop

    nop

    nop

    if-eqz v0, :cond_7

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    check-cast v0, [S

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_7
    instance-of v0, p0, [F

    nop

    nop

    nop

    if-eqz v0, :cond_8

    nop

    nop

    move-object v0, p0

    nop

    check-cast v0, [F

    nop

    nop

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    :cond_8
    instance-of v0, p0, [D

    nop

    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    check-cast v0, [D

    nop

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    :cond_9
    instance-of v0, p0, [Z

    nop

    if-eqz v0, :cond_a

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    check-cast v0, [Z

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    :cond_a
    move-object v0, p0

    nop

    check-cast v0, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, v0}, Lsen;->a(Ljava/lang/Object;Ljava/lang/RuntimeException;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

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

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static c(Ljava/lang/StringBuilder;JZ)V
    .locals 5

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v0, p3, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_1f

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

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5
    const-wide/16 v3, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    and-long/2addr v1, v3

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

    :goto_8
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    long-to-int v1, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v0, v0, -0x4

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

    :goto_b
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

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
    const-string p3, "0123456789ABCDEF"

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    const-string p1, "0"

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_11
    rsub-int/lit8 v0, v0, 0x3f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    cmp-long v0, p1, v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    :goto_14
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    :goto_18
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_d

    nop

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1b
    and-int/lit8 v0, v0, -0x4

    nop

    nop

    :goto_1c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1f
    const-string p3, "0123456789abcdef"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_20
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_21
    const v0, 0x5

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_22
    ushr-long v1, p1, v0

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

    :goto_23
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-gez v0, :cond_3

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop
.end method

.method private static d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p0, ": "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_8

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

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    const-string v2, "{"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

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

    :goto_e
    goto/32 :goto_7

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_a

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

    goto/32 :goto_13

    nop

    nop

    :goto_12
    const-string v0, "@"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    const v0, 0xb

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
    goto/32 :goto_f

    nop
.end method
