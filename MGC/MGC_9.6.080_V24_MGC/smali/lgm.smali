.class public final Llgm;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lgqg;

.field final synthetic b:J


# direct methods
.method public constructor <init>(Lgqg;J)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide p2, p0, Llgm;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Llgm;->a:Lgqg;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v1, Lgqg;->b:Lpnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    invoke-static {}, Lphj;->a()Lphi;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    check-cast p1, Lpck;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v1, Lphm;->a:Lphm;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Lphi;->b(Lpnx;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    :goto_7
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Lphi;->c(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    iget-wide p0, p0, Llgm;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    invoke-virtual {v0, p0, p1}, Lphi;->e(J)V

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_16

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    :goto_f
    iget-object v1, p0, Llgm;->a:Lgqg;

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
    invoke-virtual {v0, v1}, Lphi;->i(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Lphi;->o(Lphm;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, p1}, Lphi;->f(Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, p1}, Lphi;->l(Lpck;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    :goto_1a
    const/16 v1, 0x100

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lphi;->a()Lphj;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method
