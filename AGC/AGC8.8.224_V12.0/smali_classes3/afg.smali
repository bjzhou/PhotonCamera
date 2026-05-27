.class final Lafg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field final synthetic a:Laew;


# direct methods
.method public constructor <init>(Landroid/view/View;Laew;)V
    .locals 0

    iput-object p2, p0, Lafg;->a:Laew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-static {p2, p1}, Lago;->n(Landroid/view/WindowInsets;Landroid/view/View;)Lago;

    move-result-object p2

    iget-object v0, p0, Lafg;->a:Laew;

    invoke-interface {v0, p1, p2}, Laew;->a(Landroid/view/View;Lago;)Lago;

    move-result-object p1

    invoke-virtual {p1}, Lago;->e()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
