.class final Lnzb;
.super Ldvd;
.source "PG"


# instance fields
.field final synthetic a:Lnzc;


# direct methods
.method public constructor <init>(Lnzc;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ldvd;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lnzb;->a:Lnzc;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lnzc;->h()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lnzc;->p:Z

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

    :goto_2
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lnzb;->a:Lnzc;

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

    :goto_4
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-super {p0, p1, p2}, Ldvd;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_7

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lnzb;->a:Lnzc;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final c(Landroid/view/View;Ldxb;)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lnzc;->h()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lnzc;->p:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnzb;->a:Lnzc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2, p1}, Ldxb;->l(Ljava/lang/CharSequence;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iget-boolean p1, p1, Lnzc;->q:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lnzb;->a:Lnzc;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2, p0}, Ldxb;->k(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-super {p0, p1, p2}, Ldvd;->c(Landroid/view/View;Ldxb;)V

    goto/32 :goto_a

    nop

    nop

    :goto_9
    invoke-virtual {p2, p1}, Ldxb;->j(Z)V

    goto/32 :goto_2

    nop

    nop

    :goto_a
    iget-object p1, p0, Lnzb;->a:Lnzc;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
