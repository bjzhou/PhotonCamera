.class final Lawq;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lucs;


# direct methods
.method public constructor <init>(Lucs;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lawq;->a:Lucs;

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
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lawq;->a:Lucs;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    iput-object v0, p0, Lucs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x18

    nop

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

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p1, Lcwg;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    aput-object p1, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    new-array v0, v0, [Lavn;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lucs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_12
    goto :goto_1c

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    sget-object p0, Lcwf;->b:Lcwf;

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

    :goto_15
    check-cast p1, Laxc;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p1, Laxc;->a:Lavn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0}, Lrkm;->ag([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
