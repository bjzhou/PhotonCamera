.class final Lddt;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lddw;

.field final synthetic b:Lubo;


# direct methods
.method public constructor <init>(Lddw;Lubo;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

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

    nop

    nop

    :goto_1
    iput-object p2, p0, Lddt;->b:Lubo;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iput-object p1, p0, Lddt;->a:Lddw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p2, Ljava/lang/Number;

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

    :goto_4
    invoke-interface {p1}, Lblm;->H()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    goto :goto_1

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

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

    :goto_9
    iget-object p0, p0, Lddt;->b:Lubo;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    and-int/lit8 p2, p2, 0x3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    invoke-static {p2, p0, p1, v0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a(Lcxv;Lubo;Lblm;I)V

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    if-eq p2, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p2, p2, Lddw;->a:Lcxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p1, Lblm;

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

    :goto_11
    iget-object p2, p0, Lddt;->a:Lddw;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1}, Lblm;->s()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
