.class public final Llgr;
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

    nop

    :goto_1
    iput-object p1, p0, Llgr;->a:Ltxm;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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

    :goto_0
    invoke-virtual {p0}, Llgr;->b()Ljava/lang/Long;

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
.end method

.method public final b()Ljava/lang/Long;
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    const-wide/16 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    iget-object p0, p0, Llgr;->a:Ltxm;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lgvd;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    const-wide/16 v0, 0x2

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    :goto_9
    if-ne v0, p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-boolean p0, p0, Lgqg;->J:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_8

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lgvd;->b()Lgqg;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    const v0, 0x1

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

    :goto_14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop
.end method
