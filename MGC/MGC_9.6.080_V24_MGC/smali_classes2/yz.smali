.class final Lyz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lujq;


# instance fields
.field final synthetic a:Lbov;

.field final synthetic b:Lads;

.field final synthetic c:Lbrd;


# direct methods
.method public constructor <init>(Lbov;Lads;Lbrd;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lyz;->a:Lbov;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lyz;->c:Lbrd;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lyz;->b:Lads;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Lbrd;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lubo;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lyz;->c:Lbrd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iget-object p0, p0, Lyz;->a:Lbov;

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

    nop

    :goto_5
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, p1}, Lbov;->h(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    :goto_7
    const/4 p1, 0x0

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p2, p0, Lyz;->b:Lads;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1, v0, p2}, Lubo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Lads;->f()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p2}, Lads;->e()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop
.end method
