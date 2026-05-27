.class public final Lmfe;
.super Ljava/lang/Object;

# interfaces
.implements Lahc;


# instance fields
.field final synthetic a:Lcom/google/android/material/appbar/AppBarLayout;

.field final synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 0

    iput-object p1, p0, Lmfe;->a:Lcom/google/android/material/appbar/AppBarLayout;

    iput-boolean p2, p0, Lmfe;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lmfe;->a:Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean v0, p0, Lmfe;->b:Z

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->i(Z)V

    const/4 p1, 0x1

    return p1
.end method
