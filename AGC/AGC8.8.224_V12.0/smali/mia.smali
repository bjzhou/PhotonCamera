.class public final Lmia;
.super Laei;


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/NavigationMenuItemView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/NavigationMenuItemView;)V
    .locals 0

    iput-object p1, p0, Lmia;->a:Lcom/google/android/material/internal/NavigationMenuItemView;

    invoke-direct {p0}, Laei;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Lagt;)V
    .locals 0

    invoke-super {p0, p1, p2}, Laei;->b(Landroid/view/View;Lagt;)V

    iget-object p1, p0, Lmia;->a:Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-boolean p1, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->c:Z

    invoke-virtual {p2, p1}, Lagt;->g(Z)V

    return-void
.end method
