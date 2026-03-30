.class final Lcqi;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lcqj;


# direct methods
.method public constructor <init>(Lcqj;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcqi;->a:Lcqj;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p2, 0x7

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcqi;->a:Lcqj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v1, Lcou;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4
    move-object p2, v1

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

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p2, p1, Lcou;->c:Lcqm;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_a
    iget-object p2, p1, Lcth;->v:Lcou;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    iput-object p2, v0, Lcqj;->b:Lcou;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lcqj;->a()Lcou;

    move-result-object p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lcqi;->a:Lcqj;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p1, Lcou;->a:Lcth;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lcqj;->a()Lcou;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_10
    invoke-static {p1, p0, p2}, Lcth;->av(Lcth;ZI)V

    :goto_11
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    :goto_14
    check-cast p2, Lcqj;

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

    :goto_15
    if-ne p2, p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_16
    const v1, 0xa

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

    :goto_17
    iget-object p2, v0, Lcqj;->a:Lcqm;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Lcou;->h()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    if-eqz p2, :cond_2

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

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v1, p1, p2}, Lcou;-><init>(Lcth;Lcqm;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lcqj;->a:Lcqm;

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

    :goto_1e
    iput-object v1, p1, Lcth;->v:Lcou;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1f
    iget-object p1, p0, Lcqi;->a:Lcqj;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_21
    check-cast p1, Lcth;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    iput-object p0, p1, Lcou;->c:Lcqm;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_23
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1, p0}, Lcou;->j(Z)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x18

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method
