.class final Lnhp;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lufs;

.field final synthetic b:Lubo;

.field final synthetic c:Lnnf;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lbgp;

.field final synthetic f:Laed;


# direct methods
.method public constructor <init>(Lufs;Lubo;Lnnf;Landroid/view/View;Lbgp;Laed;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lnhp;->c:Lnnf;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Lnhp;->d:Landroid/view/View;

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

    :goto_2
    iput-object p2, p0, Lnhp;->b:Lubo;

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Lnhp;->e:Lbgp;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lnhp;->a:Lufs;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p6, p0, Lnhp;->f:Laed;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 7

    goto/32 :goto_16

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iget-object p0, p0, Lnhp;->d:Landroid/view/View;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    iget-object v1, p0, Lnhp;->c:Lnnf;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v3, v1, v6, v2}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    goto/32 :goto_12

    nop

    nop

    :goto_a
    new-instance v6, Letq;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Lnhp;->c:Lnnf;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v3, p0, Lnhp;->f:Laed;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct/range {v0 .. v5}, Letq;-><init>(Lbgp;Lnnf;Laed;Ltzy;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1a

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

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    move-object v0, v6

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lnhp;->b:Lubo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lnhp;->a:Lufs;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x1

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

    :goto_16
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_17
    iget-object v1, p0, Lnhp;->e:Lbgp;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1b
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v0, v1, v2}, Lubo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_1e
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x6

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

    nop
.end method
