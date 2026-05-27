.class public final Liie;
.super Laei;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laei;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Lagt;)V
    .locals 0

    invoke-super {p0, p1, p2}, Laei;->b(Landroid/view/View;Lagt;)V

    const-class p1, Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lagt;->i(Ljava/lang/CharSequence;)V

    return-void
.end method
