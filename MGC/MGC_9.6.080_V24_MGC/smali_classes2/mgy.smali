.class public final Lmgy;
.super Lmgl;
.source "PG"


# instance fields
.field final synthetic e:Lmhb;


# direct methods
.method public constructor <init>(Lmhb;Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmgy;->e:Lmhb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, p2}, Lmgl;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super/range {p0 .. p5}, Lmgl;->onLayout(ZIIII)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lmhb;->z:Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lner;->b()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lmhb;->r:Lner;

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

    :goto_8
    iget-boolean p1, p0, Lmhb;->b:Z

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    const/4 p1, 0x0

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

    nop

    :goto_a
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lmhb;->r:Lner;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p2, Llyr;->ac:Llze;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lmgy;->e:Lmhb;

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

    :goto_10
    invoke-virtual {p0, p1}, Lner;->a(Z)V

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop
.end method
