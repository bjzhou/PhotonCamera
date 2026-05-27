.class public final Lcom/google/android/material/progressindicator/CircularProgressIndicator;
.super Lmil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040131

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const v0, 0x7f1507c6

    invoke-direct {p0, p1, p2, p3, v0}, Lmil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->a:Lmim;

    check-cast p2, Lmit;

    new-instance p3, Lmjc;

    new-instance v0, Lmin;

    invoke-direct {v0, p2}, Lmin;-><init>(Lmit;)V

    new-instance v1, Lmis;

    invoke-direct {v1, p2}, Lmis;-><init>(Lmit;)V

    invoke-direct {p3, p1, p2, v0, v1}, Lmjc;-><init>(Landroid/content/Context;Lmim;Lmja;Lmjb;)V

    invoke-virtual {p0, p3}, Lmil;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->a:Lmim;

    check-cast p2, Lmit;

    new-instance p3, Lmiv;

    new-instance v0, Lmin;

    invoke-direct {v0, p2}, Lmin;-><init>(Lmit;)V

    invoke-direct {p3, p1, p2, v0}, Lmiv;-><init>(Landroid/content/Context;Lmim;Lmja;)V

    invoke-virtual {p0, p3}, Lmil;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Lmim;
    .locals 1

    new-instance v0, Lmit;

    invoke-direct {v0, p1, p2}, Lmit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method
