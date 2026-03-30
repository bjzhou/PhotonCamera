.class final Loam;
.super Llc;
.source "PG"


# instance fields
.field final synthetic c:Loan;


# direct methods
.method public constructor <init>(Loan;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Loam;->c:Loan;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Llc;-><init>(Lld;)V

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
.end method


# virtual methods
.method public final c(Landroid/view/View;Ldxb;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    invoke-virtual {p2, p1}, Ldxb;->m(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ldxa;->a()I

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    sget-object v0, Ldxa;->e:Ldxa;

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

    :goto_3
    invoke-virtual {p2, p1}, Ldxb;->r(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    sget-object p1, Ldxa;->e:Ldxa;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Loam;->c:Loan;

    nop

    nop

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

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-super {p0, p1, p2}, Llc;->c(Landroid/view/View;Ldxb;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2, p1}, Ldxb;->G(Ldxa;)V

    goto/32 :goto_b

    nop

    nop

    :goto_b
    new-instance p1, Ldxa;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Loan;->h:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2, p1}, Ldxb;->g(Ldxa;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p1, v0, p0}, Ldxa;-><init>(ILjava/lang/CharSequence;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final i(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    invoke-super {p0, p1, p2, p3}, Llc;->i(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Loam;->c:Loan;

    nop

    nop

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

    :goto_3
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Loak;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    const/16 v0, 0x10

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Loak;->a()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    if-eq p2, v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

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

    nop

    :goto_c
    goto :goto_6

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ad:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Loan;->b:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    :goto_12
    return p0

    nop
.end method
