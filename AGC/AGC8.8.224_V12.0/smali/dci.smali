.class public final Ldci;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldci;->a:Loiw;

    iput-object p2, p0, Ldci;->b:Loiw;

    iput-object p3, p0, Ldci;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lkct;
    .locals 3

    iget-object v0, p0, Ldci;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldch;

    iget-object v1, p0, Ldci;->b:Loiw;

    check-cast v1, Lfaf;

    invoke-virtual {v1}, Lfaf;->a()Lezy;

    move-result-object v1

    iget-object v2, p0, Ldci;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljuh;

    invoke-static {v2, v1, v0}, Lfcr;->d(Ljuh;Lezy;Lfaz;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldci;->a()Lkct;

    move-result-object v0

    return-object v0
.end method
