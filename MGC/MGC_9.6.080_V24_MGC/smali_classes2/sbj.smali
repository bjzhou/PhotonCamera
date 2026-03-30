.class final Lsbj;
.super Lryy;
.source "PG"


# instance fields
.field public final transient a:[Ljava/lang/Object;

.field public final transient b:I

.field public final transient c:I

.field private final transient d:Lryh;


# direct methods
.method public constructor <init>(Lryh;[Ljava/lang/Object;II)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lsbj;->d:Lryh;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput p3, p0, Lsbj;->b:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lryy;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lsbj;->a:[Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput p4, p0, Lsbj;->c:I

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


# virtual methods
.method public final C()Lryb;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lsbi;

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
    return-object v0

    nop

    :goto_2
    invoke-direct {v0, p0}, Lsbi;-><init>(Lsbj;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x11

    nop

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

    :goto_5
    iget-object p0, p0, Lsbj;->d:Lryh;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

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

    :goto_a
    return p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    :goto_c
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Ljava/util/Map$Entry;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    instance-of v0, p1, Ljava/util/Map$Entry;

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

    :goto_10
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_12

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

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

    nop

    :goto_15
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method

.method public final em()Lscp;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lryb;->t()Lscq;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrxq;->v()Lryb;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop
.end method

.method public final en()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lsbj;->em()Lscp;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final size()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lsbj;->c:I

    nop

    nop

    goto/32 :goto_1

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

    nop
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Lryy;->writeReplace()Ljava/lang/Object;

    move-result-object p0

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
.end method

.method public final x([Ljava/lang/Object;I)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lrxq;->x([Ljava/lang/Object;I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrxq;->v()Lryb;

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

    nop

    :goto_2
    return p0

    nop

    nop
.end method
