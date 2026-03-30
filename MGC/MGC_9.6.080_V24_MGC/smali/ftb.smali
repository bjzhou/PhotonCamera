.class public abstract Lftb;
.super Lfsu;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final a:Landroid/view/View;

.field public final b:Landroidx/wear/ambient/AmbientDelegate;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lftb;->b:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-direct {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Landroid/view/View;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lftb;->a:Landroid/view/View;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lfsu;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final c()Lfsm;
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_9

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "You must not call setTag() on a view Glide is targeting"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lfsm;

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

    :goto_d
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    :goto_e
    instance-of v0, p0, Lfsm;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lftb;->a:Landroid/view/View;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    const v0, 0x7f0b01f0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final f(Lfsm;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lftb;->a:Landroid/view/View;

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

    :goto_1
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7f0b01f0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public final j(Lfss;)V
    .locals 3

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0, v1}, Lfss;->e(II)V

    goto/32 :goto_10

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Lfta;-><init>(Landroidx/wear/ambient/AmbientDelegate;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->S()I

    move-result v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lfta;

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

    nop

    :goto_7
    if-eqz p1, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Landroidx/wear/ambient/AmbientDelegate;->V(II)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lftb;->b:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_13
    iput-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    :goto_18
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    nop

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

    nop

    :goto_1d
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_1e
    const v1, 0x2

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

    :goto_1f
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->T()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_20
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_21
    const v0, 0x13

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(Lfss;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3

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

    :goto_2
    iget-object p0, p0, Lftb;->b:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "Target for: "

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lftb;->a:Landroid/view/View;

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

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
