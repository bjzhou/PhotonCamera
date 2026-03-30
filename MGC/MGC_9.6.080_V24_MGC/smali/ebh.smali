.class final Lebh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Leau;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Leaf;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lebh;->b:Leaf;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Leah;->b(Ljava/lang/Class;)Leaf;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Leah;->a:Leah;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    iput-object p1, p0, Lebh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Leaw;Leap;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, p1, p2, p0}, Leaf;->a(Ljava/util/List;Leaw;Leap;Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, v0, Leaf;->a:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iget-object v0, p0, Lebh;->b:Leaf;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, p1, p2, p0}, Leaf;->a(Ljava/util/List;Leaw;Leap;Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v1, Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lebh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    :goto_d
    sget-object v1, Leap;->ON_ANY:Leap;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_10
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    check-cast v0, Ljava/util/List;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, v0, Leaf;->a:Ljava/util/Map;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xb

    nop

    goto/32 :goto_1

    nop

    nop
.end method
