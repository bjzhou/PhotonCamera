.class final Lfpt;
.super Ljava/lang/Object;

# interfaces
.implements Lfpq;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Lfpq;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lfpq;)V
    .locals 0

    iput-object p1, p0, Lfpt;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lfpt;->b:Lfpq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkpb;Lbkb;)Lfpp;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lfpt;->b:Lfpq;

    invoke-interface {v0}, Lfpq;->close()V

    return-void
.end method
