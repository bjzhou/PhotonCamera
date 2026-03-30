.class public abstract Lwy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;
.implements Lucv;


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_0

    nop

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

    :goto_1
    iput p1, p0, Lwy;->a:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method protected abstract a(I)Ljava/lang/Object;
.end method

.method protected abstract b(I)V
.end method

.method public final hasNext()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

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

    nop

    :goto_1
    iget v0, p0, Lwy;->b:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    :goto_4
    iget p0, p0, Lwy;->a:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    :goto_7
    const/4 p0, 0x1

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
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    add-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v1, p0, Lwy;->b:I

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
    const v1, 0x15

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    :goto_5
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

    :goto_6
    const v0, 0xd

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

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lwy;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_c
    return-object v0

    nop

    :goto_d
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Lwy;->a(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean v2, p0, Lwy;->c:Z

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    :goto_11
    goto/32 :goto_4

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

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_14
    iput v1, p0, Lwy;->b:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    iget v0, p0, Lwy;->b:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    new-instance p0, Ljava/util/NoSuchElementException;

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
.end method

.method public final remove()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lwy;->c:Z

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

    :goto_1
    invoke-static {v0}, La;->aW(Ljava/lang/String;)V

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lwy;->b:I

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

    nop

    :goto_4
    iput v0, p0, Lwy;->a:I

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

    :goto_5
    iget v0, p0, Lwy;->a:I

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

    :goto_6
    iget-boolean v0, p0, Lwy;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Lwy;->b:I

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
    add-int/lit8 v0, v0, -0x1

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

    :goto_9
    const-string v0, "Call next() before removing an element."

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Lwy;->b(I)V

    goto/32 :goto_5

    nop

    nop

    :goto_b
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop
.end method
