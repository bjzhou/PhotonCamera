.class final Ledp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/camera/rectiface/Rectiface$RectifaceCallback;


# instance fields
.field final synthetic a:Ledo;

.field final synthetic b:Z

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic d:Ledq;

.field private final synthetic e:I


# direct methods
.method public constructor <init>(Ledq;Ledo;ZLjava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    iput p5, p0, Ledp;->e:I

    iput-object p1, p0, Ledp;->d:Ledq;

    iput-object p2, p0, Ledp;->a:Ledo;

    iput-boolean p3, p0, Ledp;->b:Z

    iput-object p4, p0, Ledp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final saveImageCopy()V
    .locals 3

    iget v0, p0, Ledp;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ledp;->d:Ledq;

    iget-object v1, p0, Ledp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ledo;

    invoke-virtual {v0, v1}, Ledq;->g(Ledo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ledp;->d:Ledq;

    iget-object v1, p0, Ledp;->a:Ledo;

    sget-object v2, Ldyy;->n:Ldyy;

    invoke-virtual {v0, v1, v2}, Ledq;->f(Ledo;Ldyy;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ledp;->d:Ledq;

    iget-object v1, p0, Ledp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ledo;

    invoke-virtual {v0, v1}, Ledq;->g(Ledo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ledp;->d:Ledq;

    iget-object v1, p0, Ledp;->a:Ledo;

    sget-object v2, Ldyy;->n:Ldyy;

    invoke-virtual {v0, v1, v2}, Ledq;->f(Ledo;Ldyy;)V

    :cond_0
    return-void

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final update(F)V
    .locals 2

    iget v0, p0, Ledp;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ledp;->a:Ledo;

    iget-object v0, v0, Ledo;->n:Lgkr;

    iget-object v0, v0, Lgkr;->a:Ljava/lang/Object;

    sget-object v1, Ledq;->a:Lilz;

    invoke-interface {v0, v1, p1}, Lgaa;->a(Lilz;F)V

    iget-boolean p1, p0, Ledp;->b:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Ledp;->d:Ledq;

    iget-object p1, p1, Ledq;->h:Ldhi;

    sget v0, Ldha;->a:I

    invoke-interface {p1}, Ldhi;->e()V

    return-void

    :pswitch_0
    iget-object v0, p0, Ledp;->a:Ledo;

    iget-object v0, v0, Ledo;->n:Lgkr;

    iget-object v0, v0, Lgkr;->a:Ljava/lang/Object;

    sget-object v1, Ledq;->a:Lilz;

    invoke-interface {v0, v1, p1}, Lgaa;->a(Lilz;F)V

    iget-boolean p1, p0, Ledp;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Ledp;->d:Ledq;

    iget-object p1, p1, Ledq;->h:Ldhi;

    sget v0, Ldha;->a:I

    invoke-interface {p1}, Ldhi;->e()V

    :cond_0
    return-void

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
