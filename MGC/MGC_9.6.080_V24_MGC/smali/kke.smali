.class public final Lkke;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkki;


# instance fields
.field private final a:Lkkj;

.field private final b:Ljava/util/Map;

.field private final c:Lgkg;


# direct methods
.method public constructor <init>(Lkkj;Ljava/util/Map;Lgkg;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lkke;->b:Ljava/util/Map;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p3, p0, Lkke;->c:Lgkg;

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

    :goto_2
    iput-object p1, p0, Lkke;->a:Lkkj;

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

    :goto_3
    return-void

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lozg;)Lpck;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkke;->a:Lkkj;

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
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lkkj;->a(Lozg;)Lpck;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b(Lozg;Lpnx;)Lphj;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkke;->a:Lkkj;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Lkkj;->b(Lozg;Lpnx;)Lphj;

    move-result-object p0

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final c(Lozg;Lpnx;Z)Ljava/util/Map;
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lkkj;->c(Lozg;Lpnx;Z)Ljava/util/Map;

    move-result-object p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_f

    nop

    nop

    :goto_3
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    const-class v1, Llhv;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2}, Lgkg;->a(Lnne;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v2, v0, v3}, Lglj;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    :goto_b
    const v1, 0x1c

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v2, Lglj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lkke;->c:Lgkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lkke;->a:Lkkj;

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

    :goto_f
    if-nez p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v2, Lnne;->l:Lnne;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    return-object v0

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    :goto_16
    const/4 v3, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    invoke-static {v1, v2}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Lkke;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop
.end method
