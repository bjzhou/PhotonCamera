.class final Lgut;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;


# instance fields
.field final synthetic a:Landroid/app/KeyguardManager$KeyguardDismissCallback;

.field final synthetic b:Lguv;

.field final synthetic c:I


# direct methods
.method public constructor <init>(Lguv;ILandroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .locals 0

    iput-object p1, p0, Lgut;->b:Lguv;

    iput p2, p0, Lgut;->c:I

    iput-object p3, p0, Lgut;->a:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissCancelled()V
    .locals 2

    iget-object v0, p0, Lgut;->b:Lguv;

    iget-object v0, v0, Lguv;->d:Lgur;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lgur;->z()V

    :cond_0
    iget-object v0, p0, Lgut;->b:Lguv;

    iget-object v0, v0, Lguv;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leoa;

    iget v1, p0, Lgut;->c:I

    invoke-virtual {v0, v1}, Leoa;->g(I)V

    iget-object v0, p0, Lgut;->a:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissCancelled()V

    return-void
.end method

.method public final onDismissError()V
    .locals 2

    iget-object v0, p0, Lgut;->b:Lguv;

    iget-object v0, v0, Lguv;->d:Lgur;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lgur;->z()V

    :cond_0
    iget-object v0, p0, Lgut;->b:Lguv;

    iget-object v0, v0, Lguv;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leoa;

    iget v1, p0, Lgut;->c:I

    invoke-virtual {v0, v1}, Leoa;->g(I)V

    iget-object v0, p0, Lgut;->a:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissError()V

    return-void
.end method

.method public final onDismissSucceeded()V
    .locals 2

    iget-object v0, p0, Lgut;->b:Lguv;

    iget-object v0, v0, Lguv;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leoa;

    iget v1, p0, Lgut;->c:I

    invoke-virtual {v0, v1}, Leoa;->g(I)V

    iget-object v0, p0, Lgut;->a:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissSucceeded()V

    return-void
.end method
