.class public final Lcvw;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Ljyc;

.field public b:Lcvv;

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljyc;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcvw;->c:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcvw;->a:Ljyc;

    sget-object p1, Lcvv;->a:Lcvv;

    iput-object p1, p0, Lcvw;->b:Lcvv;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Lcvw;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object v0, Lcvv;->a:Lcvv;

    iput-object v0, p0, Lcvw;->b:Lcvv;

    return-void
.end method
