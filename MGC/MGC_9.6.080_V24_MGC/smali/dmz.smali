.class final Ldmz;
.super Luci;
.source "PG"

# interfaces
.implements Lubq;


# instance fields
.field final synthetic a:Ldna;


# direct methods
.method public constructor <init>(Ldna;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const/4 p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ldmz;->a:Ldna;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    check-cast p3, Ldlc;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    iget-object p4, p0, Ldmz;->a:Ldna;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldmz;->a:Ldna;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Ldkp;

    nop

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

    :goto_5
    check-cast p4, Ldld;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p3, p1, p2}, Ldnk;-><init>(Lbrd;Ldnk;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p2, p2, Ldna;->f:Ldnk;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    iget p3, p3, Ldlc;->a:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p3, Ldnk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p4, p1, p2, p3}, Ldko;->a(Ldkp;Ldlh;I)Lbrd;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    instance-of p2, p1, Ldmc;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p1}, Lbrd;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    iget-object p4, p4, Ldna;->b:Ldko;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    check-cast p2, Ldlh;

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

    :goto_13
    check-cast p0, Landroid/graphics/Typeface;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    iget-object p2, p0, Ldmz;->a:Ldna;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    :goto_16
    iput-object p3, p0, Ldna;->f:Ldnk;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p0, Landroid/graphics/Typeface;

    nop

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_19
    new-instance p3, Ldnk;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method
