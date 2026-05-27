.class public final Lmfc;
.super Laei;


# instance fields
.field final synthetic a:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)V
    .locals 0

    iput-object p1, p0, Lmfc;->a:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    invoke-direct {p0}, Laei;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Lagt;)V
    .locals 0

    invoke-super {p0, p1, p2}, Laei;->b(Landroid/view/View;Lagt;)V

    iget-object p1, p0, Lmfc;->a:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    iget-boolean p1, p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->b:Z

    invoke-virtual {p2, p1}, Lagt;->n(Z)V

    const-class p1, Landroid/widget/ScrollView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lagt;->i(Ljava/lang/CharSequence;)V

    return-void
.end method
