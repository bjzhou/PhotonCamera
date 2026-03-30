.class final Larp;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lbrd;

.field final synthetic b:Lasr;

.field final synthetic c:Lard;


# direct methods
.method public constructor <init>(Lbrd;Lasr;Lard;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Larp;->b:Lasr;

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
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Larp;->c:Lard;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iput-object p1, p0, Larp;->a:Lbrd;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static cddYUSkWBLlVgKrM(Lbrd;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lbrd;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static sXTAnhuNmHmVYhLH(Lavd;)Ludl;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lavd;->b()Ludl;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_f

    nop

    nop

    :goto_0
    invoke-static {v1}, Larp;->sXTAnhuNmHmVYhLH(Lavd;)Ludl;

    move-result-object v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    new-instance v3, Larm;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    new-instance v2, Lawm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    :goto_6
    iget-object v1, v1, Lasr;->e:Lasg;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Larh;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Larp;->cddYUSkWBLlVgKrM(Lbrd;)Ljava/lang/Object;

    move-result-object v0

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

    nop

    :goto_c
    iget-object v1, p0, Larp;->c:Lard;

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

    :goto_d
    iget-object v1, p0, Larp;->b:Lasr;

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

    :goto_e
    iget-object p0, p0, Larp;->b:Lasr;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v3, p0, v0, v1, v2}, Larm;-><init>(Lasr;Larh;Lard;Lauo;)V

    goto/32 :goto_15

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_12
    iget-object v0, p0, Larp;->a:Lbrd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    iget-object v1, v1, Lasg;->c:Lavd;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    invoke-direct {v2, v1, v0}, Lawm;-><init>(Ludl;Lato;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    return-object v3

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop
.end method
