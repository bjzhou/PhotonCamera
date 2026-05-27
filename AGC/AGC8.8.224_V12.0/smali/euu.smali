.class final Leuu;
.super Lifk;


# instance fields
.field final synthetic a:Leuy;


# direct methods
.method public constructor <init>(Leuy;)V
    .locals 0

    iput-object p1, p0, Leuu;->a:Leuy;

    invoke-direct {p0}, Lifk;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShutterButtonClick()V
    .locals 4

    iget-object v0, p0, Leuu;->a:Leuy;

    iget-object v1, v0, Leuy;->p:Leuo;

    iget-boolean v1, v1, Leuo;->g:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Leuy;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Leuy;->e:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgyu;

    iget v1, v1, Lgyu;->g:I

    if-lez v1, :cond_1

    iget-object v2, v0, Leuy;->p:Leuo;

    iget-object v3, v2, Leuo;->c:Lhwc;

    iput-object v0, v3, Lhwc;->n:Lhwf;

    invoke-static {}, Ljuh;->a()V

    iget-object v0, v2, Leuo;->c:Lhwc;

    invoke-virtual {v0, v1}, Lhwc;->d(I)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lchk;->r()V

    return-void

    :cond_2
    invoke-virtual {v0}, Leuy;->w()V

    return-void
.end method
