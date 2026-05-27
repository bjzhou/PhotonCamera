.class public final Lhin;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhin;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Linb;
    .locals 2

    iget-object v0, p0, Lhin;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v0, Linb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linb;-><init>([B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lhin;->a()Linb;

    move-result-object v0

    return-object v0
.end method
