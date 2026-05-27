.class public final Lhyv;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhyv;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lmrl;
    .locals 1

    iget-object v0, p0, Lhyv;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Ljji;->j(Ljava/util/concurrent/atomic/AtomicReference;)Lmrl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lhyv;->a()Lmrl;

    move-result-object v0

    return-object v0
.end method
