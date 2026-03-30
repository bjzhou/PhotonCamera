.class public final Ltkd;
.super Ltkb;
.source "PG"

# interfaces
.implements Ltlr;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Ltke;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public final au()Ltke;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Ltke;->m:Ltjx;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Ltke;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0}, Ltkb;->j()Ltkg;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Ltke;

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

    :goto_9
    check-cast v0, Ltke;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p0, Ltke;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ltjx;->e()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    iget-object v0, p0, Ltkd;->b:Ltkg;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final av(Ltlk;Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    check-cast p2, Ltkj;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2
    const v1, 0x1c

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Ltke;->m:Ltjx;

    nop

    nop

    :goto_4
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v1, v0, Ltjx;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_7
    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1b

    nop

    :goto_b
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p1, Ltlk;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Ltkd;->b:Ltkg;

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_e
    iget-object v1, p0, Ltkb;->a:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v1, Ltmy;->h:Ltmy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Ltkf;->a()Ltmy;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

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

    :goto_16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, p0, p2}, Ltjx;->l(Ltkf;Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x19

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    iget-object v0, v0, Ltke;->m:Ltjx;

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

    :goto_1a
    goto/32 :goto_10

    nop

    nop

    :goto_1b
    goto/32 :goto_20

    nop

    nop

    :goto_1c
    check-cast p0, Ltkf;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_1e
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Ltkd;->b:Ltkg;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v0, Ltkg;->aU:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_23
    const-string p1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_24
    if-eq v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Ltjx;->c()Ltjx;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p1, Ltlk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_27
    check-cast v0, Ltke;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_28
    check-cast p0, Ltke;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {p2}, Ltkj;->a()I

    move-result p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2b
    if-eq p1, v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic j()Ltkg;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltkd;->au()Ltke;

    move-result-object p0

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

.method public final bridge synthetic m()Ltlq;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltkd;->au()Ltke;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final o()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Ltjx;->a:Ltjx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    :goto_2
    invoke-super {p0}, Ltkb;->o()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-object v0, p0, Ltkd;->b:Ltkg;

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

    :goto_4
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    check-cast p0, Ltke;

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

    :goto_8
    iput-object v0, p0, Ltke;->m:Ltjx;

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Ltke;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ltjx;->c()Ltjx;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    iget-object v0, v0, Ltke;->m:Ltjx;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Ltke;->m:Ltjx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method
