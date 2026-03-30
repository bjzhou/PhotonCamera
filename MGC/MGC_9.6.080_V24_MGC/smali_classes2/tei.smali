.class final Ltei;
.super Ltdx;
.source "PG"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ltdj;

.field final synthetic c:Lthm;

.field final synthetic d:Ltej;

.field private volatile e:Ltdx;


# direct methods
.method public constructor <init>(Ltej;ZLtdj;Lthm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Ltei;->c:Lthm;

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
    iput-boolean p2, p0, Ltei;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltei;->d:Ltej;

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
    iput-object p3, p0, Ltei;->b:Ltdj;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ltdx;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lthn;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Ltei;->e:Ltdx;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_9
    iget-object v2, p0, Ltei;->c:Lthm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ltei;->b:Ltdj;

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

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Lthn;->q()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1, v2}, Ltdj;->c(Ltdy;Lthm;)Ltdx;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    iput-object v0, p0, Ltei;->e:Ltdx;

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p1}, Ltdx;->a(Lthn;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Ltei;->d:Ltej;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-boolean v0, p0, Ltei;->a:Z

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method
