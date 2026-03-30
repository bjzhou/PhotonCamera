.class final Lbhq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_6

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
    iput-object v0, p0, Lbhq;->b:Ljava/util/Map;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lbhq;->a:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lbhp;)Lbhs;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lbhs;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lbhq;->a:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final b(Lbhp;)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Lbhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lbhq;->a:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lbhp;

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    :goto_8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_6

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    iget-object v1, p0, Lbhq;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    const v0, 0x6

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

    :goto_10
    iget-object p0, p0, Lbhq;->a:Ljava/util/Map;

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

    :goto_11
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
