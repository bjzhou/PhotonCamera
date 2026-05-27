.class final Lmgm;
.super Latc;


# instance fields
.field final synthetic b:Lmgp;


# direct methods
.method public constructor <init>(Lmgp;)V
    .locals 0

    iput-object p1, p0, Lmgm;->b:Lmgp;

    invoke-direct {p0}, Latc;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lmgm;->b:Lmgp;

    iget-object v0, v0, Lmgp;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lacv;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lmgm;->b:Lmgp;

    iget-object v1, v0, Lmgp;->b:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lmgp;->d:[I

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-static {p1, v0}, Lacv;->f(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method
