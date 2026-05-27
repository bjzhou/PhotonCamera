.class public final Lfnl;
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

    iput-object p1, p0, Lfnl;->a:Loiw;

    iput-object p2, p0, Lfnl;->b:Loiw;

    iput-object p3, p0, Lfnl;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lfnk;
    .locals 4

    iget-object v0, p0, Lfnl;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkha;

    iget-object v1, p0, Lfnl;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljvs;

    iget-object v2, p0, Lfnl;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfnr;

    new-instance v3, Lfnk;

    invoke-direct {v3, v0, v1, v2}, Lfnk;-><init>(Lkha;Ljvs;Lfnr;)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfnl;->a()Lfnk;

    move-result-object v0

    return-object v0
.end method
