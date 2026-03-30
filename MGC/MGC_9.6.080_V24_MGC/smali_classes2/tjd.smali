.class final Ltjd;
.super Ltje;
.source "PG"


# instance fields
.field final synthetic a:Ltjj;

.field private b:I

.field private final c:I


# direct methods
.method public constructor <init>(Ltjj;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ltjj;->d()I

    move-result p1

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
    invoke-direct {p0}, Ltje;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Ltjd;->c:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ltjd;->a:Ltjj;

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

    :goto_4
    iput v0, p0, Ltjd;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    const/4 v0, 0x0

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
.end method


# virtual methods
.method public final a()B
    .locals 2

    goto/32 :goto_14

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

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Ltjj;->b(I)B

    move-result p0

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

    :goto_2
    throw p0

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v1, v0, 0x1

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

    :goto_5
    const v1, 0x15

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    iput v1, p0, Ltjd;->b:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lt v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v1, p0, Ltjd;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Ltjd;->a:Ltjj;

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    new-instance p0, Ljava/util/NoSuchElementException;

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

    :goto_f
    goto/32 :goto_3

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v0, p0, Ltjd;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    return p0

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    :goto_14
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final hasNext()Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    if-lt v0, p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p0, p0, Ltjd;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iget v0, p0, Ltjd;->b:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
