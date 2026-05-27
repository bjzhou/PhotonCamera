.class final Liz;
.super Lkq;


# instance fields
.field final synthetic a:Ljg;

.field final synthetic b:Ljj;


# direct methods
.method public constructor <init>(Ljj;Landroid/view/View;Ljg;)V
    .locals 0

    iput-object p1, p0, Liz;->b:Ljj;

    iput-object p3, p0, Liz;->a:Ljg;

    invoke-direct {p0, p2}, Lkq;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Lhn;
    .locals 1

    iget-object v0, p0, Liz;->a:Ljg;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Liz;->b:Ljj;

    iget-object v0, v0, Ljj;->b:Lji;

    invoke-interface {v0}, Lji;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Liz;->b:Ljj;

    invoke-virtual {v0}, Ljj;->b()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
