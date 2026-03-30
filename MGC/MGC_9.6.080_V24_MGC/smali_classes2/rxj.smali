.class public final Lrxj;
.super Lrvb;
.source "PG"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient d:I


# direct methods
.method private 0cf909ba289622071a1fdd6b27800b52m(Ljava/io/ObjectOutputStream;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lrgw;->t(Lsak;Ljava/io/ObjectOutputStream;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method private 7c317c59441d6cc7b89965a9c204159bm(Ljava/io/ObjectInputStream;)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, v0}, Lrgw;->r(Lsak;Ljava/io/ObjectInputStream;I)V

    goto/32 :goto_7

    nop

    nop

    :goto_1
    new-instance v1, Lrvu;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_5
    const v0, 0x1a

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x13

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Lrxj;->d:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v1}, Lrur;->m(Ljava/util/Map;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    invoke-direct {v1, v2}, Lrvu;-><init>(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v2, 0xc

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

    :goto_12
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v1}, La;->au(Z)V

    goto/32 :goto_f

    nop

    nop

    :goto_2
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const/16 v1, 0xc

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

    :goto_4
    invoke-direct {p0, v0}, Lrvb;-><init>(Ljava/util/Map;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Lrxj;->d:I

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

    :goto_6
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    :goto_d
    invoke-direct {v0, v1}, Lrvu;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    :goto_f
    iput v0, p0, Lrxj;->d:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lrvu;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/util/Collection;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lrvw;

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

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lrxj;->d:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Lrvw;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method
