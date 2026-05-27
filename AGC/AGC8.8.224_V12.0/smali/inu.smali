.class Linu;
.super Lins;


# instance fields
.field final synthetic b:Linw;


# direct methods
.method public constructor <init>(Linw;)V
    .locals 0

    iput-object p1, p0, Linu;->b:Linw;

    invoke-direct {p0}, Lins;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Linu;->b:Linw;

    iget-object v0, v0, Linw;->e:Ljvq;

    iget-boolean v1, v0, Ljvq;->a:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljvq;->a:Z

    iget-object v1, v0, Ljvq;->b:Ljava/lang/Object;

    iget-object v0, v0, Ljvq;->d:Ljava/lang/Object;

    check-cast v1, Landroid/widget/VideoView;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/VideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Linu;->b:Linw;

    iget-object v0, v0, Linw;->e:Ljvq;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljvq;->a:Z

    return-void
.end method
