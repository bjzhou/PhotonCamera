.class public final Ldzc;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldzc;->a:Loiw;

    iput-object p2, p0, Ldzc;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldzb;
    .locals 3

    iget-object v0, p0, Ldzc;->a:Loiw;

    check-cast v0, Ldze;

    invoke-virtual {v0}, Ldze;->a()Ldzd;

    move-result-object v0

    iget-object v1, p0, Ldzc;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Ldzb;

    invoke-direct {v2, v0, v1}, Ldzb;-><init>(Ldzd;Ljava/util/concurrent/Executor;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldzc;->a()Ldzb;

    move-result-object v0

    return-object v0
.end method
