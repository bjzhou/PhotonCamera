.class final Lhmc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field final synthetic a:Lhmd;


# direct methods
.method public constructor <init>(Lhmd;)V
    .locals 0

    iput-object p1, p0, Lhmc;->a:Lhmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 2

    iget-object p1, p0, Lhmc;->a:Lhmd;

    iget-object p1, p1, Lhmd;->a:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    iget-object v0, p0, Lhmc;->a:Lhmd;

    iget v1, v0, Lhmd;->c:I

    xor-int/2addr p1, v1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, v0, Lhmd;->b:Z

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lhmd;->e()V

    :cond_1
    return-void
.end method
