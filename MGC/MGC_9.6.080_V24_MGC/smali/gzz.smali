.class final Lgzz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lndc;


# instance fields
.field final synthetic a:Lhab;


# direct methods
.method public constructor <init>(Lhab;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lgzz;->a:Lhab;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p1, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    iget-object p0, p0, Lgzz;->a:Lhab;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lnne;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b()I

    move-result v0

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

    :goto_6
    iget-object v0, p0, Lgzz;->a:Lhab;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lhab;->e()V

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p1, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    if-nez p2, :cond_1

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

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_c
    iget-object p1, p1, Lqwy;->d:Ljava/lang/Object;

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

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Lhab;->i(Lnne;)V

    goto/32 :goto_d

    nop

    nop

    :goto_f
    check-cast p1, Lqwy;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lgzz;->a:Lhab;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    invoke-virtual {v0, p1}, Lhab;->l(Lnne;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final b(Z)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-interface {p1, v0}, Lndu;->j(Z)V

    goto/32 :goto_8

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-object p1, p0, Lhab;->f:Lndu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Lglm;->m(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x2

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

    :goto_6
    invoke-interface {p1, v0}, Lngo;->K(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lgzz;->a:Lhab;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Lhab;->g:Lngo;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lhab;->b:Lglm;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lhab;->d:Ljdc;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Ljdc;->j(I)V

    :goto_d
    goto/32 :goto_1

    nop

    nop
.end method
