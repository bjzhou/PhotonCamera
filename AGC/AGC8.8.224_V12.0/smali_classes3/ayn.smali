.class public final Layn;
.super Ljava/lang/Object;

# interfaces
.implements Laxu;


# instance fields
.field public final c:Lbej;

.field private final d:Lald;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lald;

    invoke-direct {v0}, Lald;-><init>()V

    iput-object v0, p0, Layn;->d:Lald;

    invoke-static {}, Lbej;->g()Lbej;

    move-result-object v0

    iput-object v0, p0, Layn;->c:Lbej;

    sget-object v0, Laxu;->b:Laxs;

    invoke-virtual {p0, v0}, Layn;->a(Ldr;)V

    return-void
.end method


# virtual methods
.method public final a(Ldr;)V
    .locals 1

    iget-object v0, p0, Layn;->d:Lald;

    invoke-virtual {v0, p1}, Lald;->h(Ljava/lang/Object;)V

    instance-of v0, p1, Laxt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Layn;->c:Lbej;

    check-cast p1, Laxt;

    invoke-virtual {v0, p1}, Lbej;->h(Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of v0, p1, Laxr;

    if-eqz v0, :cond_1

    check-cast p1, Laxr;

    iget-object v0, p0, Layn;->c:Lbej;

    iget-object p1, p1, Laxr;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lbej;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
