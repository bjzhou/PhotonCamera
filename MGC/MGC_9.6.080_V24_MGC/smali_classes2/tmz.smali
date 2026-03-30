.class public final Ltmz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    :goto_0
    sput v0, Ltmz;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    :goto_2
    sput v0, Ltmz;->b:I

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

    :goto_3
    invoke-static {v2, v0}, Ltmz;->c(II)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v2}, Ltmz;->c(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    sput v2, Ltmz;->a:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    invoke-static {v1, v2}, Ltmz;->c(II)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    :goto_12
    invoke-static {v0, v1}, Ltmz;->c(II)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    sput v0, Ltmz;->d:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x2

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

    :goto_15
    const/4 v0, 0x0

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

    :goto_16
    const v1, 0xe

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public static a(I)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    ushr-int/lit8 p0, p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public static b(I)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    and-int/lit8 p0, p0, 0x7

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static c(II)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    shl-int/lit8 p0, p0, 0x3

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

    :goto_2
    or-int/2addr p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
