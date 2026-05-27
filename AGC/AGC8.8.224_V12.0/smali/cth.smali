.class public final Lcth;
.super Ljava/lang/Object;

# interfaces
.implements Lkee;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Lnph;

.field final synthetic c:Lkef;

.field final synthetic d:Lctl;


# direct methods
.method public constructor <init>(Lctl;Ljava/util/concurrent/atomic/AtomicInteger;Lnph;Lkef;)V
    .locals 0

    iput-object p1, p0, Lcth;->d:Lctl;

    iput-object p2, p0, Lcth;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcth;->b:Lnph;

    iput-object p4, p0, Lcth;->c:Lkef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lkhr;)V
    .locals 1

    iget-object p1, p0, Lcth;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget-object v0, p0, Lcth;->d:Lctl;

    iget v0, v0, Lctl;->h:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcth;->b:Lnph;

    sget-object v0, Lctl;->b:Lcjv;

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcth;->c:Lkef;

    invoke-interface {p1, p0}, Lkef;->l(Lkee;)V

    :cond_0
    return-void
.end method
