.class public final Lddj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lbpv;


# direct methods
.method public constructor <init>(Landroid/view/View;Lbpv;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lddj;->b:Lbpv;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lddj;->a:Landroid/view/View;

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


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lbpv;->u()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lddj;->b:Lbpv;

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

    :goto_4
    iget-object p1, p0, Lddj;->a:Landroid/view/View;

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
