.class final Ltef;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltet;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p1, p0, Ltef;->a:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ltes;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :pswitch_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Ljava/util/TreeMap;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    :pswitch_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_1b

    nop

    nop

    :goto_8
    new-instance p0, Ljava/util/ArrayDeque;

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

    :goto_9
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :pswitch_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p0, Ljava/util/TreeSet;

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

    :goto_f
    new-instance p0, Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_d

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
    .end packed-switch

    :goto_15
    new-instance p0, Ljava/util/LinkedHashMap;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    iget p0, p0, Ltef;->a:I

    nop

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0}, Ltes;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance p0, Ljava/util/concurrent/ConcurrentSkipListMap;

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

    :goto_1a
    new-instance p0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance p0, Ljava/util/LinkedHashSet;

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
