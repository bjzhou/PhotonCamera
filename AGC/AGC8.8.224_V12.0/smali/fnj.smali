.class public final Lfnj;
.super Ljava/lang/Object;

# interfaces
.implements Lkee;


# instance fields
.field final synthetic a:Lnph;

.field final synthetic b:Lfnk;


# direct methods
.method public constructor <init>(Lfnk;Lnph;)V
    .locals 0

    iput-object p1, p0, Lfnj;->b:Lfnk;

    iput-object p2, p0, Lfnj;->a:Lnph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lkhr;)V
    .locals 2

    iget-object p1, p0, Lfnj;->b:Lfnk;

    iget-object p1, p1, Lfnk;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lfnj;->a:Lnph;

    sget-object v0, Lfnk;->a:Lcjv;

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object p1, p0, Lfnj;->b:Lfnk;

    iget-object p1, p1, Lfnk;->h:Lkef;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lkef;->l(Lkee;)V

    :cond_0
    return-void
.end method
