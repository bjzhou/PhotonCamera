.class public abstract Lqka;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final c:I

.field public final d:Lqgr;

.field public final e:I


# direct methods
.method protected constructor <init>(ILqgr;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lqka;->c:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput p3, p0, Lqka;->e:I

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput-object p2, p0, Lqka;->d:Lqgr;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static varargs b([F)Lqka;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0}, Lqka;->d([FI)Lqka;

    move-result-object p0

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
    return-object p0

    nop

    :goto_2
    const/4 v0, 0x2

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

.method public static varargs c([F)Lqka;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-static {p0, v0}, Lqka;->d([FI)Lqka;

    move-result-object p0

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

    :goto_2
    const/4 v0, 0x4

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

.method private static d([FI)Lqka;
    .locals 8

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_1
    new-instance v0, Lqjz;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v1, v0, p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    array-length v0, p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_9

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

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

    :goto_b
    div-int v3, v0, p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    move-object v7, p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct/range {v2 .. v7}, Lqjz;-><init>(ILqgr;II[F)V

    goto/32 :goto_d

    nop

    nop

    :goto_10
    sget-object v4, Lqhd;->h:Lqgt;

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

    :goto_11
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    if-eqz v1, :cond_1

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    move-object v2, v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v1}, La;->au(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_17
    move v6, p1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_18
    move v5, p1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a(ILjava/nio/ByteBuffer;)V
.end method
