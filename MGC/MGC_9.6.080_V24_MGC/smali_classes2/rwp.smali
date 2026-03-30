.class public final Lrwp;
.super Lrua;
.source "PG"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient c:Ljava/lang/Class;


# direct methods
.method private 0cf909ba289622071a1fdd6b27800b52m(Ljava/io/ObjectOutputStream;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrwp;->c:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lrgw;->s(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method private 7c317c59441d6cc7b89965a9c204159bm(Ljava/io/ObjectInputStream;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xb

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

    :goto_3
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lrwp;->c:Ljava/lang/Class;

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

    :goto_a
    invoke-virtual {p0, v0, v1}, Lrua;->i(Ljava/util/Map;Ljava/util/Map;)V

    goto/32 :goto_14

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    goto/32 :goto_16

    nop

    nop

    :goto_c
    invoke-static {p0, p1, v0}, Lrgw;->q(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    goto/32 :goto_10

    nop

    nop

    :goto_d
    new-instance v0, Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    new-instance v1, Ljava/util/HashMap;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    check-cast v0, Ljava/lang/Class;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_15
    iput-object v0, p0, Lrwp;->c:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/EnumMap;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_c

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const v1, 0x7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    invoke-direct {p0, v0, v1}, Lrua;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    goto/32 :goto_e

    nop

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
    goto/32 :goto_2

    nop

    nop

    :goto_d
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lrwp;->c:Ljava/lang/Class;

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

    :goto_f
    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Ljava/lang/Enum;

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

    :goto_1
    return-object p1

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Lrua;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_1
    check-cast p1, Ljava/lang/Enum;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object p0

    nop
.end method
