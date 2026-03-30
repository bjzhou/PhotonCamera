.class final Law;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lax;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lucs;


# direct methods
.method public constructor <init>(Lax;Landroid/view/ViewGroup;Ljava/lang/Object;Lucs;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p2, p0, Law;->b:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Law;->a:Lax;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Law;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Law;->d:Lucs;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 6

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v0, Lax;->d:Lcx;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v3, p0, Law;->d:Lucs;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v3, 0x2e

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x20

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lax;->c:Lde;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, " for container "

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    iget-object v0, v0, Lax;->b:Lde;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string p0, "Unable to start transition "

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    invoke-static {v3, v0, v2, p0, v1}, La;->bm(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Law;->b:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v2, v3}, Lcx;->s(Landroid/view/ViewGroup;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1c

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v3, p0, Law;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Law;->a:Lax;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v3, v1, Lax;->g:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Law;->a:Lax;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    throw v0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Law;->a:Lax;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1f
    iget-object v2, p0, Law;->b:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    iput-object v4, v3, Lucs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_22
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v4, v1, v2, v0, v5}, Lav;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v4, Lav;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v2, p0, Law;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_26
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_27
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v1, v0, Lax;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_29
    iget-object v0, p0, Law;->a:Lax;

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

    :goto_2a
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_11

    nop

    :goto_2c
    invoke-static {v0}, Lcj;->T(I)Z

    move-result v0

    nop

    goto/32 :goto_16

    nop

    nop
.end method
