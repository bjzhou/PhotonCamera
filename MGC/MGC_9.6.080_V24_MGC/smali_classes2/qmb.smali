.class public final Lqmb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lqmb;->a:Ltxm;

    nop

    nop

    goto/32 :goto_0

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

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lqmb;->b()Lqod;

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

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final b()Lqod;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lqod;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ljjf;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lqmb;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, v0}, Lqoe;->x(Lrss;Ltxm;)Lqob;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    const/16 v1, 0xa

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    return-object p0

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    :goto_b
    new-instance v0, Lppz;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljjf;->b()Lrss;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_10
    invoke-direct {v0, v1}, Lppz;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
