.class public abstract Ltze;
.super Ltyr;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ltyr;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public abstract a(Ljava/util/Map$Entry;)Z
.end method

.method public bridge b(Ljava/util/Map$Entry;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    instance-of v0, p1, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Ltze;->a(Ljava/util/Map$Entry;)Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
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

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Ltze;->b(Ljava/util/Map$Entry;)Z

    move-result p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    instance-of v0, p1, Ljava/util/Map$Entry;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Ljava/util/Map$Entry;

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
