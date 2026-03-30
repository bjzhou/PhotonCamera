.class public abstract Lsig;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final e:Lsig;

.field public static final f:Lsig;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_0
    sget-object v2, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->vFCyXzWZaKjquB:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lsif;

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
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5
    const-string v2, "base64Url()"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    new-instance v1, Lsia;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v2, v3, v1}, Lsif;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lsig;->f:Lsig;

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

    :goto_a
    const/16 v1, 0x3d

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lsib;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v1}, Lsib;-><init>(Lsia;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lsif;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, v2, v3, v1}, Lsif;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v2, "base64()"

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    new-instance v0, Lsic;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_15
    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_16
    const-string v2, "base16()"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    invoke-direct {v1, v2, v3}, Lsia;-><init>(Ljava/lang/String;[C)V

    goto/32 :goto_e

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_1b
    sput-object v0, Lsig;->e:Lsig;

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

    :goto_1c
    const v1, 0xf

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, v2, v3, v1}, Lsic;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v3, "0123456789ABCDEF"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0, v2, v3, v1}, Lsic;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_22
    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

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

    :goto_23
    const-string v2, "base32()"

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x13

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_25
    new-instance v0, Lsic;

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

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public abstract a([BLjava/lang/CharSequence;)I
.end method

.method public abstract b(Ljava/lang/Appendable;[BI)V
.end method

.method public abstract c(I)I
.end method

.method public abstract d(I)I
.end method

.method public e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final g([B)Ljava/lang/String;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const v1, 0x8

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    new-instance p1, Ljava/lang/AssertionError;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    array-length v0, p1

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

    :goto_5
    return-object p0

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_1

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

    goto/32 :goto_12

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Lsig;->d(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

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

    :goto_d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :try_start_0
    invoke-virtual {p0, v1, p1, v0}, Lsig;->b(Ljava/lang/Appendable;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_7

    nop

    nop

    :goto_e
    invoke-static {v1, v0, v0}, Lrrf;->w(III)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Ljava/lang/CharSequence;)[B
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    :goto_2
    :try_start_0
    invoke-virtual {p0, p1}, Lsig;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    nop

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lsig;->c(I)I

    move-result v0

    nop

    new-array v1, v0, [B

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1, p1}, Lsig;->a([BLjava/lang/CharSequence;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    :cond_0
    new-array p1, p0, [B

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    invoke-static {v1, v0, p1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lsid; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_6

    nop

    nop

    :goto_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

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
    add-int v0, v0, v1

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

    :goto_9
    const v0, 0x9

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
    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object v1

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
