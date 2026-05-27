.class final Leok;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic a:Lbgj;

.field final synthetic b:Lbgj;

.field final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lbgj;Lbgj;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Leok;->a:Lbgj;

    iput-object p2, p0, Leok;->b:Lbgj;

    iput-object p3, p0, Leok;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Leok;->a:Lbgj;

    invoke-virtual {p1}, Lbgj;->g()V

    iget-object p1, p0, Leok;->b:Lbgj;

    invoke-virtual {p1}, Lbgj;->g()V

    iget-object p1, p0, Leok;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
