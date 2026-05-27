.class public final Ldnl;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldnl;->a:Loiw;

    iput-object p2, p0, Ldnl;->b:Loiw;

    iput-object p3, p0, Ldnl;->c:Loiw;

    iput-object p4, p0, Ldnl;->d:Loiw;

    iput-object p5, p0, Ldnl;->e:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldnk;
    .locals 8

    iget-object v0, p0, Ldnl;->a:Loiw;

    check-cast v0, Lelu;

    invoke-virtual {v0}, Lelu;->a()Ljava/lang/ref/WeakReference;

    move-result-object v2

    iget-object v0, p0, Ldnl;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lfbz;

    iget-object v0, p0, Ldnl;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lchs;

    iget-object v0, p0, Ldnl;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljwb;

    iget-object v0, p0, Ldnl;->e:Loiw;

    check-cast v0, Ldbs;

    invoke-virtual {v0}, Ldbs;->a()Lcvr;

    move-result-object v6

    new-instance v0, Ldnk;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ldnk;-><init>(Ljava/lang/ref/WeakReference;Lfbz;Lchs;Ljwb;Lcvr;[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldnl;->a()Ldnk;

    move-result-object v0

    return-object v0
.end method
