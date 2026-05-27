.class final Lmgd;
.super Lmfy;


# instance fields
.field final synthetic a:Lmgf;


# direct methods
.method public constructor <init>(Lmgf;)V
    .locals 0

    iput-object p1, p0, Lmgd;->a:Lmgf;

    invoke-direct {p0}, Lmfy;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lmgd;->a:Lmgf;

    invoke-virtual {p1}, Lmgf;->cancel()V

    :cond_0
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 0

    return-void
.end method
