.class final Lmha;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field final synthetic a:Lmhb;


# direct methods
.method public constructor <init>(Lmhb;)V
    .locals 0

    iput-object p1, p0, Lmha;->a:Lmhb;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmha;->a:Lmhb;

    return-object v0
.end method
