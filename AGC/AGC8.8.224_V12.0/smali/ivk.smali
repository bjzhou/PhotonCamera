.class final Livk;
.super Laei;


# instance fields
.field final synthetic a:Livl;


# direct methods
.method public constructor <init>(Livl;)V
    .locals 0

    iput-object p1, p0, Livk;->a:Livl;

    invoke-direct {p0}, Laei;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Laei;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p1, p0, Livk;->a:Livl;

    invoke-virtual {p1}, Livl;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Livk;->a:Livl;

    iget-boolean p1, p1, Livl;->g:Z

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public final b(Landroid/view/View;Lagt;)V
    .locals 0

    invoke-super {p0, p1, p2}, Laei;->b(Landroid/view/View;Lagt;)V

    iget-object p1, p0, Livk;->a:Livl;

    invoke-virtual {p1}, Livl;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lagt;->i(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Livk;->a:Livl;

    iget-boolean p1, p1, Livl;->h:Z

    invoke-virtual {p2, p1}, Lagt;->g(Z)V

    iget-object p1, p0, Livk;->a:Livl;

    iget-boolean p1, p1, Livl;->g:Z

    invoke-virtual {p2, p1}, Lagt;->h(Z)V

    return-void
.end method
