.class final Lhfa;
.super Landroid/content/pm/ResolveInfo;


# instance fields
.field final synthetic a:Lhfb;

.field final synthetic b:I


# direct methods
.method public constructor <init>(Lhfb;I)V
    .locals 0

    iput-object p1, p0, Lhfa;->a:Lhfb;

    iput p2, p0, Lhfa;->b:I

    invoke-direct {p0}, Landroid/content/pm/ResolveInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object p1, p0, Lhfa;->a:Lhfb;

    iget v0, p0, Lhfa;->b:I

    sget-object v1, Lchf;->a:Lchf;

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lhfb;->b:Landroid/content/Context;

    const v0, 0x7f0803f5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, Lhfb;->b:Landroid/content/Context;

    const v0, 0x7f0803f3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1

    iget p1, p0, Lhfa;->b:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lhfa;->a:Lhfb;

    iget-object p1, p1, Lhfb;->b:Landroid/content/Context;

    const v0, 0x7f140257

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lhfa;->a:Lhfb;

    iget-object p1, p1, Lhfb;->b:Landroid/content/Context;

    const v0, 0x7f140259

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
